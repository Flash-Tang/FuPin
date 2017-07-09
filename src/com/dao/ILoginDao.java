package com.dao;

/**
 * Created by panxi on 2017/7/4.
 */
public interface ILoginDao {
    public boolean isLogin(String username, String pwd);
    public boolean isRegister(String username, String pwd);
}
