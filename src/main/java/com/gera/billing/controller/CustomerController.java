package com.gera.billing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gera.billing.model.Customer;
import com.gera.billing.model.Product;
import com.gera.billing.service.CartService;
import com.gera.billing.service.CustomerService;
import com.gera.billing.service.LoginService;
import com.gera.billing.service.ProductService;

@Controller
public class CustomerController 
{
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("number") String number,@RequestParam("password") String userpass,HttpServletRequest request, HttpServletResponse response)
	{
//		System.out.println(number+" "+userpass);
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("from Customer where number="+number);
		
		Customer customer;
		try {
			customer=(Customer)q.uniqueResult();
		}
		catch(Exception e)
		{
			session.getTransaction().commit();
			session.close();
			ModelAndView mv = new ModelAndView();
			mv.setViewName("index");
			mv.addObject("hello","Wrong Id");
			return mv;
		}
		
		session.getTransaction().commit();
		session.close();
		
		ModelAndView mv = new ModelAndView();
		
		LoginService ls=new LoginService();
		boolean validated=ls.validate(number, userpass, customer.getNumber(), customer.getPass());
		
		if(validated)
		{
			ProductService ps=new ProductService();
			List<Product> product=ps.getProductList();
			HttpSession httpsession=request.getSession();  
			httpsession.setAttribute("userid",customer.getId()); 
			mv.setViewName("userpage");
			mv.addObject("customerObject", customer);
			mv.addObject("productList",product);
		}
		else
		{
			mv.setViewName("index");
			mv.addObject("hello","Wrong Password");
		}
		return mv;
	}
	
	@RequestMapping({"/logout","/addtocart/logout"})
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response)
	{
		 HttpSession httpsession=request.getSession();  
         httpsession.invalidate();
         ModelAndView mv = new ModelAndView();
 		 mv.setViewName("index");
 		 mv.addObject("hello","You have been succesfully logged out.");
 		 return mv;
	}
	
	@RequestMapping("registeruser")
	public ModelAndView registerUser(@RequestParam("fname") String fname,@RequestParam("lname") String lname, 
			@RequestParam("number") String number, @RequestParam("mailid") String mailid, @RequestParam("pass") String pass, 
			HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		CustomerService cs=new CustomerService();
		cs.saveCustomer(fname, lname, number, mailid, pass);
		mv.setViewName("loginpage");
		mv.addObject("hello","User Registered");
		
		return mv;
	}
	
	@RequestMapping({"/userpage","addtocart/userpage","deletecart/userpage"})
	public ModelAndView userHome(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session= request.getSession();
		int cusid=(Integer) session.getAttribute("userid");
		
		ProductService ps=new ProductService();
		List<Product> product=ps.getProductList();
		
		CustomerService cus=new CustomerService();
		Customer customer=cus.getCustomer(cusid);
		mv.setViewName("userpage");
		mv.addObject("customerObject", customer);
		mv.addObject("productList",product);
		
		return mv;
	}

}
