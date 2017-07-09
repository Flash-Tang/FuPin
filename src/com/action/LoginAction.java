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
    public String login() {
        System.out.println("LoginAction");
        if (iLoginService.isLogin(username, pwd))
            return "login";
        else return "input";
    }
    public String register(){
        System.out.println("RegisterAction");
        if(iLoginService.isRegister(username, pwd))
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
