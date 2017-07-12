package com.model;

public class DemandAna {
	public int socialSecurity;
	public int socialAssistance;
	public int fosterService;
	public int rehabilitation;
	public int disabReconst;
	public int education;
	public int job;
	public int privation;
	public int legalRight;
	public int improlivCondition;
	
	public DemandAna(){
		
	}

	public DemandAna(int socialSecurity, int socialAssistance, int fosterService, int rehabilitation,
			int disabReconst, int education, int job, int privation, int legalRight, int improlivCondition) {
		super();
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

	public int getSocialSecurity() {
		return socialSecurity;
	}

	public void setSocialSecurity(int socialSecurity) {
		this.socialSecurity = socialSecurity;
	}

	public int getSocialAssistance() {
		return socialAssistance;
	}

	public void setSocialAssistance(int socialAssistance) {
		this.socialAssistance = socialAssistance;
	}

	public int getFosterService() {
		return fosterService;
	}

	public void setFosterService(int fosterService) {
		this.fosterService = fosterService;
	}

	public int getRehabilitation() {
		return rehabilitation;
	}

	public void setRehabilitation(int rehabilitation) {
		this.rehabilitation = rehabilitation;
	}

	public int getDisabReconst() {
		return disabReconst;
	}

	public void setDisabReconst(int disabReconst) {
		this.disabReconst = disabReconst;
	}

	public int getEducation() {
		return education;
	}

	public void setEducation(int education) {
		this.education = education;
	}

	public int getJob() {
		return job;
	}

	public void setJob(int job) {
		this.job = job;
	}

	public int getPrivation() {
		return privation;
	}

	public void setPrivation(int privation) {
		this.privation = privation;
	}

	public int getLegalRight() {
		return legalRight;
	}

	public void setLegalRight(int legalRight) {
		this.legalRight = legalRight;
	}

	public int getImprolivCondition() {
		return improlivCondition;
	}

	public void setImprolivCondition(int improlivCondition) {
		this.improlivCondition = improlivCondition;
	}
	
	
}
