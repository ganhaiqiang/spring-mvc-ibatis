package com.demo.common.filter;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ApiHttpServletRequestWrapper extends HttpServletRequestWrapper {
	private static final Logger LOGGER = LoggerFactory.getLogger(ApiHttpServletRequestWrapper.class);
	private Map<String, String[]> paramsMap;

	@Override
	public Map<String, String[]> getParameterMap() {
		return paramsMap;
	}

	@Override
	public String getParameter(String name) {
		String[] values = paramsMap.get(name);
		if (values == null || values.length == 0) {
			return null;
		}
		return values[0];
	}

	@Override
	public String[] getParameterValues(String name) {
		return paramsMap.get(name);
	}

	@Override
	public Enumeration<String> getParameterNames() {
		return Collections.enumeration(paramsMap.keySet());
	}

	private String getRequestBody(InputStream stream) {
		String line = "";
		StringBuilder body = new StringBuilder();
		int counter = 0;

		BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
		try {
			while ((line = reader.readLine()) != null) {
				if (counter > 0) {
					body.append("\r\n");
				}
				body.append(line);
				counter++;
			}
		} catch (IOException e) {
			LOGGER.error(e.getMessage(), e);
		}

		return body.toString();
	}

	private HashMap<String, String[]> getParamMapFromPost(HttpServletRequest request) {

		String body = "";
		try {
			body = getRequestBody(request.getInputStream());
		} catch (IOException e) {
			LOGGER.error(e.getMessage(), e);
		}
		HashMap<String, String[]> result = new HashMap<String, String[]>();

		if (null == body || 0 == body.length()) {
			return result;
		}

		return parseQueryString(body);
	}

	// 自定义解码函数
	private String decodeValue(String value) {
		if (value.contains("%u")) {
			return decode(value);
		} else {
			try {
				return URLDecoder.decode(value, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				LOGGER.error(e.getMessage(), e);
				return "";// 非UTF-8编码
			}
		}
	}

	/**
	 * Unicode解码
	 * 
	 * @param src
	 * @return
	 */
	private String decode(String src) {
		int t = src.length() / 6;
		StringBuilder str = new StringBuilder();
		for (int i = 0; i < t; i++) {
			String s = src.substring(i * 6, (i + 1) * 6);
			String s1 = s.substring(2, 4) + "00";
			String s2 = s.substring(4);
			int n = Integer.valueOf(s1, 16) + Integer.valueOf(s2, 16);
			char[] chars = Character.toChars(n);
			str.append(new String(chars));
		}
		return str.toString();
	}

	public HashMap<String, String[]> parseQueryString(String s) {
		String valArray[] = null;
		if (s == null) {
			throw new IllegalArgumentException();
		}
		HashMap<String, String[]> ht = new HashMap<String, String[]>();
		StringTokenizer st = new StringTokenizer(s, "&");
		while (st.hasMoreTokens()) {
			String pair = (String) st.nextToken();
			int pos = pair.indexOf('=');
			if (pos == -1) {
				continue;
			}
			String key = pair.substring(0, pos);
			String val = pair.substring(pos + 1, pair.length());
			if (ht.containsKey(key)) {
				String oldVals[] = (String[]) ht.get(key);
				valArray = new String[oldVals.length + 1];
				for (int i = 0; i < oldVals.length; i++) {
					valArray[i] = oldVals[i];
				}
				valArray[oldVals.length] = decodeValue(val);
			} else {
				valArray = new String[1];
				valArray[0] = decodeValue(val);
			}
			ht.put(key, valArray);
		}
		return ht;
	}

	private Map<String, String[]> getParamMapFromGet(HttpServletRequest request) {
		String queryString = request.getQueryString();
		if (StringUtils.isNotBlank(queryString)) {
			return parseQueryString(request.getQueryString());
		}
		return new HashMap<String, String[]>();
	}

	private final byte[] body;

	public ApiHttpServletRequestWrapper(HttpServletRequest request) throws IOException {
		super(request);
		body = readBytes(request.getInputStream());

		if ("POST".equals(request.getMethod().toUpperCase())) {
			paramsMap = getParamMapFromPost(this);
		} else {
			paramsMap = getParamMapFromGet(this);
		}
	}

	@Override
	public BufferedReader getReader() throws IOException {
		return new BufferedReader(new InputStreamReader(getInputStream()));
	}

	@Override
	public ServletInputStream getInputStream() throws IOException {
		final ByteArrayInputStream bais = new ByteArrayInputStream(body);
		return new ServletInputStream() {

			@Override
			public int read() throws IOException {
				return bais.read();
			}
		};
	}

	private static byte[] readBytes(InputStream in) throws IOException {
		BufferedInputStream bufin = new BufferedInputStream(in);
		int buffSize = 1024;
		ByteArrayOutputStream out = new ByteArrayOutputStream(buffSize);

		byte[] temp = new byte[buffSize];
		int size = 0;
		while ((size = bufin.read(temp)) != -1) {
			out.write(temp, 0, size);
		}
		bufin.close();

		byte[] content = out.toByteArray();
		return content;
	}
}
