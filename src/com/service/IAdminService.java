package com.service;

import java.sql.ResultSet;
import java.util.List;

import com.model.*;

public interface IAdminService {
	//显示所有已发布的信息
	public List<Message> showAllMessage();
	// 发布新信息
	public boolean addMessage(Message message);
	// 删除已发布的信息
	public boolean deleteMessage(int massageid);
	//查看所有用户反馈信息
	public List<Feedback> showAllFeedback();
	//删除用户反馈信息
	public boolean deleteFeedback(int feedBackid);
	
	//排序后显示所有申请人信息
	public List<Apply> showAllApply();
	//显示详细的申请信息
	public Apply showUserApply(int userid);
	//显示详细的需求信息
	public Demand showUserDemend(int userid);
	
	//删除申请人信息
	public boolean deleteApply(int userid);
	//确认申请人信息
	public boolean passApply(int userid);
	//修改帮扶信息
	public boolean updatePlan(Plan plan);
	//删除帮扶信息
	public boolean deletePlan(int userid);
	//修改个人信息
	public boolean updateAdmin(Admin admin);
	//删除注册用户
	public boolean deleteUser(int userid);
	//查看注册用户
	public List<User> showAllUser();
	public List<Measure> showMeasure();
	public Plan showPlan(int userid);
	public List<Apply> showPlanUser();
	public boolean adjustPlan(int userid, String item);
	public Demand showMeasureNum();
	public boolean adjustMeasureNum(String item);
	
}
