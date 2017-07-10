package com.model;

public class Message {
	public int adminId;
	public int massageId;
	public String Text;
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public int getMassageId() {
		return massageId;
	}
	public void setMassageId(int massageId) {
		this.massageId = massageId;
	}
	public String getText() {
		return Text;
	}
	public void setText(String text) {
		Text = text;
	}
	public Message(){
		
	}
	public Message(int adminId, int massageId, String text) {
		super();
		this.adminId = adminId;
		this.massageId = massageId;
		Text = text;
	}
	
	
}
