package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.UserDetailsDAO;
import com.niit.Model.UserDetails;

import java.util.List;

import javax.validation.Valid;

 
@Controller
public class UserRegistrationController {

	@Autowired
	private UserDetailsDAO userDetailsDAO;

	@RequestMapping("/register")
	public String registerUser(Model model) {

		UserDetails userDetails = new UserDetails();
		model.addAttribute("userDetails", userDetails);
		return "register";
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUserPost(@Valid @ModelAttribute("userDetails") UserDetails userDetails,
			BindingResult result) {
		
		if (result.hasErrors()) {					
			ModelAndView model=new ModelAndView("register");
			model.addObject("message", "You have entered invalid details");
			
			System.out.println("Page has errors");
			return model;
		}
		
		List<UserDetails> userDetailsList = userDetailsDAO.getAllUsers();

        for (int i=0; i< userDetailsList.size(); i++) {
        	ModelAndView model=new ModelAndView("register");
        	if(userDetails.getUserEmail().equals(userDetailsList.get(i).getUserEmail())) {
                model.addObject("emailError", "Email already exists");
                return model;
            }

            if(userDetails.getUsername().equals(userDetailsList.get(i).getUsername())) {
                model.addObject("usernameError", "Username already exists");
                return model;
            }
            if(userDetails.getUserPhone().equals(userDetailsList.get(i).getUserPhone())) {
                model.addObject("userPhoneError", "User phone already exists");
                return model;
            }
        }
		//userDetails.setEnabled(true);
		userDetailsDAO.addUser(userDetails);
		ModelAndView model=new ModelAndView("registrationSuccess");
		return model;
	}
}