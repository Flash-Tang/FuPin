package com.daoImpl;

import java.sql.Date;
import java.sql.ResultSet;

import com.dao.IAdminDao;
import com.model.Admin;
import com.model.Apply;
import com.model.Demand;
import com.model.Message;
import com.model.Plan;
import com.util.DBUtil;

public class AdminDaoImpl implements IAdminDao {
	ResultSet rs;
	DBUtil db = new DBUtil();

	@Override
	// ��ʾ����֪ͨ
	public ResultSet showAllMessage() {
		String sql = "select * from message";
		try {
			rs = db.queryData(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override

	// ���֪ͨ
	public boolean addMessage(Message message) {
		// messageid ��������
		String sql = "insert into message(adminid,text)values('" + message.getAdminid() + "','" + message.getText()
				+ "') ";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	// ɾ��֪ͨ
	public boolean deleteMessage(int massageid) {
		String sql = "delete from message where massageid='" + massageid + "'";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	// ��ȡ�������û�����
	public ResultSet showAllFeedback() {
		String sql = "select * from feedback";
		try {
			rs = db.queryData(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	// ɾ��ָ���û�����
	public boolean deleteFeedback(int feedBackid) {
		String sql = "delete from feedback where feedBackid='" + feedBackid + "'";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// ��ʾ������������Ϣ��
	@Override
	public ResultSet showAllApply() {
		String sql = "select * from basicinfo order by perIncome";
		try {
			rs = db.queryData(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet showUserApply(int userid) {
		String sql = "select * from basicinfo where userid='" + userid + "'";
		try {
			rs = db.queryData(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet showUserDemend(int userid) {
		String sql = "select * from demand where where userid='" + userid + "'";
		try {
			rs = db.queryData(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	// ɾ���û������
	@Override
	public boolean deleteApply(int userid) {
		String sql = "delete from basicinfo where userid='" + userid + "';delete from demand where userid='" + userid
				+ "'";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean passApply(int userid) {
		// plan����planid��������

		String sql = "insert into plan(userid,plan,cost,startDate,endDate,socialSecurity,socialAssistance,fosterService,rehabilitation,disabReconst,education,job,privation,legalRight,improlivCondition)values('"
				+ userid + "',null,0,current_date(),null,0,0,0,0,0,0,0,0,0,0) ";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// ɾ������ƻ�
	@Override
	public boolean deletePlan(int userid) {
		String sql = "delete from plan where userid='" + userid + "'";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// �޸İ���ƻ�
	// endDate����������Ҫ��������ת��
	@Override
	public boolean updatePlan(Plan plans) {
		String sql = "update plan set plan='" + plans.plan + "',cost='" + plans.cost + "',endDate='" + plans.endDate
				+ "',socialSecurity='" + plans.socialSecurity + "',socialAssistance='" + plans.socialAssistance
				+ "',fosterService='" + plans.fosterService + "',rehabilitation='" + plans.rehabilitation
				+ "',disabReconst='" + plans.disabReconst + "',education='" + plans.education + "',job='" + plans.job
				+ "',privation='" + plans.privation + "',legalRight='" + plans.legalRight + "',improlivCondition='"
				+ plans.improlivCondition + "' where userid='" + plans.userid + "'";
		try {
			if (db.Update(sql)) {
				return true;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		String sql = "update adminaccount set adminpwd='"+admin.adminpwd+"'";
		try {
			if (db.Update(sql)) {
				return true;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteUser(int userid) {
		String sql = "delete from useraccount where userid='" + userid + "'";
		try {
			if (db.Update(sql))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public ResultSet showAllUser() {
		String sql = "select * from useraccount";
		try {
			rs = db.queryData(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return rs;
	}

}
