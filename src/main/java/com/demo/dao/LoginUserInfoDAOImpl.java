package com.demo.dao;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.demo.model.LoginUserInfo;
import com.demo.model.LoginUserInfoExample;

@Repository
public class LoginUserInfoDAOImpl extends SqlMapClientDaoSupport implements LoginUserInfoDAO {

	public LoginUserInfoDAOImpl() {
		super();
	}

	public int countByExample(LoginUserInfoExample example) {
		Integer count = (Integer) getSqlMapClientTemplate().queryForObject("login_user_info.countByExample", example);
		return count;
	}

	public int deleteByExample(LoginUserInfoExample example) {
		int rows = getSqlMapClientTemplate().delete("login_user_info.deleteByExample", example);
		return rows;
	}

	public int deleteByPrimaryKey(String userId) {
		LoginUserInfo loginUserInfo = new LoginUserInfo();
		loginUserInfo.setUserId(userId);
		int rows = getSqlMapClientTemplate().delete("login_user_info.deleteByPrimaryKey", loginUserInfo);
		return rows;
	}

	public void insert(LoginUserInfo record) {
		getSqlMapClientTemplate().insert("login_user_info.insert", record);
	}

	public void insertSelective(LoginUserInfo record) {
		getSqlMapClientTemplate().insert("login_user_info.insertSelective", record);
	}

	@SuppressWarnings("unchecked")
	public List<LoginUserInfo> selectByExample(LoginUserInfoExample example) {
		List<LoginUserInfo> list = getSqlMapClientTemplate().queryForList("login_user_info.selectByExample", example);
		return list;
	}

	public LoginUserInfo selectByPrimaryKey(String userId) {
		LoginUserInfo loginUserInfo = new LoginUserInfo();
		loginUserInfo.setUserId(userId);
		LoginUserInfo record = (LoginUserInfo) getSqlMapClientTemplate().queryForObject("login_user_info.selectByPrimaryKey", loginUserInfo);
		return record;
	}

	public int updateByExampleSelective(LoginUserInfo record, LoginUserInfoExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update("login_user_info.updateByExampleSelective", parms);
		return rows;
	}

	public int updateByExample(LoginUserInfo record, LoginUserInfoExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = getSqlMapClientTemplate().update("login_user_info.updateByExample", parms);
		return rows;
	}

	public int updateByPrimaryKeySelective(LoginUserInfo record) {
		int rows = getSqlMapClientTemplate().update("login_user_info.updateByPrimaryKeySelective", record);
		return rows;
	}

	public int updateByPrimaryKey(LoginUserInfo record) {
		int rows = getSqlMapClientTemplate().update("login_user_info.updateByPrimaryKey", record);
		return rows;
	}

	protected static class UpdateByExampleParms extends LoginUserInfoExample {
		private Object record;

		public UpdateByExampleParms(Object record, LoginUserInfoExample example) {
			super(example);
			this.record = record;
		}

		public Object getRecord() {
			return record;
		}
	}
}