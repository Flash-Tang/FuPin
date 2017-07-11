package com.model;

public class Measure {
	public String measureName;
	public int cost;
	public int measureId;
	public int number;
	public Measure(){
		
	}
	public Measure(String measureName, int cost, int measureId, int number) {
		super();
		this.measureName = measureName;
		this.cost = cost;
		this.measureId = measureId;
		this.number = number;
	}
	public String getMeasureName() {
		return measureName;
	}
	public void setMeasureName(String measureName) {
		this.measureName = measureName;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getMeasureId() {
		return measureId;
	}
	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	
}
