package com.demo.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;

public class HttpServletRequestApiFilter implements Filter {
	private static final Logger LOGGER = LoggerFactory.getLogger(ApiHttpServletRequestWrapper.class);

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		ServletRequest requestWrapper = null;
		if (request instanceof HttpServletRequest) {
			HttpServletRequest httpServletRequest = (HttpServletRequest) request;
			if ("POST".equals(httpServletRequest.getMethod().toUpperCase())) {
				requestWrapper = new ApiHttpServletRequestWrapper((HttpServletRequest) request);

				String contentType = httpServletRequest.getContentType().toLowerCase();
				if ("application/json".startsWith(contentType)) {
					LOGGER.info("\n********************RequestBody************************\n{}", IOUtils.toString(requestWrapper.getInputStream(), "UTF-8"));
				} else {
					LOGGER.info("\n***************ParamsMap****************\n{}", JSON.toJSONString(requestWrapper.getParameterMap(), true));
				}

			}

			String queryString = httpServletRequest.getQueryString();
			if (StringUtils.isNotBlank(queryString)) {
				LOGGER.info("\n***************QueryString****************\n{}\n", httpServletRequest.getQueryString());
			}

		}

		if (requestWrapper == null) {
			chain.doFilter(request, response);
		} else {
			chain.doFilter(requestWrapper, response); // 替换
		}
	}

	@Override
	public void destroy() {

	}

}
