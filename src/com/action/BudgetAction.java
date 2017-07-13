package com.action;

import com.model.Measure;
import com.service.IAdminService;
import com.serviceImpl.AdminServiceImpl;

import java.util.List;

/**
 * Created by panxi on 2017/7/11.
 */
public class BudgetAction {
    public Measure getMeasure() {
        return measure;
    }

    public void setMeasure(Measure measure) {
        this.measure = measure;
    }

    public List<Measure> getBudgetlist() {
        return budgetlist;
    }

    List<Measure> budgetlist;
    Measure measure;
    IAdminService iAdminService = new AdminServiceImpl();

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }


    int ID;

    public String getAct() {
        return act;
    }

    public void setAct(String act) {
        this.act = act;
    }

    String  act;



    public String showBudget(){
        budgetlist = iAdminService.showMeasure();
        if(!budgetlist.isEmpty())
            return "success";
        else return "error";
    }

    public String updateBudget(){
        if(act.equals("add")) {
            iAdminService.addMeasureNum(ID);
            return "success";
        }
        else if(act.equals("cut")) {
            iAdminService.cutMeasureNum(ID);
            return "success";
        }
        else return "error";
    }
}
