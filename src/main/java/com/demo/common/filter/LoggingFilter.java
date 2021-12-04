package com.demo.common.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.filter.OncePerRequestFilter;

import com.alibaba.fastjson.JSON;

public class LoggingFilter extends OncePerRequestFilter {
	private static final Logger LOGGER = LoggerFactory.getLogger(LoggingFilter.class);

	private static final String REQUEST_PREFIX_NAME = "Request请求: ";
	private static final String RESPONSE_PREFIX_NAME = "Response响应: ";

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
		request = new ApiHttpServletRequestWrapper((HttpServletRequest) request);
		response = new ResponseWrapper(response);
		filterChain.doFilter(request, response);
		printRequestLog(request);
		printResponseLog((ResponseWrapper) response);
	}

	private void printRequestLog(final HttpServletRequest request) throws IOException {
		StringBuilder msg = new StringBuilder();
		msg.append(REQUEST_PREFIX_NAME);
		HttpSession session = request.getSession(false);
		if (session != null) {
			msg.append("sessionId = ").append(session.getId()).append("; ");
		}
		if (request.getMethod() != null) {
			msg.append("method = ").append(request.getMethod()).append("; ");
		}
		if (request.getContentType() != null) {
			msg.append("contentType = ").append(request.getContentType()).append("; ");
		}
		msg.append("uri = ").append(request.getRequestURI());
		if (request.getQueryString() != null) {
			msg.append('?').append(request.getQueryString());
		}

		if (request instanceof ApiHttpServletRequestWrapper && !isMultipart(request) && !isBinaryContent(request)) {
			ApiHttpServletRequestWrapper requestWrapper = (ApiHttpServletRequestWrapper) request;
			msg.append("; payload = ");
			if (request.getContentType() != null) {
				if ("application/json".startsWith(request.getContentType().toLowerCase())) {
					msg.append(IOUtils.toString(requestWrapper.getInputStream(), "UTF-8"));
				} else {
					msg.append(JSON.toJSONString(requestWrapper.getParameterMap(), true));
				}
			}
		}
		LOGGER.info(msg.toString());
	}

	private boolean isBinaryContent(final HttpServletRequest request) {
		if (request.getContentType() == null) {
			return false;
		}
		return request.getContentType().startsWith("image") || request.getContentType().startsWith("video") || request.getContentType().startsWith("audio");
	}

	private boolean isMultipart(final HttpServletRequest request) {
		return request.getContentType() != null && request.getContentType().startsWith("multipart/form-data");
	}

	private void printResponseLog(final ResponseWrapper response) {
		StringBuilder msg = new StringBuilder();
		msg.append(RESPONSE_PREFIX_NAME);
		try {
			msg.append("; payload = ").append(new String(response.toByteArray(), response.getCharacterEncoding()));
		} catch (UnsupportedEncodingException e) {
			LOGGER.warn("Failed to parse response payload", e);
		}
		LOGGER.info(msg.toString());
	}

}
