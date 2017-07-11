package com.service;

import java.sql.ResultSet;
import java.util.List;

import com.model.Admin;
import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;
import com.model.User;

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
	
}
