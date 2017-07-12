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
	// ��ʾ�����ѷ�������Ϣ
	public ResultSet showAllMessage();
	// ��������Ϣ
	public boolean addMessage(Message message);
	// ɾ���ѷ�������Ϣ
	public boolean deleteMessage(int massageid);
	// �鿴�����û�������Ϣ
	public ResultSet showAllFeedback();
	// ɾ���û�������Ϣ
	public boolean deleteFeedback(int feedBackid);
	//�������ʾ������������Ϣ,ֻ��ʾ������Ϣ���������ӣ��㿪����ת����ҳ����ʾ�������Ϣ��ҳ��ײ�����Աѡ��ͨ���Ͳ�ͨ��
	public ResultSet showAllApply();
	//��ʾ��ϸ��������Ϣ
	public ResultSet showUserApply(int userid);
	//��ʾ��ϸ��������Ϣ
	public ResultSet showUserDemend(int userid);
	//ɾ����������Ϣ
	public boolean deleteApply(int userid);
	//ȷ����������Ϣ,���plan��
	public boolean passApply(int userid,Demand demand);
	//�޸İ����Ϣ
	public boolean updatePlan(Plan plans);
	//ɾ�������Ϣ
	public boolean deletePlan(int userid);
	//�޸ĸ�����Ϣ
	public boolean updateAdmin(Admin admin);
	//ɾ��ע���û�
	public boolean deleteUser(int userid);
	//�鿴ע���û�
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
