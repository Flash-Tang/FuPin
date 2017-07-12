package com.dao;

import java.sql.ResultSet;
import java.util.List;

import com.model.Admin;
import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;
import org.omg.CORBA.PUBLIC_MEMBER;

public interface IAdminDao {
	// 显示所有已发布的信息
	public ResultSet showAllMessage();
	// 发布新信息
	public boolean addMessage(Message message);
	// 删除已发布的信息
	public boolean deleteMessage(int massageid);
	// 查看所有用户反馈信息
	public ResultSet showAllFeedback();
	// 删除用户反馈信息
	public boolean deleteFeedback(int feedBackid);
	//排序后显示所有申请人信息,只显示部分信息，做成链接，点开后跳转到新页面显示需求和信息，页面底部管理员选择通过和不通过
	public ResultSet showAllApply();
	//显示详细的申请信息
	public ResultSet showUserApply(int userid);
	//显示详细的需求信息
	public ResultSet showUserDemend(int userid);
	//删除申请人信息
	public boolean deleteApply(int userid);
	//确认申请人信息,添加plan表
	public boolean passApply(int userid,Demand demand);
	//修改帮扶信息
	public boolean updatePlan(Plan plans);
	//删除帮扶信息
	public boolean deletePlan(int userid);
	//修改个人信息
	public boolean updateAdmin(Admin admin);
	//删除注册用户
	public boolean deleteUser(int userid);
	//查看注册用户
	public ResultSet showAllUser();
	public ResultSet showMeasure();
	public boolean updateBudget(int measureId);
	public ResultSet showPlan(int userid);
	public ResultSet showPlanUser();
	public boolean adjustPlan(int usreid, String item);
	public ResultSet showMeasureNum();
	public boolean adjustMeasureNum(String item);
	public ResultSet demandAnalyze();
	public ResultSet distributeAnalyze();
}
