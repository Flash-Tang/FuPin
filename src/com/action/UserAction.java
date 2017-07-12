package com.action;

import com.model.User;
import com.service.IUserService;
import com.serviceImpl.UserServiceImpl;

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
    public String showAllApply(){
return "success";
    }
}
