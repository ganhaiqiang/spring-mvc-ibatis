package com.demo.test;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import com.alibaba.excel.EasyExcel;
import com.alibaba.fastjson.JSON;

public class EasyExcelTest {
	public static void main(String[] args) {
		User user1 = new User(1001, "宋小宝", "男", 35, new Date(), "15634283387", "美国 加利福尼亚 圣何塞");
		User user2 = new User(1002, "桃小仙", "女", 25, new Date(), "13434283366", "北京昌平");
		User user3 = new User(1003, "JACK", "男", 55, new Date(), "17734283378", "武汉市建设路11号");
		List<User> list = new ArrayList<User>();
		list.add(user1);
		list.add(user2);
		list.add(user3);

		String filePath = "D://111.xls";
		EasyExcel.write(filePath, User.class).sheet("员工信息").doWrite(list);

//		List<User> users =EasyExcel.read(new File(filePath), User.class, null).sheet(0).doReadSync();
//		System.out.println(JSON.toJSONString(users, true));
	}
}
