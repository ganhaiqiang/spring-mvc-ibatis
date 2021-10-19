package com.demo.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.common.ApiResponse;
import com.demo.common.PageInfo;
import com.demo.model.Student;
import com.demo.model.StudentExample;
import com.demo.model.StudentExample.Criteria;
import com.demo.service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("test")
	@ResponseBody
	public Object test() {
		List<BigDecimal> values = new ArrayList<BigDecimal>();
		for (int i = 0; i < 1001; i++) {
			values.add(new BigDecimal(i));
		}
		StudentExample example = new StudentExample();
		example.createCriteria().andIdIn(values);
		return studentService.selectByExample(example);
	}

	@RequestMapping("list")
	@ResponseBody
	public Object getStudent(Integer limit, Integer offset, String sort, String sortOrder, Student student) {
		StudentExample example = new StudentExample();
		example.setFirstResult(offset);
		example.setLastResult(offset + limit);
		if (StringUtils.isNotBlank(sort) && StringUtils.isNotBlank(sortOrder)) {
			example.setOrderByClause(sort + " " + sortOrder);
		}
		Criteria criteria = example.createCriteria();
		if (StringUtils.isNotBlank(student.getName())) {
			criteria.andNameLike(student.getName() + "%");
		}
		if (StringUtils.isNotBlank(student.getAddress())) {
			criteria.andAddressLike("%" + student.getAddress() + "%");
		}
		if (StringUtils.isNotBlank(student.getEmail())) {
			criteria.andEmailLike("%" + student.getEmail() + "%");
		}
		if (student.getSex() != null) {
			criteria.andSexEqualTo(student.getSex());
		}
		if (student.getAge() != null) {
			criteria.andAgeEqualTo(student.getAge());
		}
		if (student.getBirthday() != null) {
			criteria.andBirthdayEqualTo(student.getBirthday());
		}
		PageInfo<Student> pageInfo = studentService.selectPageByExample(example);
		return ApiResponse.ok(pageInfo);
	}

	@RequestMapping("save")
	@ResponseBody
	public Object accept(Student student) {
		if (student.getId() != null) {
			studentService.updateByPrimaryKey(student);
		} else {
			studentService.insert(student);
		}
		return ApiResponse.ok();
	}

	@RequestMapping("findById")
	@ResponseBody
	public Object findById(BigDecimal id) {
		Student student = studentService.selectByPrimaryKey(id);
		return ApiResponse.ok(student);
	}

	@RequestMapping("delete")
	@ResponseBody
	public Object delete(String ids) {
		if (StringUtils.isNotBlank(ids)) {
			for (String id : ids.split(",")) {
				studentService.deleteByPrimaryKey(new BigDecimal(id));
			}
		}
		return ApiResponse.ok();
	}
}
