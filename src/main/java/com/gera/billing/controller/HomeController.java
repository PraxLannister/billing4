package com.gera.billing.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;





@Controller
public class HomeController 
{
	@RequestMapping({"/","home"})
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("hello","Hello World from MVC");
		return mv;
	}
	
	@RequestMapping("/loginpage")
	public String loginPage(HttpServletRequest request, HttpServletResponse response)
	{
		return "loginpage";
	}
	
//	@RequestMapping(value = "/temp")
//		public ModelAndView temp(HttpServletRequest request, HttpServletResponse response)
//		{
//			ModelAndView mv = new ModelAndView();
//			mv.setViewName("temp");
//			return mv;
//		}
	
	@RequestMapping("/register")
	public ModelAndView registerPage(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv = new ModelAndView();
		 mv.setViewName("register");
		 return mv;
	}
	
//	 private static final String path ="C:\\Users\\harsh\\eclipse-workspace\\Projects\\billing3\\src\\main\\webapp\\resources\\product";  
//     
//	    @RequestMapping("uploadform")  
//	    public ModelAndView uploadForm(){  
//	        return new ModelAndView("uploadform");    
//	    }  
//	      
//	    @RequestMapping(value="savefile",method=RequestMethod.POST)  
//	    public ModelAndView saveimage( @RequestParam CommonsMultipartFile file,  
//	           HttpSession session) throws Exception{  
//	  
////	    ServletContext context = session.getServletContext();  
////	    String path = context.getContextPath()+UPLOAD_DIRECTORY;  
//	    	String ext = file.getContentType();
//			String fname="harshul";
//			int slash=ext.indexOf("/");
//			String extension=ext.substring(slash+1);
//			String filename=fname+"."+extension;
//		    System.out.println(filename);       
//	  
//	    byte[] bytes = file.getBytes();  
//	    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
//	    stream.write(bytes);  
//	    stream.flush();  
//	    stream.close();  
//	           
//	    return new ModelAndView("uploadform","filesuccess","File successfully saved!");  
//	    }  

	
	    @RequestMapping("/adminpanel")
		public ModelAndView adminPanel(HttpServletRequest request, HttpServletResponse response)
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("adminpanel");
			mv.addObject("message","Log In into Admin Panel");
			return mv;
		}
			
}
