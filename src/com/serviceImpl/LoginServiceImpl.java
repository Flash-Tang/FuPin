package com.serviceImpl;

import com.dao.ILoginDao;
import com.daoImpl.LoginDaoImpl;
import com.service.ILoginService;

/**
 * Created by panxi on 2017/7/4.
 */
public class LoginServiceImpl implements ILoginService {
    ILoginDao iLoginDao = new LoginDaoImpl();
    public boolean isLogin(String username, String pwd) {
        System.out.println("do serviceimpl");
        return iLoginDao.isLogin(username, pwd);
    }

    @Override
    public boolean isRegister(String username, String pwd) {
        System.out.println("do serviceiml");
        return iLoginDao.isRegister(username, pwd);
    }
}
