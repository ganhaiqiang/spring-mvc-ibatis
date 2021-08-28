package com.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.common.ApiResponse;
import com.demo.common.BusinessException;

@ControllerAdvice
public class CtrollerAdvice {
	private static final Logger LOGGER = LoggerFactory.getLogger(CtrollerAdvice.class);

	@ExceptionHandler(Exception.class)
	@ResponseBody
	public Object exception(Exception e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error("101", e.getMessage());
	}

	@ExceptionHandler(DataAccessException.class)
	@ResponseBody
	public Object sqlException(DataAccessException e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error("102", e.getMessage());
	}

	@ExceptionHandler(ArithmeticException.class)
	@ResponseBody
	public Object mySQLSyntaxErrorException(ArithmeticException e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error("103", e.getMessage());
	}

	@ExceptionHandler(BusinessException.class)
	@ResponseBody
	public Object businessException(BusinessException e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error(e.getCode(), e.getMessage());
	}
}
