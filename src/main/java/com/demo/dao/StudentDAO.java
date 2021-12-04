package com.demo.dao;

import com.demo.model.Student;
import com.demo.model.StudentExample;
import java.util.List;

public interface StudentDAO {
    int countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(Integer id);

    Integer insert(Student record);

    Integer insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(Integer id);

    int updateByExampleSelective(Student record, StudentExample example);

    int updateByExample(Student record, StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}