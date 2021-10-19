package com.demo.service;

import java.util.List;
import java.math.BigDecimal;

import com.demo.common.PageInfo;
import com.demo.model.Student;
import com.demo.model.StudentExample;

/**
 * 通用 Service 代码生成器
 *
 * @author mapper-generator
 */
public interface StudentService {
	
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

	PageInfo<Student> selectPageByExample(StudentExample example);
}




