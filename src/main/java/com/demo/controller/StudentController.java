package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.model.Student;
import com.demo.model.StudentExample;
import com.demo.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("getStudent")
	@ResponseBody
	public Object getStudent(Student student) {
		StudentExample example = new StudentExample();
		example.createCriteria().andIdEqualTo(student.getId());
		return studentService.selectByExample(example);
	}
}
