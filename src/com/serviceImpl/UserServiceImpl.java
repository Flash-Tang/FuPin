package com.serviceImpl;

import java.sql.Date;
import java.sql.ResultSet;
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
	public List<Message> getMessage(int messageId) {
		ResultSet rs=iUserDao.getMessage(messageId);
		List<Message> messageList=new ArrayList<Message>();
		try {
			while(rs.next())
			{
				//ȡ���ݿ���е�ÿһ��ֵ
				int massageId=rs.getInt("massageid");
				int adminId=rs.getInt("adminid");
				String text=rs.getString("text");
				//��ÿһ��ֵ����javaBeaN��
				Message message=new Message();
				message.setMassageId(massageId);
				message.setAdminId(adminId);
				message.setText(text);
				//����ȡ��javaBean������뼯����
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
	public List<Plan> helpTrack(int userId) {
		ResultSet rs=iUserDao.getPlan(userId);
		List<Plan> planList=new ArrayList<Plan>();
		try {
			while(rs.next())
			{
				//ȡ���ݿ���е�ÿһ��ֵ
				int planid=rs.getInt("planid");
				int userid=rs.getInt("userid");
				String plan=rs.getString("plan");
				float cost=rs.getFloat("cost");
				Date startDate=rs.getDate("startDate");
				Date endDate=rs.getDate("endDate");
				int number=rs.getInt("number");
				String socialSecurity=rs.getString("socialSecurity");
				String socialAssistance=rs.getString("socialAssistance");
				String fosterService=rs.getString("fosterService");
				String rehabilitation=rs.getString("rehabilitation");
				String disabReconst=rs.getString("disabReconst");
				String education=rs.getString("education");
				String job=rs.getString("job");
				String privation=rs.getString("privation");
				String legalRight=rs.getString("privation");
				String improlivCondition=rs.getString("improlivCondition");
				int remnum=rs.getInt("remnum");
				//��ÿһ��ֵ����javaBeaN��
				Plan userplan=new Plan();
				userplan.setPlanid(planid);
				userplan.setUserid(userid);
				userplan.setPlan(plan);
				userplan.setCost(cost);
				userplan.setStartDate(startDate);
				userplan.setEndDate(endDate);
				userplan.setNumber(number);
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
				userplan.setRemnum(remnum);
				planList.add(userplan);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return planList;
	}

}
