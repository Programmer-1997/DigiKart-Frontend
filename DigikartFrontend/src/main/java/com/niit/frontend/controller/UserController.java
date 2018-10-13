package com.niit.frontend.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.digikart.dao.CategoryDao;
import com.niit.digikart.dao.ProductDao;
import com.niit.digikart.dao.UserDao;
import com.niit.digikart.model.Product;
import com.niit.digikart.model.User;

@Controller
public class UserController {

	@Autowired
	UserDao userdao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	ProductDao productDao;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister() {

		ModelAndView mav = new ModelAndView();
		mav.addObject("cmd", new User());
		mav.setViewName("register");
		return mav;
	}

	@RequestMapping(value = "/saveRegister", method = RequestMethod.POST)
	public ModelAndView doRegister(@Valid @ModelAttribute("cmd") User user, BindingResult result) {
		ModelAndView mav = new ModelAndView();

		if (result.hasErrors())

		{
			mav.setViewName("register");

			return mav;
		} else {
			user.setRole("ROLE_USER");
			user.setEnabled(true);
			userdao.save(user);
			mav.setViewName("redirect:/login");
			return mav;
		}

	}

	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("categorylist", categoryDao.Categorylist());
	}

	@RequestMapping({ "/", "/index" })
	public String sayIndex() {
		return "Index";
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;

	}

	@RequestMapping("/error")
	public String errorPage() {
		return "error";

	}

	@RequestMapping("/userLogged")
	public String userLogged() {
		return "redirect:/";

	}

	@RequestMapping(value = "/productCustList/{categoryid}")
	public ModelAndView displayCustProducts(@PathVariable int categoryid) {
		System.out.println("pcl---" + categoryid);
		ModelAndView mv = new ModelAndView();
		List<Product> pp = productDao.getProductsByCategory(categoryid);
		System.out.println(pp);
		System.out.println("----------------" + pp.size());
		mv.addObject("custProducts", pp);
		mv.setViewName("ProductCustomerList");
		return mv;
	}

	@RequestMapping(value = "/productDescription/{pid}")
	public ModelAndView productDescription(@PathVariable int pid) {
		ModelAndView mav = new ModelAndView();
		Product product = productDao.findbyId(pid);
		mav.addObject("product", product);
		mav.setViewName("details");
		return mav;
	}

	@RequestMapping("/allProductList")
	public ModelAndView allProductsList() {
		ModelAndView modelandview = new ModelAndView();
		modelandview.addObject("productlist", productDao.retrieve());
		modelandview.setViewName("allProductList");
		return modelandview;
	}
}
