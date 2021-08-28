package com.demo.common;

import com.alibaba.fastjson.JSONObject;

public class ApiResponse extends JSONObject {
	private static final long serialVersionUID = 1L;

	private ApiResponse() {
	}

	public static ApiResponse ok() {
		ApiResponse response = new ApiResponse();
		response.put("code", "0");
		response.put("message", "ok");
		return response;
	}

	public static ApiResponse ok(Object data) {
		ApiResponse response = new ApiResponse();
		response.put("code", "0");
		response.put("message", "ok");
		response.put("data", data);
		return response;
	}

	public static ApiResponse error(String code, String message) {
		ApiResponse response = new ApiResponse();
		response.put("code", code);
		response.put("message", message);
		return response;
	}
}
