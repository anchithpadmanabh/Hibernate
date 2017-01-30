package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.Model.Product;

@Controller
public class PageController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/")
	public ModelAndView getPage( @ModelAttribute("selectedProduct") final Product selectedProduct) {
	
		ModelAndView model=new ModelAndView("/index");
		
		model.addObject("categoryList", categoryDAO.list());
		model.addObject("productList", productDAO.list());
				
		System.out.println("inside / mapping");

		if(selectedProduct!=null){
			model.addObject("selectedProduct",selectedProduct);
		}
		else
			System.out.println("The object is null");
		return model;
		
	}

	/*@RequestMapping("/")
	public String getIndexPage(){
		System.out.println("inside controller");
		return "index";
	}
	
	*/
	
	@RequestMapping("/index")
	public String getHomePage()
	{
		return "index";
	}
		
	/*@RequestMapping("/account")
	public String getAccountPage()
	{
		return "account";
	}
	*/
	@RequestMapping("/contact")
	public String getContacttPage()
	{
		return "contact";
	}
	
	@RequestMapping("/checkout")
	public String getCheckoutPage()
	{
		return "checkout";
	}
	
	/*@RequestMapping("/product")
	public String getProductPage()
	{
		return "product";
	}*/
	
	/*@RequestMapping("/single")
	public String getSinglePage()
	{
		return "single";
	}*/
	
}