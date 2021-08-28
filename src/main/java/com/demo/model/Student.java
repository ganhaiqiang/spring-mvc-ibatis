package com.demo.model;

import java.io.Serializable;
import java.util.Date;

public class Student implements Serializable {
    private Integer id;

    /**
     * 姓名
     */
    private String name;

    /**
     * 性别
     */
    private String sex;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 家庭住址
     */
    private String address;

    private Date birthday;

    private String email;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

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
     * 设置   姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取 性别
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置   性别
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取 年龄
     */
    public Integer getAge() {
        return age;
    }

    /**
     * 设置   年龄
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
     * 设置   家庭住址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}