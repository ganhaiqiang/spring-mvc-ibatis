package com.demo.dao;

import com.demo.model.LoginUserInfo;
import com.demo.model.LoginUserInfoExample;
import java.util.List;

public interface LoginUserInfoDAO {
    int countByExample(LoginUserInfoExample example);

    int deleteByExample(LoginUserInfoExample example);

    int deleteByPrimaryKey(String userId);

    void insert(LoginUserInfo record);

    void insertSelective(LoginUserInfo record);

    List<LoginUserInfo> selectByExample(LoginUserInfoExample example);

    LoginUserInfo selectByPrimaryKey(String userId);

    int updateByExampleSelective(LoginUserInfo record, LoginUserInfoExample example);

    int updateByExample(LoginUserInfo record, LoginUserInfoExample example);

    int updateByPrimaryKeySelective(LoginUserInfo record);

    int updateByPrimaryKey(LoginUserInfo record);
}