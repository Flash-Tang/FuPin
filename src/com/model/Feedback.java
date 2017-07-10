package com.model;

public class Feedback {
	public int userId;
	public String words;
	
	public Feedback(){
		
	}
	public Feedback(int userId, String words) {
		super();
		this.userId = userId;
		this.words = words;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getWords() {
		return words;
	}
	public void setWords(String words) {
		this.words = words;
	}
	
	
}
