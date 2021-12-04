package com.demo.common;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.converter.HttpMessageNotWritableException;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;

public class JsonConverter extends FastJsonHttpMessageConverter {
	/**
	 * 日志记录器
	 **/
	private static final Logger LOGGER = LoggerFactory.getLogger(JsonConverter.class);

	/**
	 * 重写writeInternal方法，在返回内容前首先进行HTML字符转义 <功能详细描述>
	 * 
	 * @param object
	 * @param outputMessage
	 * @throws IOException
	 * @throws HttpMessageNotWritableException
	 * @see [类、类#方法、类#成员]
	 */
	@Override
	protected void writeInternal(Object object, HttpOutputMessage outputMessage) throws IOException, HttpMessageNotWritableException {
		// 获取输出流
		OutputStream out = outputMessage.getBody();

		// 获取要输出的文本
		String text = JSON.toJSONString(object);

		// 对文本做HTML特殊字符转义
		String result = convertJson(text);

		// 输出转义后的文本
		out.write(result.getBytes("UTF-8"));
	}

	/**
	 * JSON参数转义 <功能详细描述>
	 * 
	 * @param json
	 * @return
	 * @see [类、类#方法、类#成员]
	 */
	private String convertJson(String json) {
		try {
			// 判断是否是JSON对象
			if (json.startsWith("{")) {
				// 将参数转换成JSONObject
				JSONObject jsonObj = JSON.parseObject(json);
				// 处理参数
				JSONObject myobj = jsonObj(jsonObj);
				return myobj.toString();
			}
			// 判断是否是JSON数组
			else if (json.startsWith("[")) {
				// 将参数转换成JSONArray
				JSONArray jsonArray = JSON.parseArray(json);
				// 处理参数
				JSONArray array = parseArray(jsonArray);
				return array.toString();
			} else {
				return json;
			}
		} catch (JSONException e) {
			LOGGER.error("Json数据解析处理失败！");
			return "{}";
		}
	}

	/**
	 * JSON参数Map（对象）转义 <功能详细描述>
	 * 
	 * @param json
	 * @return
	 * @see [类、类#方法、类#成员]
	 */
	private JSONObject jsonObj(JSONObject json) {

		for (Entry<String, Object> entry : json.entrySet()) {
			// 判断对象类型
			if (entry.getValue() instanceof List) {
				json.put(entry.getKey(), parseArray((JSONArray) entry.getValue()));

			}
			// 判断是否是对象结构
			else if (entry.getValue() instanceof Map) {
				// 处理参数
				json.put(entry.getKey(), jsonObj((JSONObject) entry.getValue()));
			} else if (entry.getValue() instanceof String) {
				// 处理参数
				json.put(entry.getKey(), convertStr((String) entry.getValue()));
			}
		}

		return json;
	}

	/**
	 * JSON参数List（数组）转义 <功能详细描述>
	 * 
	 * @param json
	 * @return
	 * @see [类、类#方法、类#成员]
	 */
	private JSONArray parseArray(JSONArray jsonArray) {
		// 判空
		if (null == jsonArray || jsonArray.isEmpty() || jsonArray.size() == 0) {
			return jsonArray;
		}
		//
		for (int i = 0, l = jsonArray.size(); i < l; i++) {
			Object obj = jsonArray.get(i);

			// 判断是否是数据结构
			if (obj instanceof List) {
				// 处理数组对象
				parseArray((JSONArray) obj);
			}
			// 判断是否是对象结构
			else if (obj instanceof Map) {
				// 处理参数
				jsonObj((JSONObject) obj);
			}
			// 判断是否是String结构
			else if (obj instanceof String) {
				jsonArray.set(i, convertStr((String) obj));
			}
		}

		return jsonArray;
	}

	/**
	 * HTML脚本转义 <功能详细描述>
	 * 
	 * @param str
	 * @return
	 * @see [类、类#方法、类#成员]
	 */
	private String convertStr(String str) {
		return str.replace("&", "&amp;")
				.replace("<", "&lt;")
				.replace(">", "&gt;")
				.replace("\"", "&quot;")
				.replace("'", "&#x27;")
				.replace("(", "&#40;")
				.replace(")", "&#41;")
				.replace("%", "&#37;")
				.replace("+", "&#43;")
				.replace("\\", "&#92;");
	}
}
