package com.action;

import com.service.ILoginService;
import com.serviceImpl.LoginServiceImpl;

/**
 * Created by panxi on 2017/7/5.
 */
public class LoginAction {
    String username;
    String pwd;
    ILoginService iLoginService = new LoginServiceImpl();
    public String userlogin() {
        System.out.println("LoginAction");
        if (iLoginService.isUserLogin(username, pwd))
            return "login";
        else return "input";
    }
    public String userregister(){
        System.out.println("RegisterAction");
        if(iLoginService.isUserRegister(username, pwd))
            return "success";
        else return "input";
    }
    public String adminlogin() {
        System.out.println("LoginAction");
        if (iLoginService.isAdminLogin(username, pwd))
            return "login";
        else return "input";
    }
    public String adminregister(){
        System.out.println("RegisterAction");
        if(iLoginService.isAdminRegister(username, pwd))
            return "success";
        else return "input";
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
