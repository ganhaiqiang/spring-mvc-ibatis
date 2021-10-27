package com.demo.test;

import java.math.BigDecimal;

public class Test {
	public static void main(String[] args) throws ClassNotFoundException {
		System.out.println(new BigDecimal(5.0001).stripTrailingZeros().toString());
		System.out.println(new BigDecimal(5.0001).stripTrailingZeros().toPlainString());
	}
}
