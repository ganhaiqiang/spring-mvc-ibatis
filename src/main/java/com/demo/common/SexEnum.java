package com.demo.common;

public enum SexEnum {
	F("女"), M("男");

	private String desc;

	SexEnum(String desc) {
		this.desc = desc;
	}

	String getDesc() {
		return desc;
	}

	@Override
	public String toString() {
		return this.desc;
	}
}
