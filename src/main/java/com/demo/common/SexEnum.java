package com.demo.common;

public enum SexEnum {
	FEMALE("F", "女"), MALE("M", "男");

	private String code;
	private String desc;

	SexEnum(String code, String desc) {
		this.code = code;
		this.desc = desc;
	}

	public String getCode() {
		return code;
	}

	public String getDesc() {
		return desc;
	}

	public static SexEnum parse(String code) {
		for (SexEnum sexEnum : SexEnum.values()) {
			if (sexEnum.getCode().equals(code)) {
				return sexEnum;
			}
		}
		return null;
	}
}
