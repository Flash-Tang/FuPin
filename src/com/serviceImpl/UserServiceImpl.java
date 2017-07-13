package com.serviceImpl;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.IUserDao;
import com.daoImpl.UserDaoImpl;
import com.model.Apply;
import com.model.Demand;
import com.model.Feedback;
import com.model.Message;
import com.model.Plan;
import com.service.IUserService;

public class UserServiceImpl implements IUserService {
	IUserDao iUserDao=new UserDaoImpl();
	@Override
	public List<Message> getMessage() {
		ResultSet rs=iUserDao.getMessage();
		List<Message> messageList=new ArrayList<Message>();
		try {
			while(rs.next())
			{
				//取数据库表中的每一行值
				int massageid=rs.getInt("massageid");
				int adminid=rs.getInt("adminid");
				String text=rs.getString("text");
				//将每一行值放入javaBeaN中
				Message message=new Message();
				message.setMassageid(massageid);
				message.setAdminid(adminid);
				message.setText(text);
				//将获取的javaBean对象放入集合中
				messageList.add(message);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return messageList;
	}


	@Override
	public boolean userApply(Apply apply) {
		
		return iUserDao.userApply(apply);
	}

	@Override
	public boolean addfeedback(Feedback feedback) {
		return iUserDao.addfeedback(feedback);
	}

	@Override
	public boolean userDemand(Demand demand) {
		return iUserDao.userDemand(demand);
	}

	@Override
	public Plan showPlan(int userId) {
		ResultSet rs=iUserDao.getPlan(userId);
		Plan userplan=new Plan();
		try {
			if(rs.next()) {
				//取数据库表中的每一行值
				int planid = rs.getInt("planid");
				int userid = rs.getInt("userid");
				float cost = rs.getFloat("cost");
				int socialSecurity = rs.getInt("socialSecurity");
				int socialAssistance = rs.getInt("socialAssistance");
				int fosterService = rs.getInt("fosterService");
				int rehabilitation = rs.getInt("rehabilitation");
				int disabReconst = rs.getInt("disabReconst");
				int education = rs.getInt("education");
				int job = rs.getInt("job");
				int privation = rs.getInt("privation");
				int legalRight = rs.getInt("legalRight");
				int improlivCondition = rs.getInt("improlivCondition");
				//将每一行值放入javaBeaN中

				userplan.setPlanid(planid);
				userplan.setUserid(userid);
				userplan.setCost(cost);
				userplan.setSocialSecurity(socialSecurity);
				userplan.setSocialAssistance(socialAssistance);
				userplan.setFosterService(fosterService);
				userplan.setRehabilitation(rehabilitation);
				userplan.setDisabReconst(disabReconst);
				userplan.setEducation(education);
				userplan.setJob(job);
				userplan.setPrivation(privation);
				userplan.setLegalRight(legalRight);
				userplan.setImprolivCondition(improlivCondition);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userplan;
	}



	public int getIdByName(String username) {
		System.out.println("do service getIdByName");
	    ResultSet rs = iUserDao.getIdByName(username);
	    int userid = 0;
        try {
        	while(rs.next()){
				userid = rs.getInt("userid");
			}
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userid;
    }

}
