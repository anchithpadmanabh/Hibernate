package com.niit.DAO;

import java.util.List;

import com.niit.Model.UserDetails;

public interface UserDetailsDAO {
	
	public void addUser (UserDetails userDetails);

	public UserDetails getUserById (int userId);

	public List<UserDetails> getAllUsers();

	UserDetails getUserByUsername (String username);
	  
	public boolean isValidUser(String name);
}