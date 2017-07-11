package com.service;

import java.util.List;

import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;

public interface IUserService {
	//��ѯ��ѯ
	 public List<Message> getMessage(int messageId);
	 //ƶ������
	 public boolean userApply(Apply apply);
	 //���۷���
	 public boolean addfeedback(Feedback feedback);
	 //����
	 public boolean userDemand(Demand demand);
	 //׷��
	 public List<Plan> helpTrack(int userId);

	 public int getIdByName(String username);
	 
}
