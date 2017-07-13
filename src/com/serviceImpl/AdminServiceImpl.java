package com.serviceImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.IAdminDao;
import com.daoImpl.AdminDaoImpl;
import com.model.*;
import com.service.IAdminService;

public class AdminServiceImpl implements IAdminService {

	IAdminDao iAdminDao=new AdminDaoImpl();
	@Override
	//显示出所有通知
	public List<Message> showAllMessage() {
		ResultSet rs=iAdminDao.showAllMessage();
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
	//添加通知
	public boolean addMessage(Message message) {
		return iAdminDao.addMessage(message);
	}

	@Override
	//删除通知
	public boolean deleteMessage(int massageid) {
		return iAdminDao.deleteMessage(massageid);
	}

	@Override
	//显示用户反馈
	public List<Feedback> showAllFeedback() {
		ResultSet rs=iAdminDao.showAllFeedback();
		List<Feedback> feedbackList=new ArrayList<Feedback>();
		try {
			while(rs.next())
			{
				//取数据库表中的每一行值
				int feedBackid=rs.getInt("feedBackid");
				int userid=rs.getInt("userid");
				String words=rs.getString("words");
				//将每一行值放入javaBeaN中
				Feedback feedback=new Feedback();
				
				feedback.setFeedBackid(feedBackid);
				feedback.setUserid(userid);
				feedback.setWords(words);
				//将获取的javaBean对象放入集合中
				feedbackList.add(feedback);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return feedbackList;
	}

	@Override
	//删除用户反馈
	public boolean deleteFeedback(int feedBackid) {
		return iAdminDao.deleteFeedback(feedBackid);
	}

	@Override
	//此方法只调用了部分信息，使用时需注意
	public List<Apply> showAllApply() {
		ResultSet rs=iAdminDao.showAllApply();
		List<Apply> applyList=new ArrayList<Apply>();
		try {
			while(rs.next())
			{
				//取数据库表中的每一行值
				int userid=rs.getInt("userid");
				String name=rs.getString("name");
				String sex=rs.getString("sex");
				String disability=rs.getString("disability");
				int perIncome=rs.getInt("perIncome");
				//将每一行值放入javaBeaN中
				Apply apply=new Apply();
				
				apply.setUserid(userid);
				apply.setName(name);
				apply.setSex(sex);
				apply.setDisability(disability);
				apply.setPerIncome(perIncome);
				//将获取的javaBean对象放入集合中
				applyList.add(apply);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return applyList;
	}

	@Override
	//里边只有一个人的信息
	public Apply showUserApply(int userid) {
		ResultSet rs=iAdminDao.showUserApply(userid);
		Apply apply=new Apply();
		try {
			rs.next();
			String name=rs.getString("name");
			String sex=rs.getString("sex");
			String nation=rs.getString("nation");
			String telephone=rs.getString("telephone");
			String idCardNum=rs.getString("idCardNum");
			String disabCardNum=rs.getString("disabCardNum");
			String disability=rs.getString("disability");
			String placeOfDemicile=rs.getString("placeOfDemicile");
			int perIncome=rs.getInt("perIncome");
			String education=rs.getString("education");
			int famMemNum=rs.getInt("famMemNum");
			String marriage=rs.getString("marriage");
			String address=rs.getString("address");
			apply.setUserid(userid);
			apply.setName(name);
			apply.setSex(sex);
			apply.setNation(nation);
			apply.setTelephone(telephone);
			apply.setIdCardNum(idCardNum);
			apply.setDisabCardNum(disabCardNum);
			apply.setDisability(disability);
			apply.setPlaceOfDemicile(placeOfDemicile);
			apply.setPerIncome(perIncome);
			apply.setEducation(education);
			apply.setFamMemNum(famMemNum);
			apply.setMarriage(marriage);
			apply.setAddress(address);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return apply;
	}

	@Override
	public Demand showUserDemend(int userid) {
		ResultSet rs=iAdminDao.showUserDemend(userid);
		Demand demand=new Demand();
		try {
			rs.next();


			int socialSecurity=rs.getInt("socialSecurity");
			int socialAssistance=rs.getInt("socialAssistance");
			int fosterService=rs.getInt("fosterService");
			int rehabilitation=rs.getInt("rehabilitation");
			int disabReconst=rs.getInt("disabReconst");
			int education=rs.getInt("education");
			int job=rs.getInt("job");
			int privation=rs.getInt("privation");
			int legalRight=rs.getInt("legalRight");
			int improlivCondition=rs.getInt("improlivCondition");
			demand.setUserid(userid);
			demand.setSocialSecurity(socialSecurity);
			demand.setSocialAssistance(socialAssistance);
			demand.setFosterService(fosterService);
			demand.setRehabilitation(rehabilitation);
			demand.setDisabReconst(disabReconst);
			demand.setEducation(education);
			demand.setJob(job);
			demand.setPrivation(privation);
			demand.setLegalRight(legalRight);
			demand.setImprolivCondition(improlivCondition);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return demand;
	}

	@Override
	public boolean deleteApply(int userid) {
		return iAdminDao.deleteApply(userid);
	}

	@Override
	public boolean passApply(int userid) {
		Demand demand = showUserDemend(userid);
		return iAdminDao.passApply(userid,demand);
	}

	
	@Override
	public boolean deletePlan(int userid) {
		return iAdminDao.deletePlan(userid);
	}

	@Override
	public boolean updatePlan(Plan plan) {
		return iAdminDao.updatePlan(plan);
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		return iAdminDao.updateAdmin(admin);
	}

	@Override
	public boolean deleteUser(int userid) {
		return iAdminDao.deleteUser(userid);
	}

	@Override
	public List<User> showAllUser() {
		ResultSet rs=iAdminDao.showAllUser();
		List<User> userList=new ArrayList<User>();
		try {
			while(rs.next())
			{
				//取数据库表中的每一行值
				int userid=rs.getInt("userid");
				String username=rs.getString("username");
				String userpwd=rs.getString("userpwd");
				//将每一行值放入javaBeaN中
				User user=new User();
				
				user.setUserid(userid);
				user.setUsername(username);
				user.setUserpwd(userpwd);
				//将获取的javaBean对象放入集合中
				userList.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	@Override
	public List<Measure> showMeasure() {
		ResultSet rs = iAdminDao.showMeasure();
		List<Measure> list = new ArrayList<>();
		try{
			while(rs.next()){
				Measure measure = new Measure();
				measure.setMeasureId(rs.getInt("measureId"));
				measure.setMeasureName(rs.getString("measureName"));
				measure.setCost(rs.getInt("cost"));
				measure.setNumber(rs.getInt("number"));
				list.add(measure);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Plan showPlan(int userid) {
		ResultSet rs = iAdminDao.showPlan(userid);
		Plan plan = new Plan();
		try {
			if(rs.next()){
				plan.setDisabReconst(rs.getInt("disabReconst"));
				plan.setEducation(rs.getInt("education"));
                plan.setFosterService(rs.getInt("fosterService"));
                plan.setImprolivCondition(rs.getInt("improlivCondition"));
                plan.setJob(rs.getInt("job"));
                plan.setLegalRight(rs.getInt("legalRight"));
                plan.setPlanid(rs.getInt("planid"));
                plan.setPrivation(rs.getInt("privation"));
                plan.setRehabilitation(rs.getInt("rehabilitation"));
                plan.setSocialAssistance(rs.getInt("socialAssistance"));
                plan.setSocialSecurity(rs.getInt("socialSecurity"));
				plan.setUserid(rs.getInt("userid"));
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return plan;
	}

	@Override
	public List<Apply> showPlanUser() {
		List<Apply> applyList = new ArrayList<>();
		ResultSet rs = iAdminDao.showPlanUser();
		try {
			while(rs.next()){
				Apply apply = new Apply();
				apply.setUserid(rs.getInt("userid"));
				apply.setName(rs.getString("name"));
				apply.setSex(rs.getString("sex"));
				apply.setDisability(rs.getString("disability"));
				apply.setPerIncome(rs.getInt("perIncome"));
				applyList.add(apply);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return applyList;
	}

    @Override
    public boolean adjustPlan(int userid, String item) {
        return iAdminDao.adjustPlan(userid, item);
    }

	@Override
	public Demand showMeasureNum() {
		Demand demand = new Demand();
		ResultSet rs = iAdminDao.showMeasureNum();
		try {
			if(rs.next()){
				demand.setSocialSecurity(rs.getInt("number"));
				rs.next();
				demand.setSocialAssistance(rs.getInt("number"));
				rs.next();
				demand.setFosterService(rs.getInt("number"));
				rs.next();
				demand.setRehabilitation(rs.getInt("number"));
				rs.next();
				demand.setDisabReconst(rs.getInt("number"));
				rs.next();
				demand.setEducation(rs.getInt("number"));
				rs.next();
				demand.setJob(rs.getInt("number"));
				rs.next();
				demand.setPrivation(rs.getInt("number"));
				rs.next();
				demand.setLegalRight(rs.getInt("number"));
				rs.next();
				demand.setImprolivCondition(rs.getInt("number"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return demand;
	}

	@Override
	public boolean adjustMeasureNum(String item) {
		return iAdminDao.adjustMeasureNum(item);
	}



	@Override
	public boolean addMeasureNum(int id) {
		return iAdminDao.addMeasureNum(id);
	}

	@Override
	public boolean cutMeasureNum(int id) {
		return iAdminDao.cutMeasureNum(id);
	}

	@Override
	public List<Place> distributeAnalyze() {
		ResultSet rs=iAdminDao.distributeAnalyze();
		List<Place> placeList=new ArrayList<Place>();
		try {
			while(rs.next())
			{
				String placeOfDemicile=rs.getString("placeOfDemicile");
				String poorNum=rs.getString("poorNum");
				String avgIncome=rs.getString("avgIncome");
				Place place=new Place();
				place.setPlaceOfDemicile(placeOfDemicile);
				place.setPoorNum(poorNum);
				place.setAvgIncome(avgIncome);
				placeList.add(place);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return placeList;
	}

	@Override
	public List<DemandAna> demandAnalyze() {
		ResultSet rs=iAdminDao.demandAnalyze();
		List<DemandAna> demandAnaList=new ArrayList<DemandAna>();
		try {
			while(rs.next())
			{
				int socialSecurity=rs.getInt("socialSecurity");
				int socialAssistance=rs.getInt("socialAssistance");
				int fosterService=rs.getInt("fosterService");
				int rehabilitation=rs.getInt("rehabilitation");
				int disabReconst=rs.getInt("disabReconst");
				int education=rs.getInt("education");
				int job=rs.getInt("job");
				int privation=rs.getInt("privation");
				int legalRight=rs.getInt("legalRight");
				int improlivCondition=rs.getInt("improlivCondition");
				DemandAna demandAna=new DemandAna();
				demandAna.setSocialSecurity(socialSecurity);
				demandAna.setSocialAssistance(socialAssistance);
				demandAna.setFosterService(fosterService);
				demandAna.setRehabilitation(rehabilitation);
				demandAna.setDisabReconst(disabReconst);
				demandAna.setEducation(education);
				demandAna.setJob(job);
				demandAna.setPrivation(privation);
				demandAna.setLegalRight(legalRight);
				demandAna.setImprolivCondition(improlivCondition);
				demandAnaList.add(demandAna);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return demandAnaList;
	}
}
