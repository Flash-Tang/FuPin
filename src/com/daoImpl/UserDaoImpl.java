package com.daoImpl;

import java.sql.ResultSet;

import com.dao.IUserDao;
import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;
import com.util.DBUtil;

public class UserDaoImpl implements IUserDao {
	ResultSet rs;
	DBUtil db = new DBUtil();

	@Override
	public ResultSet getMessage() {
		String sql = "select * from message ";
		try {
			rs = db.queryData(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	@Override
	public boolean userApply(Apply apply) {
		String sql = "insert into basicInfo(userid,name,sex,nation,telephone,idCardNum,disabCardNum,disability,placeOfDemicile" +
				",perIncome,education,famMemNum,marriage,address)" +
				"values('" + apply.getUserid() + "','" + apply.getName() + "','" + apply.getSex() + "','" + apply.getNation() + "','" + apply.getTelephone() + "','" + apply.getIdCardNum() + "','" + apply.getDisabCardNum() + "','" + apply.getDisability() + "','" + apply.getPlaceOfDemicile() + "','" + apply.getPerIncome() + "','" + apply.getEducation() + "','" + apply.getFamMemNum() + "','" + apply.getMarriage() + "','" + apply.getAddress() + "')";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addfeedback(Feedback feedback) {
		String sql = "insert into feedBack(userid,words)values('" + feedback.getUserid() + "','" + feedback.getWords() + "')";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean userDemand(Demand demand) {
		String sql = "insert into demand(userid,socialSecurity,socialAssistance,fosterService,rehabilitation,disabReconst,education,job,privation,legalRight,improlivCondition)values('" + demand.getUserid() + "','" + demand.getSocialSecurity() + "','" + demand.getSocialAssistance() + "','" + demand.getFosterService() + "','" + demand.getRehabilitation() + "','" + demand.getDisabReconst() + "','" + demand.getEducation() + "','" + demand.getJob() + "','" + demand.getPrivation() + "','" + demand.getLegalRight() + "','" + demand.getImprolivCondition() + "')";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public ResultSet getPlan(int userId) {
		String sql = "select * from plan where userid='" + userId + "'";
		try {
			rs = db.queryData(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet getIdByName(String username) {
		System.out.println("do dao getIdByName");
		String sql = "select * from useraccount where username='" + username + "'";
		try {
			rs = db.queryData(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}
