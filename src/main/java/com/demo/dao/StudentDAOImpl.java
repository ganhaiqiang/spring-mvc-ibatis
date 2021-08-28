package com.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.demo.model.Student;
import com.demo.model.StudentExample;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	public int countByExample(StudentExample example) {
		Integer count = (Integer) sqlMapClientTemplate.queryForObject("student.countByExample", example);
		return count;
	}

	public int deleteByExample(StudentExample example) {
		int rows = sqlMapClientTemplate.delete("student.deleteByExample", example);
		return rows;
	}

	public int deleteByPrimaryKey(Integer id) {
		Student _key = new Student();
		_key.setId(id);
		int rows = sqlMapClientTemplate.delete("student.deleteByPrimaryKey", _key);
		return rows;
	}

	public void insert(Student record) {
		sqlMapClientTemplate.insert("student.insert", record);
	}

	public void insertSelective(Student record) {
		sqlMapClientTemplate.insert("student.insertSelective", record);
	}

	@SuppressWarnings("unchecked")
	public List<Student> selectByExample(StudentExample example) {
		List<Student> list = sqlMapClientTemplate.queryForList("student.selectByExample", example);
		return list;
	}

	public Student selectByPrimaryKey(Integer id) {
		Student _key = new Student();
		_key.setId(id);
		Student record = (Student) sqlMapClientTemplate.queryForObject("student.selectByPrimaryKey", _key);
		return record;
	}

	public int updateByExampleSelective(Student record, StudentExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = sqlMapClientTemplate.update("student.updateByExampleSelective", parms);
		return rows;
	}

	public int updateByExample(Student record, StudentExample example) {
		UpdateByExampleParms parms = new UpdateByExampleParms(record, example);
		int rows = sqlMapClientTemplate.update("student.updateByExample", parms);
		return rows;
	}

	public int updateByPrimaryKeySelective(Student record) {
		int rows = sqlMapClientTemplate.update("student.updateByPrimaryKeySelective", record);
		return rows;
	}

	public int updateByPrimaryKey(Student record) {
		int rows = sqlMapClientTemplate.update("student.updateByPrimaryKey", record);
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