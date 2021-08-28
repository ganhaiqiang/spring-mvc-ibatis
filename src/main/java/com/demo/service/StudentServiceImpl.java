package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.StudentDAO;
import com.demo.model.Student;
import com.demo.model.StudentExample;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;

	@Override
	public int countByExample(StudentExample example) {
		return studentDAO.countByExample(example);
	}

	@Override
	public int deleteByExample(StudentExample example) {
		return studentDAO.deleteByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return studentDAO.deleteByPrimaryKey(id);
	}

	@Override
	public void insert(Student record) {
		studentDAO.insert(record);
	}

	@Override
	public void insertSelective(Student record) {
		studentDAO.insertSelective(record);
	}

	@Override
	public List<Student> selectByExample(StudentExample example) {
		return studentDAO.selectByExample(example);
	}

	@Override
	public Student selectByPrimaryKey(Integer id) {
		return studentDAO.selectByPrimaryKey(id);
	}

	@Override
	public int updateByExampleSelective(Student record, StudentExample example) {
		return studentDAO.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(Student record, StudentExample example) {
		return studentDAO.updateByExample(record, example);
	}

	@Override
	public int updateByPrimaryKeySelective(Student record) {
		return studentDAO.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Student record) {
		return studentDAO.updateByPrimaryKey(record);
	}
}
