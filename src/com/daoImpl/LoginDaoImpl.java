package com.daoImpl;

import com.dao.ILoginDao;
import com.util.DBUtil;

import java.sql.ResultSet;

/**
 * Created by panxi on 2017/7/4.
 */
public class LoginDaoImpl implements ILoginDao {
    DBUtil db = new DBUtil();
    public boolean isUserLogin(String username, String pwd){
        System.out.println("do daoImpl");
        String sql = "select * from account where account='"+username+"' and password='"+pwd+"'";
        try {
            ResultSet rs = db.queryData(sql);
            if(rs.next())
                return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean isUserRegister(String username, String pwd) {
        System.out.println("do daoImpl");
        String sql = "insert into account(account, password) values('"+username+"','"+pwd+"')";
        try {
            if(db.Update(sql))
                return true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean isAdminLogin(String username, String pwd) {
        System.out.println("do daoImpl");
        String sql = "select * from admin where username='" + username + "' and password='" + pwd + "'";
        try {
            ResultSet rs = db.queryData(sql);
            if (rs.next())
                return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean isAdminRegister(String username, String pwd) {
        System.out.println("do daoImpl");
        String sql = "insert into admin(username, password) values('"+username+"','"+pwd+"')";
        try {
            if(db.Update(sql))
                return true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
