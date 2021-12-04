package com.demo;

import java.util.Date;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.demo.common.SexEnum;
import com.demo.model.Student;

public class Test {
	public static void main(String[] args) {
		Student student = new Student();
		student.setAddress("111");
		student.setAge(24);
		student.setBirthday(new Date());
		student.setEmail("222");
		student.setId(55555);
		student.setName("小白");
		student.setSex(SexEnum.MALE);

		String jsonString = JSON.toJSONString(student, SerializerFeature.PrettyFormat);
		System.out.println(jsonString);

		Student student2 = JSON.parseObject(jsonString, Student.class);
		System.out.println(JSON.toJSONString(student2, true));
	}
}
