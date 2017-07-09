package com.daoImpl;

import com.dao.ILoginDao;
import com.util.DBUtil;

import java.sql.ResultSet;

/**
 * Created by panxi on 2017/7/4.
 */
public class LoginDaoImpl implements ILoginDao {
    DBUtil db = new DBUtil();
    public boolean isLogin(String username, String pwd){
        System.out.println("do daoImpl");
        String sql = "select * from account where account='"+username+"' and password='"+pwd+"'";
        try {
            ResultSet rs = db.queryData(sql);
            if(rs.next())
            {
                return true;
            }
            else
                return false;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean isRegister(String username, String pwd) {
        System.out.println("do daoImpl");
        String sql = "insert into account(account, password) values('"+username+"','"+pwd+"')";
        try {
            if(db.Update(sql))
                return true;

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }
}
