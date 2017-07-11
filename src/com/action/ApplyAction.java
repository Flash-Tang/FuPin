package com.action;

import com.model.Apply;
import com.model.Demand;
import com.model.User;
import com.service.IUserService;
import com.serviceImpl.UserServiceImpl;
/**
 * Created by panxi on 2017/7/10.
 */
public class ApplyAction {
    public void setApply(Apply apply) {
        this.apply = apply;
        this.apply.userid = user.getIdByName();
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setDemand(Demand demand) {
        this.demand = demand;
    }
    Apply apply;
    Demand demand;
    User user;
    IUserService iUserService = new UserServiceImpl();
    public String isApply(){
        //1.未申请
        if(true)
            return "input";
        //2.申请中
        else if(2 > 1)return "wait";
        //3.申请成功
        else return "success";
    }
    public String SubmitApply(){
        System.out.println("SubmitApply");
        System.out.println("username:"+ user.getUsername());
        System.out.println("userid:"+ user.getIdByName());
        System.out.println("apply:"+ apply);
        if(iUserService.userApply(apply) && iUserService.userDemand(demand))
        return "success";
        else return "input";
    }
}
