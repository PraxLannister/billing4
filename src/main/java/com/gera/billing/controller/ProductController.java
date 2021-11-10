package com.gera.billing.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gera.billing.model.Product;
import com.gera.billing.service.AdminService;
import com.gera.billing.service.ProductService;

@Controller
public class ProductController 
{
	@RequestMapping(value="adminedit/updateproduct/{argument}" ,method = RequestMethod.POST)
	public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response,@PathVariable("argument") int id,
			@RequestParam("quant") int quant,@RequestParam("name") String name,@RequestParam("price") int price,
			@RequestParam("image") String image)
	{
//		System.out.println(id);
//		System.out.println("updating Product");
//		return "adminpage";
		ModelAndView mv = new ModelAndView();
		ProductService ps=new ProductService();
//		Product product;
//		product=
		ps.updateProduct(id, name, quant, price, image);
		List<Product> product=ps.getProductList();
		mv.setViewName("adminpage");
		mv.addObject("message","Product Updated Succesfully");
		mv.addObject("productList", product);
		return mv;
	}
	
	@RequestMapping(value="/adminedit/{argument}",method = RequestMethod.GET)
	public ModelAndView adminEdit(HttpServletRequest request, HttpServletResponse response,@PathVariable("argument") int id)
	{
//		System.out.println(id);
		ModelAndView mv=new ModelAndView();
		ProductService ps=new ProductService();
		Product product=ps.getProduct(id);
		mv.setViewName("adminedit");
		mv.addObject("productObject", product);
		return mv;
	}
	
	@RequestMapping(value="/admindelete/{argument}",method = RequestMethod.GET)
	public ModelAndView adminDelete(HttpServletRequest request, HttpServletResponse response,@PathVariable("argument") int id)
	{
//		System.out.println(id);
		ModelAndView mv=new ModelAndView();
		ProductService ps=new ProductService();
		ps.deleteProduct(id);
		List<Product> product=ps.getProductList();
		mv.setViewName("adminpage");
		mv.addObject("message","Product Deleted Succesfully");
		mv.addObject("productList", product);
		return mv;
	}
	
	@RequestMapping("/adminadd")
	public ModelAndView adminAdd(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminadd");
		return mv;
	}
	private static final String path ="C:\\Users\\harsh\\eclipse-workspace\\Projects\\billing4\\src\\main\\webapp\\resources\\product\\";
	@RequestMapping(value="/addProduct",method = RequestMethod.POST)
	public ModelAndView addProduct(HttpServletRequest request, HttpServletResponse response,@RequestParam("name") String name,@RequestParam("price") int price,
			@RequestParam("quant") int quant,@RequestParam CommonsMultipartFile file) throws Exception
	{
		
		
		String ext = file.getContentType();
		String fname=name;
		int slash=ext.indexOf("/");
		String extension=ext.substring(slash+1);
		String filename=fname+"."+extension;
	    byte[] bytes = file.getBytes();  
	    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
	    stream.write(bytes);  
	    stream.flush();  
	    stream.close(); 
	    
	    ModelAndView mv=new ModelAndView();
	    ProductService ps=new ProductService();
		ps.addProduct(name, quant, price, filename);
		List<Product> product=ps.getProductList();
		mv.setViewName("adminpage");
		mv.addObject("message","Product Added Succesfully");
		mv.addObject("productList", product);
		return mv;
	    
	}

	
}
