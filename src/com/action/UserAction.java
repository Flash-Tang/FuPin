package com.action;

import com.model.*;
import com.service.IAdminService;
import com.service.IUserService;
import com.model.Message;
import com.serviceImpl.AdminServiceImpl;
import com.serviceImpl.UserServiceImpl;

import java.util.List;


/**
 * Created by panxi on 2017/7/11.
 */
public class UserAction {
    List<Message> messageList=null;

    public List<Message> getMessageList() {
        return messageList;
    }
    public void setMessageList(List<Message> messageList) {
        this.messageList = messageList;
    }
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    Feedback feedback;
    public Feedback getFeedback() {
        return feedback;
    }
    public void setFeedback(Feedback feedback) {
        this.feedback = feedback;
    }
    String username;

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
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public IUserService getiUserService() {
        return iUserService;
    }
    public void setiUserService(IUserService iUserService) {
        this.iUserService = iUserService;
    }
    Plan plan;
    public String UserTrack(){
        plan = iAdminService.showPlan(user.getIdByName());
        applys=iAdminService.showUserApply(user.getIdByName());
        return "success";
    }

    public String sendFeedback() {
        System.out.println("sendFeedback");
        int userid=iUserService.getIdByName(username);
        System.out.println(username);
        System.out.println(userid);
        feedback.setUserid(userid);
        if(iUserService.addfeedback(feedback))
            return "success";
        else
            return "input";
    }
    public String getMessage(){
        messageList=iUserService.getMessage();
        System.out.println(messageList.isEmpty());
        return "success";
    }

}
