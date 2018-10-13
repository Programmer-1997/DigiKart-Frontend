package com.niit.frontend.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.digikart.dao.CartDao;
import com.niit.digikart.dao.CategoryDao;
import com.niit.digikart.dao.OrderDao;
import com.niit.digikart.dao.ProductDao;
import com.niit.digikart.dao.UserDao;
import com.niit.digikart.model.Cart;
import com.niit.digikart.model.Orders;
import com.niit.digikart.model.User;

@Controller
public class CartController {

	int a;
	@Autowired
	ProductDao productDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	OrderDao orderDao;
	
	@RequestMapping(value="/addToCart",method=RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest request) {
		ModelAndView mav= new ModelAndView();
		try
		{
			Principal principal = request.getUserPrincipal();
			String userEmail = principal.getName();
			int pid = Integer.parseInt(request.getParameter("pid"));
			a=pid;
			Double price = Double.parseDouble(request.getParameter("pcost"));
			int quantity = Integer.parseInt(request.getParameter("quant"));
			String productName = request.getParameter("pname");
			String imgName=request.getParameter("imgName");
			Cart cartExist=cartDao.getCartById(pid, userEmail);
			if(cartExist==null) {
				Cart c= new Cart();
				c.setCartPrice(price);
				c.setCartQuantity(quantity);
				c.setCartProductId(pid);
				c.setCartProductName(productName);
				c.setCartImage(imgName);
				//User u = userDao.findbyUserId(userEmail);
				c.setEmailId(userEmail);
				cartDao.insert(c);
			}
			else
			{
				Cart c = new Cart();
				c.setCartPrice(price);
				c.setCartProductId(pid);
				c.setCartImage(imgName);
				c.setCartProductName(productName);
				c.setCartid(cartExist.getCartid());
				c.setCartQuantity(cartExist.getCartQuantity()+quantity);
				//User u=userDao.findbyUserId(userEmail);
				c.setEmailId(userEmail);
				
				cartDao.update(c);
			}
			mav.addObject("cartInfo",cartDao.FindCartbyId(userEmail));
			mav.setViewName("cart");
			return mav;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			mav.setViewName("loginModal");
			return mav;
		}
	}
	
	@RequestMapping("/checkout")
	public ModelAndView checkout(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("checkout");
		Principal principal = request.getUserPrincipal();
		String userEmail = principal.getName();
		User u =userDao.findbyUserId(userEmail);
		List<Cart> cart = cartDao.FindCartbyId(userEmail);
		
		mav.addObject("user",u);
		mav.addObject("cart",cart);
		
		return mav;
	}
   
	@RequestMapping(value="/invoiceprocess",method = RequestMethod.POST)
	public ModelAndView orderSave(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("invoice");
		Orders oo = new Orders();
		Double d= Double.parseDouble(request.getParameter("total"));
		String payment=request.getParameter("payment");
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User user = userDao.findbyUserId(email);
		oo.setUser(user);
		oo.setTotal(d);
		oo.setPayment(payment);
		orderDao.addOrder(oo);
		mav.addObject("userDetails",user);
		return mav;
	}
	
	@RequestMapping(value="/ackAction")
	public ModelAndView invoiceaction(HttpServletRequest request) {
		return new ModelAndView("acknowledgement");
	}
	
	@RequestMapping(value="/deletePCart/{cartId}")
	public ModelAndView deleteProductFromCart(@PathVariable("cartId") int cartId,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		Principal principal =  request.getUserPrincipal();
		String userEmail = principal.getName();
		cartDao.delete(cartId);
		mav.addObject("cartInfo", cartDao.FindCartbyId(userEmail));
		mav.setViewName("cart");
		return mav;
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("categorylist",categoryDao.Categorylist());
		
	}
	
	@RequestMapping("checkout1")
	public String checkout() {
		return "acknowledgement";
	}
}	