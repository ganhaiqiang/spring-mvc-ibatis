package com.demo.model;

import java.io.Serializable;
import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;
import com.demo.common.SexEnum;
import com.demo.common.SexSerializer;

public class Student implements Serializable {
	/**
	 * 主键
	 */
	private Integer id;

	/**
	 * 姓名
	 */
	private String name;

	/**
	 * 性别
	 */
	@JSONField(serializeUsing = SexSerializer.class)
	private SexEnum sex;

	/**
	 * 年龄
	 */
	private Integer age;

	/**
	 * 家庭住址
	 */
	private String address;

	/**
	 * 生日
	 */
	private Date birthday;

	/**
	 * 邮箱
	 */
	private String email;

	private static final long serialVersionUID = 1L;

	/**
	 * 获取 主键
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * 设置 主键
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * 获取 姓名
	 */
	public String getName() {
		return name;
	}

	/**
	 * 设置 姓名
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 获取 性别
	 */
	public SexEnum getSex() {
		return sex;
	}

	/**
	 * 设置 性别
	 */
	public void setSex(SexEnum sex) {
		this.sex = sex;
	}

	/**
	 * 获取 年龄
	 */
	public Integer getAge() {
		return age;
	}

	/**
	 * 设置 年龄
	 */
	public void setAge(Integer age) {
		this.age = age;
	}

	/**
	 * 获取 家庭住址
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * 设置 家庭住址
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * 获取 生日
	 */
	public Date getBirthday() {
		return birthday;
	}

	/**
	 * 设置 生日
	 */
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	/**
	 * 获取 邮箱
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 设置 邮箱
	 */
	public void setEmail(String email) {
		this.email = email;
	}
}