package com.demo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.demo.common.SexEnum;
import com.demo.model.Student;

public class Test {
	public static void main(String[] args) {
		Student student=new Student();
		student.setAddress("111");
		student.setAge(new BigDecimal(24));
		student.setBirthday(new Date());
		student.setEmail("222");
		student.setId(new BigDecimal(55555));
		student.setName("小白");
		student.setSex(SexEnum.M);
		System.out.println(JSON.toJSONString(student, SerializerFeature.PrettyFormat,SerializerFeature.WriteEnumUsingToString));
	}
}
