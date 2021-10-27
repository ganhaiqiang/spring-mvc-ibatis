package com.demo.model;

import com.demo.common.SexEnum;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Student implements Serializable {
    private BigDecimal id;

    private String name;

    private SexEnum sex;

    private BigDecimal age;

    private String address;

    private Date birthday;

    private String email;

    private String tvIp;

    private static final long serialVersionUID = 1L;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public SexEnum getSex() {
        return sex;
    }

    public void setSex(SexEnum sex) {
        this.sex = sex;
    }

    public BigDecimal getAge() {
        return age;
    }

    public void setAge(BigDecimal age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

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

    public String getTvIp() {
        return tvIp;
    }

    public void setTvIp(String tvIp) {
        this.tvIp = tvIp;
    }
}