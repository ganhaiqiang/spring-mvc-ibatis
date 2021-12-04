package com.demo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.common.ApiResponse;
import com.demo.common.DownloadUtils;
import com.demo.common.PageInfo;
import com.demo.model.Student;
import com.demo.model.StudentExample;
import com.demo.model.StudentExample.Criteria;
import com.demo.service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController {
	private static final Logger LOGGER = LoggerFactory.getLogger(StudentController.class);

	@Autowired
	private StudentService studentService;

	@RequestMapping("down")
	@ResponseBody
	public ResponseEntity<byte[]> down(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setHeader("Set-Cookie", "fileDownload=true; path=/");
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.setContentDispositionFormData("attachment", DownloadUtils.processFileName(request, "spring-mvc-ibatis.rar"));
		try {
			Thread.sleep(5000);
			return new ResponseEntity<byte[]>(Files.readAllBytes(new File("E:/app.png").toPath()), headers, HttpStatus.OK);
		} catch (IOException e) {
			headers.clear();
			headers.setContentType(MediaType.TEXT_HTML);
			return new ResponseEntity<byte[]>("文件不存在！可能已被删除或移动。".getBytes("utf-8"), headers, HttpStatus.EXPECTATION_FAILED);
		}
	}

	@RequestMapping("list")
	@ResponseBody
	public Object getStudent(Integer limit, Integer offset, String sort, String sortOrder, Student student) {
		LOGGER.info("limit={},offset={},sort={},sortOder={}", limit, offset, sort, sortOrder);
		StudentExample example = new StudentExample();
		example.setLimit(limit);
		example.setOffset(offset);
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
			studentService.updateByPrimaryKeySelective(student);
		} else {
			studentService.insert(student);
		}
		return ApiResponse.ok();
	}

	@RequestMapping("findById")
	@ResponseBody
	public Object findById(Integer id) {
		Student student = studentService.selectByPrimaryKey(id);
		return ApiResponse.ok(student);
	}

	@RequestMapping("test")
	@ResponseBody
	public Object test(@RequestBody Student student) {
//		StudentExample example = new StudentExample();
//		example.createCriteria().andSexIn(Arrays.asList(SexEnum.FEMALE, SexEnum.MALE));
//		List<Student> list = studentService.selectByExample(example);
//		for (Student stu : list) {
//			stu.setAddress("<script>alert(111);</script>");
//		}
		return ApiResponse.ok(student);
	}
}
