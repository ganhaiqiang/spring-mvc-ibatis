package com.demo.dao;

import com.demo.model.LoginUserInfo;
import com.demo.model.LoginUserInfoExample;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class LoginUserInfoDAOImpl implements LoginUserInfoDAO {
    @Autowired
    private SqlMapClientTemplate sqlMapClientTemplate;

    public LoginUserInfoDAOImpl() {
        super();
    }

    public int countByExample(LoginUserInfoExample example) {
        Integer count = (Integer)  sqlMapClientTemplate.queryForObject("login_user_info.countByExample", example);
        return count;
    }

    public int deleteByExample(LoginUserInfoExample example) {
        int rows = sqlMapClientTemplate.delete("login_user_info.deleteByExample", example);
        return rows;
    }

    public int deleteByPrimaryKey(String userId) {
        LoginUserInfo loginUserInfo = new LoginUserInfo();
        loginUserInfo.setUserId(userId);
        int rows = sqlMapClientTemplate.delete("login_user_info.deleteByPrimaryKey", loginUserInfo);
        return rows;
    }

    public void insert(LoginUserInfo record) {
        sqlMapClientTemplate.insert("login_user_info.insert", record);
    }

    public void insertSelective(LoginUserInfo record) {
        sqlMapClientTemplate.insert("login_user_info.insertSelective", record);
    }

    @SuppressWarnings("unchecked")
    public List<LoginUserInfo> selectByExample(LoginUserInfoExample example) {
        List<LoginUserInfo> list = sqlMapClientTemplate.queryForList("login_user_info.selectByExample", example);
        return list;
    }

    public LoginUserInfo selectByPrimaryKey(String userId) {
        LoginUserInfo loginUserInfo = new LoginUserInfo();
        loginUserInfo.setUserId(userId);
        LoginUserInfo record = (LoginUserInfo) sqlMapClientTemplate.queryForObject("login_user_info.selectByPrimaryKey", loginUserInfo);
        return record;
    }

    public int updateByExampleSelective(LoginUserInfo record, LoginUserInfoExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = sqlMapClientTemplate.update("login_user_info.updateByExampleSelective", parms);
        return rows;
    }

    public int updateByExample(LoginUserInfo record, LoginUserInfoExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = sqlMapClientTemplate.update("login_user_info.updateByExample", parms);
        return rows;
    }

    public int updateByPrimaryKeySelective(LoginUserInfo record) {
        int rows = sqlMapClientTemplate.update("login_user_info.updateByPrimaryKeySelective", record);
        return rows;
    }

    public int updateByPrimaryKey(LoginUserInfo record) {
        int rows = sqlMapClientTemplate.update("login_user_info.updateByPrimaryKey", record);
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