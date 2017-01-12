package com.niit.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class UserDetails {

	@Id
    @GeneratedValue
    private int userId;

	@NotEmpty (message = "User firstname cannot be empty.")
    private String userFirstName;
	
	@NotEmpty (message = "User Lastname cannot be empty.")
    private String userLastName;
	
	@NotEmpty (message = "User Name cannot be empty.")
	private String username;
	
	@NotEmpty (message = "Email cannot be empty.")
	@Column(unique = true)
    private String userEmail;
	
	
	@NotEmpty (message = "Phone cannot be empty.")
	@Column(unique = true)
	private String userPhone;	
	
	@NotEmpty (message = "Password cannot be empty.")
    private String password;

    //private boolean enabled;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getUserFirstName() {
		return userFirstName;
	}

	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}

	public String getUserLastName() {
		return userLastName;
	}

	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/*
	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
    
    */

}
