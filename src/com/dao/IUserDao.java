package com.dao;

import java.sql.ResultSet;

import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;

public interface IUserDao {
	// ²éÑ¯×ÉÑ¯
	public ResultSet getMessage(int messageId);

	// Æ¶À§ÉêÇë
	public boolean userApply(Apply apply);

	// ÆÀ¼Û·´À¡
	public boolean addfeedback(Feedback feedback);

	// ÐèÇó
	public boolean userDemand(Demand demand);

	// ×·×Ù
	public ResultSet getPlan(int userId);
	
}
