package com.model;

import java.util.Date;

public class Plan {
	public int planid;
	public int userid;
	public String plan;
	public float cost;
	public Date startDate;
	public Date endDate;
	public int number;
	public String socialSecurity;
	public String socialAssistance;
	public String fosterService;
	public String rehabilitation;
	public String disabReconst;
	public String education;
	public String job;
	public String privation;
	public String legalRight;
	public String improlivCondition;
	public int remnum;
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getSocialSecurity() {
		return socialSecurity;
	}
	public void setSocialSecurity(String socialSecurity) {
		this.socialSecurity = socialSecurity;
	}
	public String getSocialAssistance() {
		return socialAssistance;
	}
	public void setSocialAssistance(String socialAssistance) {
		this.socialAssistance = socialAssistance;
	}
	public String getFosterService() {
		return fosterService;
	}
	public void setFosterService(String fosterService) {
		this.fosterService = fosterService;
	}
	public String getRehabilitation() {
		return rehabilitation;
	}
	public void setRehabilitation(String rehabilitation) {
		this.rehabilitation = rehabilitation;
	}
	public String getDisabReconst() {
		return disabReconst;
	}
	public void setDisabReconst(String disabReconst) {
		this.disabReconst = disabReconst;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getPrivation() {
		return privation;
	}
	public void setPrivation(String privation) {
		this.privation = privation;
	}
	public String getLegalRight() {
		return legalRight;
	}
	public void setLegalRight(String legalRight) {
		this.legalRight = legalRight;
	}
	public String getImprolivCondition() {
		return improlivCondition;
	}
	public void setImprolivCondition(String improlivCondition) {
		this.improlivCondition = improlivCondition;
	}
	public int getRemnum() {
		return remnum;
	}
	public void setRemnum(int remnum) {
		this.remnum = remnum;
	}
	public Plan(){
		
	}
	public Plan(int planid, int userid, String plan, float cost, Date startDate, Date endDate, int number,
			String socialSecurity, String socialAssistance, String fosterService, String rehabilitation,
			String disabReconst, String education, String job, String privation, String legalRight,
			String improlivCondition, int remnum) {
		super();
		this.planid = planid;
		this.userid = userid;
		this.plan = plan;
		this.cost = cost;
		this.startDate = startDate;
		this.endDate = endDate;
		this.number = number;
		this.socialSecurity = socialSecurity;
		this.socialAssistance = socialAssistance;
		this.fosterService = fosterService;
		this.rehabilitation = rehabilitation;
		this.disabReconst = disabReconst;
		this.education = education;
		this.job = job;
		this.privation = privation;
		this.legalRight = legalRight;
		this.improlivCondition = improlivCondition;
		this.remnum = remnum;
	}
	
	
	
}
