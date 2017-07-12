package com.action;

import com.model.Apply;
import com.model.Plan;
import com.model.User;
import com.service.IAdminService;
import com.service.IUserService;
import com.serviceImpl.AdminServiceImpl;
import com.serviceImpl.UserServiceImpl;

import javax.swing.plaf.PanelUI;

/**
 * Created by panxi on 2017/7/11.
 */
public class UserAction {
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    User user;
    IUserService iUserService = new UserServiceImpl();
    IAdminService iAdminService = new AdminServiceImpl();

    public Apply getApplys() {
        return applys;
    }

    public void setApplys(Apply applys) {
        this.applys = applys;
    }

    Apply applys;

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    Plan plan;
    public String UserTrack(){
        plan = iAdminService.showPlan(user.getIdByName());
        applys=iAdminService.showUserApply(user.getIdByName());
        return "success";
    }

}
