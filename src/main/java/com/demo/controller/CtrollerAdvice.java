//package com.demo.controller;
//
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.propertyeditors.CustomDateEditor;
//import org.springframework.beans.propertyeditors.StringTrimmerEditor;
//import org.springframework.core.MethodParameter;
//import org.springframework.dao.DataAccessException;
//import org.springframework.http.MediaType;
//import org.springframework.http.converter.HttpMessageConverter;
//import org.springframework.http.server.ServerHttpRequest;
//import org.springframework.http.server.ServerHttpResponse;
//import org.springframework.web.bind.ServletRequestDataBinder;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.InitBinder;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;
//
//import com.demo.common.ApiResponse;
//import com.demo.common.BusinessException;
//
//@ControllerAdvice
//public class CtrollerAdvice implements ResponseBodyAdvice<Object> {
//	private static final Logger LOGGER = LoggerFactory.getLogger(CtrollerAdvice.class);
//
//	@InitBinder
//	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) {
//		System.out.println("initBinder...");
//		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		simpleDateFormat.setLenient(false);
//		CustomDateEditor dateEditor = new CustomDateEditor(simpleDateFormat, true);
//		// 日期格式注册
//		binder.registerCustomEditor(Date.class, dateEditor);
//		// 字符串去空格
//		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
//	}
//
//	@ExceptionHandler(Exception.class)
//	@ResponseBody
//	public Object exception(Exception e) {
//		LOGGER.error(e.getMessage(), e);
//		return ApiResponse.error(101, e.getMessage());
//	}
//
//	/**
//	 * SQL错误不能用SQLException捕获，只能用DataAccessException
//	 * 
//	 * @param e
//	 * @return
//	 */
//	@ExceptionHandler(DataAccessException.class)
//	@ResponseBody
//	public Object sqlException(DataAccessException e) {
//		LOGGER.error(e.getMessage(), e);
//		return ApiResponse.error(102, e.getMessage());
//	}
//
//	@ExceptionHandler(ArithmeticException.class)
//	@ResponseBody
//	public Object mySQLSyntaxErrorException(ArithmeticException e) {
//		LOGGER.error(e.getMessage(), e);
//		return ApiResponse.error(103, e.getMessage());
//	}
//
//	@ExceptionHandler(BusinessException.class)
//	@ResponseBody
//	public Object businessException(BusinessException e) {
//		LOGGER.error(e.getMessage(), e);
//		return ApiResponse.error(e.getCode(), e.getMessage());
//	}
//
//	@Override
//	public boolean supports(MethodParameter returnType, Class<? extends HttpMessageConverter<?>> converterType) {
////		return AbstractJackson2HttpMessageConverter.class.isAssignableFrom(converterType) || returnType.getMethod().isAnnotationPresent(ResponseBody.class);
//		return true;
//	}
//
//	/**
//	 * 打印或控制输出参数（如字段权限控制、显示格式控制）
//	 */
//	@Override
//	public Object beforeBodyWrite(Object body, MethodParameter returnType, MediaType selectedContentType, Class<? extends HttpMessageConverter<?>> selectedConverterType, ServerHttpRequest request, ServerHttpResponse response) {
//		System.out.println(body.getClass().getName());
//		System.out.println("body=" + body);
//		return body;
//	}
//}
