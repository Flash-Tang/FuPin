package com.model;

public class Message {
	public int adminid;
	public int massageid;
	public String text;
	public Message(){
		
	}
	public Message(int adminid, int massageid, String text) {
		super();
		this.adminid = adminid;
		this.massageid = massageid;
		this.text = text;
	}
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public int getMassageid() {
		return massageid;
	}
	public void setMassageid(int massageid) {
		this.massageid = massageid;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	
}
