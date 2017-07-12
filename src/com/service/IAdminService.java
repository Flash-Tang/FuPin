package com.service;

import java.sql.ResultSet;
import java.util.List;

import com.model.*;

public interface IAdminService {
	//��ʾ�����ѷ�������Ϣ
	public List<Message> showAllMessage();
	// ��������Ϣ
	public boolean addMessage(Message message);
	// ɾ���ѷ�������Ϣ
	public boolean deleteMessage(int massageid);
	//�鿴�����û�������Ϣ
	public List<Feedback> showAllFeedback();
	//ɾ���û�������Ϣ
	public boolean deleteFeedback(int feedBackid);
	
	//�������ʾ������������Ϣ
	public List<Apply> showAllApply();
	//��ʾ��ϸ��������Ϣ
	public Apply showUserApply(int userid);
	//��ʾ��ϸ��������Ϣ
	public Demand showUserDemend(int userid);
	
	//ɾ����������Ϣ
	public boolean deleteApply(int userid);
	//ȷ����������Ϣ
	public boolean passApply(int userid);
	//�޸İ����Ϣ
	public boolean updatePlan(Plan plan);
	//ɾ�������Ϣ
	public boolean deletePlan(int userid);
	//�޸ĸ�����Ϣ
	public boolean updateAdmin(Admin admin);
	//ɾ��ע���û�
	public boolean deleteUser(int userid);
	//�鿴ע���û�
	public List<User> showAllUser();
	public List<Measure> showMeasure();
	public Plan showPlan(int userid);
	public List<Apply> showPlanUser();
	public boolean adjustPlan(int userid, String item);
	public Demand showMeasureNum();
	public boolean adjustMeasureNum(String item);
	
}
