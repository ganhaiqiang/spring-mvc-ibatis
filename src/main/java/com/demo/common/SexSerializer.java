package com.demo.common;

import java.io.IOException;
import java.lang.reflect.Type;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;

public class SexSerializer implements ObjectSerializer {

	@Override
	public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
		if (object.getClass().isEnum() && object instanceof SexEnum) {
			SexEnum sexEnum = (SexEnum) object;
			JSONObject enumObject = new JSONObject();
			enumObject.put("name", sexEnum.name());
			enumObject.put("code", sexEnum.getCode());
			enumObject.put("desc", sexEnum.getDesc());

			serializer.write(enumObject);
		}
	}

}
