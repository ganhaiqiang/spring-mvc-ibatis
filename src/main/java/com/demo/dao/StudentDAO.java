package com.demo.dao;

import com.demo.model.Student;
import com.demo.model.StudentExample;
import java.math.BigDecimal;
import java.util.List;

public interface StudentDAO {
    int countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(BigDecimal id);

    BigDecimal insert(Student record);

    BigDecimal insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(BigDecimal id);

    int updateByExampleSelective(Student record, StudentExample example);

    int updateByExample(Student record, StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}