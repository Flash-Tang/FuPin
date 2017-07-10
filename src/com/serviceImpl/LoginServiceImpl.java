package com.serviceImpl;

import com.dao.ILoginDao;
import com.daoImpl.LoginDaoImpl;
import com.service.ILoginService;

/**
 * Created by panxi on 2017/7/4.
 */
public class LoginServiceImpl implements ILoginService {
    ILoginDao iLoginDao = new LoginDaoImpl();
    public boolean isUserLogin(String username, String pwd) {
        System.out.println("do serviceimpl");
        return iLoginDao.isUserLogin(username, pwd);
    }

    @Override
    public boolean isUserRegister(String username, String pwd) {
        System.out.println("do serviceiml");
        return iLoginDao.isUserRegister(username, pwd);
    }

    public boolean isAdminLogin(String username, String pwd) {
        System.out.println("do serviceimpl");
        return iLoginDao.isAdminLogin(username, pwd);

    }

    @Override
    public boolean isAdminRegister(String username, String pwd) {
        System.out.println("do serviceiml");
        return iLoginDao.isAdminRegister(username, pwd);
    }
}
