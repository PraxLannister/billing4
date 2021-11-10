package com.gera.billing.controller;

import java.util.ArrayList;
import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gera.billing.model.Cart;
import com.gera.billing.model.Customer;
import com.gera.billing.model.Product;
import com.gera.billing.service.CartService;
import com.gera.billing.service.CustomerService;
import com.gera.billing.service.ProductService;

@Controller
public class CartController 
{
	@RequestMapping("addtocart/{argument}")
	public ModelAndView addTocart(HttpServletRequest request, HttpServletResponse response,@PathVariable("argument") int pid)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session= request.getSession();
		int cusid=(Integer) session.getAttribute("userid");
		CartService cs=new CartService();
		cs.addToCart(pid, cusid);
		
		ProductService ps=new ProductService();
		List<Product> product=ps.getProductList();
		
		CustomerService cus=new CustomerService();
		Customer customer=cus.getCustomer(cusid);
		
		mv.setViewName("userpage");
		mv.addObject("customerObject", customer);
		mv.addObject("productList",product);
		mv.addObject("message","Product Added Succefully");
		
		return mv;
	}
	
	@RequestMapping({"addtocart/viewcart","/viewcart","deletecart/viewcart"})
	public ModelAndView viewCart(HttpServletRequest request, HttpServletResponse response)
	{
		CartService cs = new CartService();
		ModelAndView mv=new ModelAndView();
		HttpSession session= request.getSession();
		int cid=(Integer) session.getAttribute("userid");
		List<Cart> cart=cs.getCartList(cid);
		int bill=0;
		for(Cart ca: cart) {
			bill+=ca.getPrice();
		}
		mv.setViewName("viewcart");
		mv.addObject("cartList",cart);
		mv.addObject("bill",bill);
		return mv;
	}
	
	@RequestMapping({"checkout","addtocart/viewcart/checkout","/viewcart/checkout","deletecart/viewcart/checkout","addtocart/checkout"})
	public ModelAndView checkOut(HttpServletRequest request, HttpServletResponse response)
	{
		CartService cs = new CartService();
		ModelAndView mv=new ModelAndView();
		CustomerService cus =new CustomerService();
		HttpSession session= request.getSession();
		int cid=(Integer) session.getAttribute("userid");
		Customer customer=cus.getCustomer(cid);
		List<Cart> cart=cs.getCartList(cid);
		int bill=0;
		for(Cart ca: cart) {
			bill+=ca.getPrice();
		}
		cs.checkoutCart(cid);
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		Date date = new Date();  
		String str=formatter.format(date);
		String odate=str.substring(0,10);
		String otime=str.substring(11,str.length());
		String order=String.valueOf(cid)+otime.substring(0,2)+otime.substring(3,5);
		mv.setViewName("checkout");
		mv.addObject("cartList",cart);
		mv.addObject("customerObj",customer);
		mv.addObject("orderno",order);
		mv.addObject("date", odate);
		mv.addObject("time",otime);
		mv.addObject("bill",bill);
		return mv;
	}
	
	@RequestMapping("/deletecart/{argument}")
	public ModelAndView deleteCart(HttpServletRequest request, HttpServletResponse response,@PathVariable("argument") int cartid)
	{
		CartService cs=new CartService();
		cs.deleteFromCart(cartid);
		
		HttpSession session= request.getSession();
		int cid=(Integer) session.getAttribute("userid");
		List<Cart> cart=cs.getCartList(cid);
		int bill=0;
		for(Cart ca: cart) 
		{
			bill+=ca.getPrice();
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewcart");
		mv.addObject("cartList",cart);
		mv.addObject("bill",bill);
		mv.addObject("message","Product Removed from Cart");
		return mv;
	}
	
	
}
