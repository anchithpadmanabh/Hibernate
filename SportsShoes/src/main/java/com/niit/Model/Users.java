package com.niit.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Users {
	
	 @Id
	 @GeneratedValue
	 private int usersId;
	 private String username;
	 private String password;
	 private boolean enabled;
	
	 public int getUsersId() {
		return usersId;
	 }
	 public void setUsersId(int usersId) {
		 this.usersId = usersId;
	 }
	 public String getUsername() {
		 return username;
	 }
	 public void setUsername(String username) {
		 this.username = username;
	 }
	 public String getPassword() {
		 return password;
	 }
	 public void setPassword(String password) {
		 this.password = password;
	 }
	 public boolean isEnabled() {
		 return enabled;
	 }
	 public void setEnabled(boolean enabled) {
		 this.enabled = enabled;
	 }	 
}