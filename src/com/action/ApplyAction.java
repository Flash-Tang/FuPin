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

    Apply applys;
    Demand demand;
    User user;
    IUserService iUserService = new UserServiceImpl();

    public Demand getDemand() {
        return demand;
    }

    public void setDemand(Demand demand) {
        this.demand = demand;
    }

    public Apply getApplys() {
        return applys;
    }

    public void setApplys(Apply applys) {
        this.applys = applys;
    }

    public void setUser(User user) {
        this.user = user;
    }

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
        applys.userid = user.getIdByName();
        demand.userid =applys.userid;
        if(iUserService.userApply(applys) && iUserService.userDemand(demand))
            return "success";
        else
            return "input";
    }
}
