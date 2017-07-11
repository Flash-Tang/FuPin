package com.model;

public class Feedback {
	public int feedBackid;
	public int userid;
	public String words;
	public Feedback(){
		
	}
	public Feedback(int feedBackid, int userid, String words) {
		super();
		this.feedBackid = feedBackid;
		this.userid = userid;
		this.words = words;
	}
	public int getFeedBackid() {
		return feedBackid;
	}
	public void setFeedBackid(int feedBackid) {
		this.feedBackid = feedBackid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getWords() {
		return words;
	}
	public void setWords(String words) {
		this.words = words;
	}
}
