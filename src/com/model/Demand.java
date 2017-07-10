package com.model;

public class Demand {
	public int userid;
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
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	public Demand(){
		
	}
	public Demand(int userid, String socialSecurity, String socialAssistance, String fosterService,
			String rehabilitation, String disabReconst, String education, String job, String privation,
			String legalRight, String improlivCondition) {
		super();
		this.userid = userid;
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
	}
	
}
