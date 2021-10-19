package com.demo.webservice;

import com.alibaba.fastjson.JSONObject;

public class HelloServiceImpl implements HelloService {

	@Override
	public String sayHello(String name) {
		JSONObject object = new JSONObject();
		object.put("name", name);
		return object.toJSONString();
	}

}
