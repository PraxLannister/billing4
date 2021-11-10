package com.gera.billing.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gera.billing.service.MultiplyService;

@Controller
public class MultiplyController 
{
//	@RequestMapping("/multiply")
//	public void multiply()
//	{
//		System.out.println("Happy Multiplication");
//	}
	
	@RequestMapping("/multiply")
	public ModelAndView multiply(@RequestParam("var1") int i,@RequestParam("var2") int j,
			HttpServletRequest request, HttpServletResponse response)
	
	{
//		int i=Integer.parseInt(request.getParameter("var1"));
//		int j=Integer.parseInt(request.getParameter("var2"));
		
		
		//Keep Controllers Away from Business Logics
		MultiplyService ser=new MultiplyService();
		int res=ser.multi(i, j);
		System.out.println(i+" "+j);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("multiply");
		mv.addObject("result", res);
		return mv;
	}
	
}
