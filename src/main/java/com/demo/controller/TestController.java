//package com.demo.controller;
//
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.demo.common.ApiResponse;
//
//@RestController
//@RequestMapping("/test")
//public class TestController {
//
//	/**
//	 * 数组或List类型必须添加@RequestBody或@RequestParam才能接收到参数
//	 * 添加@RequestBody注解时设置请求头Content-Type:application/json，参数为["aaa","bbb"]
//	 * 添加@RequestParam注解时参数为http://localhost:8080/test/list?ids=aaa&ids=bbb
//	 * 
//	 * @param ids
//	 * @return
//	 */
//	@RequestMapping("list")
//	public Object list(@RequestBody List<String> ids) {
//		return ApiResponse.ok(ids);
//	}
//
//	/**
//	 * 添加@RequestBody注解时设置请求头Content-Type:application/json，参数为：[{"id":111,"name":"东方不败"},{"id":333,"name":"JACK"}]
//	 * @param ids
//	 * @return
//	 */
//	@RequestMapping("listmap")
//	public Object listmap(@RequestBody List<Map<String, Object>> ids) {
//		return ApiResponse.ok(ids);
//	}
//
//	/**
//	 * 添加@RequestBody注解时设置请求头Content-Type:application/json，参数为：[[111,555],[777,222]]
//	 * 添加@RequestParam注解时参数为http://localhost:8080/test/listarray?ids=111,333&ids=222,888,999
//	 * 
//	 * @param ids
//	 * @return
//	 */
//	@RequestMapping("listarray")
//	public Object listarray(@RequestParam List<Integer[]> ids) {
//		return ApiResponse.ok(ids);
//	}
//
//	/**
//	 * Map类型必须添加@RequestBody或@RequestParam才能接收到参数
//	 * 添加@RequestBody注解时设置请求头Content-Type:application/json，参数为简单或复杂的JSON字符串
//	 * 添加@RequestParam注解时参数为http://localhost:8080/test/list?id=111&name=SMITH
//	 * 
//	 * @param map
//	 * @return
//	 */
//	@RequestMapping("map")
//	public Object test(@RequestParam Map<String, Object> map) {
//		return ApiResponse.ok(map);
//	}
//}
