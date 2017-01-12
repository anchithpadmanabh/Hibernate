/*package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AccountController {
	
	@RequestMapping("/loginPage")
	public String loadLoginPage() {
		return "account";
	}

	@RequestMapping("/login")
	public String account(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {

		System.out.println("Inside login mapping");
		System.out.println(logout+"    "+error);
		
		if (error != null) {
			model.addAttribute("error", "Invalid username and password");
			return "account"; // return to login page
		}
		
		//After successful logout
		return "redirect:/";
	}
}*/