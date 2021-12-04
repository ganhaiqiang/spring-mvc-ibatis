package com.demo.common;

import java.lang.reflect.Type;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;

public class SexDeserializer implements ObjectDeserializer {

	@SuppressWarnings("unchecked")
	@Override
	public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
		JSONObject object = (JSONObject) parser.parse(fieldName);
		if (type.getTypeName().equals(SexEnum.class.getName())) {
			return (T) SexEnum.valueOf(object.getString("name"));
		}
		return null;
	}

	@Override
	public int getFastMatchToken() {
		return 0;
	}

}
