package com.gera.billing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gera.billing.model.Product;
import com.gera.billing.service.AdminService;
import com.gera.billing.service.ProductService;




@Controller
public class AdminController 
{
	
	@RequestMapping("/adminlogin")
	public ModelAndView adminLogin(@RequestParam("adminName") String adminid,@RequestParam("adminPass") String adminpass,HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv = new ModelAndView();
		AdminService as=new AdminService();
		boolean validAdmin=as.isAdmninValid("admin", "pass", adminid, adminpass);
		if(validAdmin)
		{
			HttpSession httpsession=request.getSession();
			httpsession.setAttribute("adminName", adminid);
			httpsession.setAttribute("adminPass", adminpass);
			httpsession.setAttribute("Admin", "admin");
			
			ProductService ps=new ProductService();
			List<Product> product=ps.getProductList();
			mv.setViewName("adminpage");
			mv.addObject("productList", product);
			
		}
		else
		{
			mv.setViewName("adminpanel");
			mv.addObject("message","Invalid Credentials");
		}
		return mv;
	}
	
	@RequestMapping({"/adminlogout","adminedit/updateproduct/adminlogout","/admindelete/adminlogout","adminedit/addproduct/adminlogout"})
	public ModelAndView adminLogout(HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession httpsession=request.getSession();
		httpsession.removeAttribute("Admin");
		httpsession.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogout");
		mv.addObject("message","Succesfully Logged Out from Admin Panel");
		return mv;
	}

	@RequestMapping("showdetails")
	public ModelAndView showDetails(@RequestParam("name") String name,@RequestParam("zip") String zip, @RequestParam("mail") String mail)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("showdetails");
		mv.addObject("name",name);
		mv.addObject("mail",mail);
		mv.addObject("zip",zip);
		return mv;
	}
	
	
	
}
