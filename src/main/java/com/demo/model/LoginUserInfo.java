package com.demo.model;

import java.io.Serializable;
import java.util.Date;

public class LoginUserInfo implements Serializable {
    /**
     * 用户id
     */
    private String userId;

    /**
     * 用户名
     */
    private String loginName;

    /**
     * 真实姓名
     */
    private String userName;

    /**
     * 登录密码
     */
    private String password;

    /**
     * 账号类型
     */
    private String accountType;

    /**
     * 创建时间
     */
    private Date creatDate;

    private static final long serialVersionUID = 1L;

    /**
     * 获取 用户id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 设置   用户id
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * 获取 用户名
     */
    public String getLoginName() {
        return loginName;
    }

    /**
     * 设置   用户名
     */
    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    /**
     * 获取 真实姓名
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 设置   真实姓名
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * 获取 登录密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置   登录密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取 账号类型
     */
    public String getAccountType() {
        return accountType;
    }

    /**
     * 设置   账号类型
     */
    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    /**
     * 获取 创建时间
     */
    public Date getCreatDate() {
        return creatDate;
    }

    /**
     * 设置   创建时间
     */
    public void setCreatDate(Date creatDate) {
        this.creatDate = creatDate;
    }
}