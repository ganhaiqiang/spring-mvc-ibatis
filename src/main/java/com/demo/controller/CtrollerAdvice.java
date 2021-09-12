package com.demo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.common.ApiResponse;
import com.demo.common.BusinessException;

@ControllerAdvice
public class CtrollerAdvice {
	private static final Logger LOGGER = LoggerFactory.getLogger(CtrollerAdvice.class);

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		simpleDateFormat.setLenient(false);
		CustomDateEditor dateEditor = new CustomDateEditor(simpleDateFormat, true);
		binder.registerCustomEditor(Date.class, dateEditor);
	}

	@ExceptionHandler(Exception.class)
	@ResponseBody
	public Object exception(Exception e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error(101, e.getMessage());
	}

	@ExceptionHandler(DataAccessException.class)
	@ResponseBody
	public Object sqlException(DataAccessException e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error(102, e.getMessage());
	}

	@ExceptionHandler(ArithmeticException.class)
	@ResponseBody
	public Object mySQLSyntaxErrorException(ArithmeticException e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error(103, e.getMessage());
	}

	@ExceptionHandler(BusinessException.class)
	@ResponseBody
	public Object businessException(BusinessException e) {
		LOGGER.error(e.getMessage(), e);
		return ApiResponse.error(e.getCode(), e.getMessage());
	}
}
