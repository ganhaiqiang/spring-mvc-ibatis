package com.demo.test;

import java.awt.Color;
import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadFontStyle;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import com.alibaba.excel.annotation.write.style.HeadStyle;

@ContentRowHeight(value = 15)
@HeadRowHeight(value = 20)
@ColumnWidth(value = 20)
public class User {
	@ExcelProperty(value = "编号")
	private Integer id;

	@ExcelProperty(value = "姓名")
	private String name;

	@ExcelProperty(value = { "个人信息", "性别" })
	private String sex;

	@ExcelProperty(value = { "个人信息", "年龄" })
	private Integer age;

	@ExcelProperty(value = { "个人信息", "生日" })
	private Date birthday;

	@ExcelProperty(value = "电话")
	private String phone;

	@ExcelProperty(value = "地址")
	private String address;

	public User() {
		super();
	}

	public User(Integer id, String name, String sex, Integer age, Date birthday, String phone, String address) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.birthday = birthday;
		this.phone = phone;
		this.address = address;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
