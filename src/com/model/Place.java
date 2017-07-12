package com.model;

public class Place {

	public String placeOfDemicile;
	public String poorNum;
	public String avgIncome;
	public Place(){
		
	}
	public Place(String placeOfDemicile,String poorNum, String avgIncome) {
		super();
		this.placeOfDemicile = placeOfDemicile;
		this.poorNum = poorNum;
		this.avgIncome = avgIncome;
	}
	
	public String getPlaceOfDemicile() {
		return placeOfDemicile;
	}
	public void setPlaceOfDemicile(String placeOfDemicile) {
		this.placeOfDemicile = placeOfDemicile;
	}
	public String getPoorNum() {
		return poorNum;
	}
	public void setPoorNum(String poorNum) {
		this.poorNum = poorNum;
	}
	public String getAvgIncome() {
		return avgIncome;
	}
	public void setAvgIncome(String avgIncome) {
		this.avgIncome = avgIncome;
	}
}
