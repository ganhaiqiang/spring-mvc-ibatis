package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

	@RequestMapping("main")
	public String main() {
		return "main";
	}

	@RequestMapping("bootstrap-table")
	public String bootstrapTable() {
		return "bootstrap-table";
	}

	@RequestMapping("layout")
	public String layout() {
		return "layout";
	}

	@RequestMapping("pannel")
	public String pannel() {
		return "pannel";
	}
}
