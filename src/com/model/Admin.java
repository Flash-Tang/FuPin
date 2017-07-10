package com.model;

public class Admin {
	public int adminid;
	public String adminname;
	public String adminpwd;
	public String adminmail;
	public Admin(){
		
	}
	public Admin(int adminid, String adminname, String adminpwd, String adminmail) {
		super();
		this.adminid = adminid;
		this.adminname = adminname;
		this.adminpwd = adminpwd;
		this.adminmail = adminmail;
	}
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpwd() {
		return adminpwd;
	}
	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}
	public String getAdminmail() {
		return adminmail;
	}
	public void setAdminmail(String adminmail) {
		this.adminmail = adminmail;
	}
	
	
}
