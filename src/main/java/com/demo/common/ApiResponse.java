package com.demo.common;

import java.util.Map;

import com.alibaba.fastjson.JSONObject;

public class ApiResponse extends JSONObject {
	private static final long serialVersionUID = 1L;

	public ApiResponse() {
		put("code", 0);
	}

	public static ApiResponse error() {
		return error(500, "未知异常，请联系管理员");
	}

	public static ApiResponse error(String msg) {
		return error(500, msg);
	}

	public static ApiResponse error(int code, String msg) {
		ApiResponse response = new ApiResponse();
		response.put("code", code);
		response.put("message", msg);
		return response;
	}

	public static ApiResponse ok(Object data) {
		ApiResponse response = new ApiResponse();
		response.put("data", data);
		return response;
	}

	public static ApiResponse put(Map<String, Object> map) {
		ApiResponse response = new ApiResponse();
		response.putAll(map);
		return response;
	}

	public static ApiResponse ok() {
		return new ApiResponse();
	}

	@Override
	public ApiResponse put(String key, Object value) {
		super.put(key, value);
		return this;
	}
}
