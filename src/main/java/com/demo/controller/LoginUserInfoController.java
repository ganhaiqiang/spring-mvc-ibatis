package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.model.LoginUserInfoExample;
import com.demo.service.LoginUserInfoService;

@Controller
@RequestMapping("loginUserInfo")
public class LoginUserInfoController {

	@Autowired
	private LoginUserInfoService loginUserInfoService;

	@RequestMapping("getById")
	@ResponseBody
	public Object get() {
		LoginUserInfoExample example = new LoginUserInfoExample();
		example.setMysqlOffset(0);
		example.setMysqlLength(10);
		return loginUserInfoService.selectByExample(example);
	}
}