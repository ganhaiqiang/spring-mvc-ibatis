package com.demo.dao;

import com.demo.model.Student;
import com.demo.model.StudentExample;
import java.math.BigDecimal;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAOImpl extends SqlMapClientDaoSupport implements StudentDAO {

    public StudentDAOImpl() {
        super();
    }

    public int countByExample(StudentExample example) {
        Integer count = (Integer)  getSqlMapClientTemplate().queryForObject("STUDENT.countByExample", example);
        return count;
    }

    public int deleteByExample(StudentExample example) {
        int rows = getSqlMapClientTemplate().delete("STUDENT.deleteByExample", example);
        return rows;
    }

    public int deleteByPrimaryKey(BigDecimal id) {
        Student student = new Student();
        student.setId(id);
        int rows = getSqlMapClientTemplate().delete("STUDENT.deleteByPrimaryKey", student);
        return rows;
    }

    public BigDecimal insert(Student record) {
        Object newKey = getSqlMapClientTemplate().insert("STUDENT.insert", record);
        return (BigDecimal) newKey;
    }

    public BigDecimal insertSelective(Student record) {
        Object newKey = getSqlMapClientTemplate().insert("STUDENT.insertSelective", record);
        return (BigDecimal) newKey;
    }

    @SuppressWarnings("unchecked")
    public List<Student> selectByExample(StudentExample example) {
        List<Student> list = getSqlMapClientTemplate().queryForList("STUDENT.selectByExample", example);
        return list;
    }

    public Student selectByPrimaryKey(BigDecimal id) {
        Student student = new Student();
        student.setId(id);
        Student record = (Student) getSqlMapClientTemplate().queryForObject("STUDENT.selectByPrimaryKey", student);
        return record;
    }

    public int updateByExampleSelective(Student record, StudentExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("STUDENT.updateByExampleSelective", parms);
        return rows;
    }

    public int updateByExample(Student record, StudentExample example) {
        UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
        int rows = getSqlMapClientTemplate().update("STUDENT.updateByExample", parms);
        return rows;
    }

    public int updateByPrimaryKeySelective(Student record) {
        int rows = getSqlMapClientTemplate().update("STUDENT.updateByPrimaryKeySelective", record);
        return rows;
    }

    public int updateByPrimaryKey(Student record) {
        int rows = getSqlMapClientTemplate().update("STUDENT.updateByPrimaryKey", record);
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