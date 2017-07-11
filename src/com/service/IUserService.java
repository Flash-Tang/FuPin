package com.service;

import java.util.List;

import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;

public interface IUserService {
	//²éÑ¯×ÉÑ¯
	 public List<Message> getMessage(int messageId);
	 //Æ¶À§ÉêÇë
	 public boolean userApply(Apply apply);
	 //ÆÀ¼Û·´À¡
	 public boolean addfeedback(Feedback feedback);
	 //ÐèÇó
	 public boolean userDemand(Demand demand);
	 //×·×Ù
	 public List<Plan> helpTrack(int userId);

	 public int getIdByName(String username);
	 
}
