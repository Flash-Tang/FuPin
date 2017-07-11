package com.action;

import com.model.Admin;
import com.model.User;
import com.service.ILoginService;
import com.serviceImpl.LoginServiceImpl;

/**
 * Created by panxi on 2017/7/5.
 */
public class LoginAction {
    Admin admin;
    User user;
    public void setAdmin(Admin admin) {
        this.admin = admin;
    }
    public void setUser(User user) {
        this.user = user;
    }
    ILoginService iLoginService = new LoginServiceImpl();
    public String userlogin() {
        System.out.println("LoginAction");
        if (iLoginService.isUserLogin(user.username, user.userpwd))
            return "login";
        else return "input";
    }
    public String userregister(){
        System.out.println("RegisterAction");
        if(iLoginService.isUserRegister(user.username, user.userpwd))
            return "success";
        else return "input";
    }
    public String adminlogin() {
        System.out.println("LoginAction");
        if (iLoginService.isAdminLogin(admin.adminname, admin.adminpwd))
            return "login";
        else return "input";
    }
    public String adminregister(){
        System.out.println("RegisterAction");
        if(iLoginService.isAdminRegister(admin.adminname,admin.adminpwd))
            return "success";
        else return "input";
    }
}
