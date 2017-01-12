package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping("/")
	public String getIndexPage(){
		return "index";
	}
	
	@RequestMapping("/index")
	public String getIndexPage1()
	{
		return "index";
	}
		
	@RequestMapping("/account")
	public String getAccountPage()
	{
		return "account";
	}
	
	@RequestMapping("/contact")
	public String getContacttPage()
	{
		return "contact";
	}
	
	@RequestMapping("/product")
	public String getProductPage()
	{
		return "product";
	}
	
	@RequestMapping("/single")
	public String getSinglePage()
	{
		return "single";
	}
	
}
