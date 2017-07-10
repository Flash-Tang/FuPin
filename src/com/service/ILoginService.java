package com.service;

/**
 * Created by panxi on 2017/7/4.
 */
public interface ILoginService {
    public boolean isUserLogin(String username, String pwd);
    public boolean isUserRegister(String username, String pwd);
    public boolean isAdminLogin(String username, String pwd);
    public boolean isAdminRegister(String username, String pwd);
}
