package com.model;

public class Result {
	public int userid;
	public String result;
	public Result(){
		
	}
	public Result(int userid, String result) {
		super();
		this.userid = userid;
		this.result = result;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	
}
