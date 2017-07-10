package com.model;

public class Apply {
	 public int userId;
	 public String name;
	 public String sex;
	 public String nation;
	 public String telephone;
	 public String idCardNum;
	 public String disabCardNum;
	 public String disability;
	 public String placeOfDemicile;
	 public int income;
	 public String education;
	 public int famMemNum;
	 public String	 marriage;
	 public String address;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getIdCardNum() {
		return idCardNum;
	}
	public void setIdCardNum(String idCardNum) {
		this.idCardNum = idCardNum;
	}
	public String getDisabCardNum() {
		return disabCardNum;
	}
	public void setDisabCardNum(String disabCardNum) {
		this.disabCardNum = disabCardNum;
	}
	public String getDisability() {
		return disability;
	}
	public void setDisability(String disability) {
		this.disability = disability;
	}
	public String getPlaceOfDemicile() {
		return placeOfDemicile;
	}
	public void setPlaceOfDemicile(String placeOfDemicile) {
		this.placeOfDemicile = placeOfDemicile;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public int getFamMemNum() {
		return famMemNum;
	}
	public void setFamMemNum(int famMemNum) {
		this.famMemNum = famMemNum;
	}
	public String getMarriage() {
		return marriage;
	}
	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Apply(){
		
	}
	public Apply(int userId, String name, String sex, String nation, String telephone, String idCardNum,
			String disabCardNum, String disability, String placeOfDemicile, int income, String education, int famMemNum,
			String marriage, String address) {
		super();
		this.userId = userId;
		this.name = name;
		this.sex = sex;
		this.nation = nation;
		this.telephone = telephone;
		this.idCardNum = idCardNum;
		this.disabCardNum = disabCardNum;
		this.disability = disability;
		this.placeOfDemicile = placeOfDemicile;
		this.income = income;
		this.education = education;
		this.famMemNum = famMemNum;
		this.marriage = marriage;
		this.address = address;
	}
	 
}
