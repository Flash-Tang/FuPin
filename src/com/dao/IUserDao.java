package com.dao;

import java.sql.ResultSet;

import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;

public interface IUserDao {
	// ��ѯ��ѯ
	public ResultSet getMessage(int messageId);

	// ƶ������
	public boolean userApply(Apply apply);

	// ���۷���
	public boolean addfeedback(Feedback feedback);

	// ����
	public boolean userDemand(Demand demand);

	// ׷��
	public ResultSet getPlan(int userId);
	
}
