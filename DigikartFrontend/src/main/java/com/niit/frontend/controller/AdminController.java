package com.niit.frontend.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.digikart.dao.CategoryDao;
import com.niit.digikart.dao.ProductDao;
import com.niit.digikart.dao.SupplierDao;
import com.niit.digikart.model.Category;
import com.niit.digikart.model.Product;
import com.niit.digikart.model.Supplier;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	CategoryDao categoryDAO;

	@Autowired
	SupplierDao supplierDao;

	@Autowired
	ProductDao productDao;

	@RequestMapping(value = { "/category" }, method = RequestMethod.GET)
	public String category(Model m) {
		// m.addAttribute("cat", new Category());
		// m.addAttribute("supplier", new Supplier());
		// m.addAttribute("p",new Product());
		return "admin";

	}

	@ModelAttribute
	public void passObject(Model m) {

		m.addAttribute("cat", new Category());
		m.addAttribute("supplier", new Supplier());
		m.addAttribute("categorylist", categoryDAO.Categorylist());
		m.addAttribute("supplierlist", supplierDao.retrieve());
	}

	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("cat") Category cat) {
		ModelAndView mav = new ModelAndView();

		categoryDAO.save(cat);
		mav.addObject("msg", "Successfully Registered");
		mav.setViewName("model");

		return mav;
	}

	@RequestMapping("/categorylist")
	public ModelAndView catlist() {
		ModelAndView mav = new ModelAndView("categorylist");
		mav.addObject("categorylist", categoryDAO.Categorylist());
		return mav;
	}

	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public String supplier(Model m) {
		// m.addAttribute("cat",new Category());
		// m.addAttribute("supplier",new Supplier());
		// m.addAttribute("p",new Product());
		return "admin";
	}

	@RequestMapping(value = "/supplier", method = RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("supplier") Supplier supplier) {
		ModelAndView mav = new ModelAndView();
		supplierDao.insertSupplier(supplier);
		mav.addObject("msg", "Successfully Registered");
		mav.setViewName("redirect:/admin/supplierlist");
		return mav;
	}

	@RequestMapping("/supplierlist")
	public ModelAndView supplielist() {
		ModelAndView mav = new ModelAndView("supplierlist");
		mav.addObject("supplierlist", supplierDao.retrieve());
		return mav;

	}

	@RequestMapping("/product")
	public String product(Model m) {
		// m.addAttribute("cat",new Category());
		// m.addAttribute("supplier",new Supplier());
		// m.addAttribute("product",new Product());

		return "admin";
	}

	@RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
	public String saveProduct(HttpServletRequest request, @RequestParam("file") MultipartFile file) {

		ModelAndView mav = new ModelAndView();
		Product product = new Product();
		product.setPname(request.getParameter("pname"));
		product.setCategory(categoryDAO.getcategory(Integer.parseInt(request.getParameter("pCategory"))));
		product.setSupplier(supplierDao.findbyId(Integer.parseInt(request.getParameter("pSupplier"))));
		product.setPdesc(request.getParameter("pdesc"));
		product.setPcost(Integer.parseInt(request.getParameter("pcost")));
		product.setStock(Integer.parseInt(request.getParameter("pstock")));

		String filepath = request.getSession().getServletContext().getRealPath("/");
		String filname = file.getOriginalFilename();
		product.setImgName(filname);
		productDao.insertProduct(product);
		System.out.println("File Path name" + filepath + " " + filname);
		try {
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(
					new FileOutputStream(filepath + "/resources/images/" + filname));
			fos.write(imagebyte);
			fos.close();

		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "model2";
	}

	@RequestMapping("/productlist")
	public ModelAndView productlist() {
		ModelAndView mav = new ModelAndView("productlist");
		mav.addObject("productlist", productDao.retrieve());
		return mav;

	}

	@RequestMapping("/deleteproduct/{pid}")
	public String delete(@PathVariable("pid") int pid) {
		// contactDAO.delete(contactId);
		productDao.deleteProduct(pid);
		return "redirect:/admin/productlist?del";
	}

	@RequestMapping("/deleteCategory/{cid}")
	public String deleteC(@PathVariable("cid") int cid) {
		// contactDAO.delete(contactId);
		categoryDAO.delete(cid);
		return "redirect:/admin/categorylist?del";
	}

	@RequestMapping("/updateProduct")
	public ModelAndView editView(@RequestParam("id") int pid) {
		ModelAndView mav = new ModelAndView();
		Product p = productDao.findbyId(pid);
		mav.addObject("product", p);
		mav.setViewName("updateProduct");
		return mav;
	}

	@RequestMapping(value = "/productUpdate", method = RequestMethod.POST)
	public ModelAndView updateProduct(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		System.out.println("called");
		ModelAndView mav = new ModelAndView();
		String pid = request.getParameter("pid");
		String pname = request.getParameter("pname");
		String ct = request.getParameter("pCategory");
		String sp = request.getParameter("pSupplier");
		String p = request.getParameter("pcost");
		String d = request.getParameter("pdesc");
		String q = request.getParameter("pstock");
		Product pp = new Product();
		pp.setPid(Integer.parseInt(pid));
		pp.setPname(pname);
		pp.setCategory(categoryDAO.getcategory(Integer.parseInt(ct)));
		pp.setSupplier(supplierDao.findbyId(Integer.parseInt(sp)));
		pp.setPcost(Integer.parseInt(p));
		pp.setPdesc(d);
		pp.setStock(Integer.parseInt(q));

		String filepath = request.getSession().getServletContext().getRealPath("/");
		String filname = file.getOriginalFilename();
		pp.setImgName(filname);
		productDao.update(pp);
		System.out.println("File path File" + filepath + " " + filname);

		try {

			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(
					new FileOutputStream(filepath + "/resources/images/" + filname));
			fos.write(imagebyte);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("redirect:/admin/productlist?update");
		return mav;
	}
}
