package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.LoginUserInfoDAO;
import com.demo.model.LoginUserInfo;
import com.demo.model.LoginUserInfoExample;

@Service
public class LoginUserInfoServiceImpl implements LoginUserInfoService {
	@Autowired
	private LoginUserInfoDAO loginUserInfoDAO;

	public LoginUserInfoServiceImpl() {
		super();
	}

	public int countByExample(LoginUserInfoExample example) {
		return loginUserInfoDAO.countByExample(example);
	}

	public int deleteByExample(LoginUserInfoExample example) {
		return loginUserInfoDAO.deleteByExample(example);
	}

	public int deleteByPrimaryKey(String userId) {
		return loginUserInfoDAO.deleteByPrimaryKey(userId);
	}

	public void insert(LoginUserInfo record) {
		loginUserInfoDAO.insert(record);
	}

	public void insertSelective(LoginUserInfo record) {
		loginUserInfoDAO.insertSelective(record);
	}

	@SuppressWarnings("unchecked")
	public List<LoginUserInfo> selectByExample(LoginUserInfoExample example) {
		return loginUserInfoDAO.selectByExample(example);
	}

	public LoginUserInfo selectByPrimaryKey(String userId) {
		return loginUserInfoDAO.selectByPrimaryKey(userId);
	}

	public int updateByExampleSelective(LoginUserInfo record, LoginUserInfoExample example) {
		return loginUserInfoDAO.updateByExampleSelective(record, example);
	}

	public int updateByExample(LoginUserInfo record, LoginUserInfoExample example) {
		return loginUserInfoDAO.updateByExample(record, example);
	}

	public int updateByPrimaryKeySelective(LoginUserInfo record) {
		return loginUserInfoDAO.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(LoginUserInfo record) {
		return loginUserInfoDAO.updateByPrimaryKey(record);
	}
}