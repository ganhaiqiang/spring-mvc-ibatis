//package com.demo.common;
//
//import java.lang.reflect.Method;
//import java.lang.reflect.Type;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.context.annotation.Profile;
//import org.springframework.core.MethodParameter;
//import org.springframework.http.HttpInputMessage;
//import org.springframework.http.converter.HttpMessageConverter;
//import org.springframework.http.converter.StringHttpMessageConverter;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.servlet.mvc.method.annotation.RequestBodyAdviceAdapter;
//
//import com.alibaba.fastjson.JSON;
//import com.alibaba.fastjson.serializer.SerializerFeature;
//
//@ControllerAdvice
//@Profile(value = "dev")
//public class CustomerRequestBodyAdvisor extends RequestBodyAdviceAdapter {
//	private static final Logger logger = LoggerFactory.getLogger(CustomerRequestBodyAdvisor.class);
//
//	@Override
//	public boolean supports(MethodParameter methodParameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
//		// 只处理@RequestBody注解了的参数
//		return methodParameter.getParameterAnnotation(RequestBody.class) != null;
//	}
//
//	@Override
//	public Object afterBodyRead(Object body, HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
//		Method method = parameter.getMethod();
//
//		// 参数对象转JSON字符串
//		String jsonBody;
//		if (StringHttpMessageConverter.class.isAssignableFrom(converterType)) {
//			jsonBody = body.toString();
//		} else {
//			jsonBody = JSON.toJSONString(body, SerializerFeature.UseSingleQuotes);
//		}
//
//		logger.info("{}#{}: {}", parameter.getContainingClass().getSimpleName(), method.getName(), jsonBody);
//		return super.afterBodyRead(body, inputMessage, parameter, targetType, converterType);
//	}
//}
