package com.action;

import java.util.List;

import com.model.Apply;
import com.model.Demand;
import com.model.Plan;
import com.service.IAdminService;
import com.service.IUserService;
import com.serviceImpl.AdminServiceImpl;
import com.serviceImpl.UserServiceImpl;

public class AdminAction {
	    Apply applys;
	    Demand demand;
	    List<Apply> applyList=null;
		IAdminService iAdminService=new AdminServiceImpl();
		Plan plan;
		String userId;
		String item;
	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}


	public Plan getPlan() {
		return plan;
	}
	public void setPlan(Plan plan) {
		this.plan = plan;
	}


	  public Demand getDemand() {
			return demand;
		}

		public void setDemand(Demand demand) {
			this.demand = demand;
		}
		

	   
	    public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

		public Apply getApplys() {
			return applys;
		}

		public void setApplys(Apply applys) {
			this.applys = applys;
		}

		
	    public List<Apply> getApplyList() {
			return applyList;
		}

		public void setiAdminService(IAdminService iAdminService) {
			this.iAdminService = iAdminService;
		}

		
		public IAdminService getiAdminService() {
			return iAdminService;
		}

		public void setApplyList(List<Apply> applyList) {
			this.applyList = applyList;
		}
		
		public String showUserApply(){
			System.out.println("showUserApply");
			applys=iAdminService.showUserApply(Integer.parseInt(userId));
			demand=iAdminService.showUserDemend(Integer.parseInt(userId));
			System.out.println("demand"+demand);
	        return "success";
		}
		public String showAllApply(){
	        System.out.println("showAllApply");
	        applyList= iAdminService.showAllApply();
	        System.out.println(applyList.isEmpty());
	        return "success";
	      
	    }
		public String passApply(){
			System.out.println("passApply");
			if(iAdminService.passApply(Integer.parseInt(userId)))
				return "success";
			else
				return "input";
		}
		public String deleteApply(){
			System.out.println("deleteApply");
			if(iAdminService.deleteApply(Integer.parseInt(userId)))
			return "success";
			else
			return "input";
		}

		public String showPlan(){
		System.out.println("showPlan");
		plan= iAdminService.showPlan(Integer.parseInt(userId));
		demand = iAdminService.showMeasureNum();
		return "success";
	}
		public String showPlanUser(){
			System.out.println("showPlanUser");
			applyList=iAdminService.showPlanUser();
			return "success";
		}
		public String adjustPlan(){
			if(iAdminService.adjustPlan(Integer.parseInt(userId),item) && iAdminService.adjustMeasureNum(item))
				return "success";
			else return "error";
		}

}
