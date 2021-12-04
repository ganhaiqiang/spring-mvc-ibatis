package com.demo.dao;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.demo.model.Student;
import com.demo.model.StudentExample;

@Repository
public class StudentDAOImpl extends SqlMapClientDaoSupport implements StudentDAO {

    public StudentDAOImpl() {
        super();
    }

    public int countByExample(StudentExample example) {
        Integer count = (Integer)  getSqlMapClientTemplate().queryForObject("student.countByExample", example);
        return count;
    }

    public int deleteByExample(StudentExample example) {
        int rows = getSqlMapClientTemplate().delete("student.deleteByExample", example);
        return rows;
    }

    public int deleteByPrimaryKey(Integer id) {
        Student student = new Student();
        student.setId(id);
        int rows = getSqlMapClientTemplate().delete("student.deleteByPrimaryKey", student);
        return rows;
    }

    public Integer insert(Student record) {
        Object newKey = getSqlMapClientTemplate().insert("student.insert", record);
        return (Integer) newKey;
    }

    public Integer insertSelective(Student record) {
        Object newKey = getSqlMapClientTemplate().insert("student.insertSelective", record);
        return (Integer) newKey;
    }

    @SuppressWarnings("unchecked")
    public List<Student> selectByExample(StudentExample example) {
        List<Student> list = getSqlMapClientTemplate().queryForList("student.selectByExample", example);
        return list;
    }

    public Student selectByPrimaryKey(Integer id) {
        Student student = new Student();
        student.setId(id);
        Student record = (Student) getSqlMapClientTemplate().queryForObject("student.selectByPrimaryKey", student);
        return record;
    }

    public int updateByExampleSelective(Student record, StudentExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("student.updateByExampleSelective", parms);
        return rows;
    }

    public int updateByExample(Student record, StudentExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("student.updateByExample", parms);
        return rows;
    }

    public int updateByPrimaryKeySelective(Student record) {
        int rows = getSqlMapClientTemplate().update("student.updateByPrimaryKeySelective", record);
        return rows;
    }

    public int updateByPrimaryKey(Student record) {
        int rows = getSqlMapClientTemplate().update("student.updateByPrimaryKey", record);
        return rows;
    }

    protected static class UpdateByExampleParms extends StudentExample {
        private Object record;

        public UpdateByExampleParms(Object record, StudentExample example) {
            super(example);
            this.record = record;
        }

        public Object getRecord() {
            return record;
        }
    }
}