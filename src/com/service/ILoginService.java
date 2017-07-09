package com.service;

/**
 * Created by panxi on 2017/7/4.
 */
public interface ILoginService {
    public boolean isLogin(String username, String pwd);
    public boolean isRegister(String username, String pwd);
}
