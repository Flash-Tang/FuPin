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
    int ID;

    public void setID(int ID) {
        this.ID = ID;
    }

    public String showBudget(){
        budgetlist = iAdminService.showMeasure();
        if(!budgetlist.isEmpty())
            return "success";
        else return "error";
    }

    public String updateBudget(){

    return "success";
    }
}
