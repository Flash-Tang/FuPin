package com.model;

import com.service.IUserService;
import com.serviceImpl.UserServiceImpl;

public class User {
	public int userid;
	public String username;
	public String userpwd;

	public int getUserid() {
		return userid;
	}
	public int getIdByName(){
		IUserService iUserService = new UserServiceImpl();
		userid = iUserService.getIdByName(username);
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public User(){
		
	}
	public User(int userid, String username, String userpwd) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
	}

}
