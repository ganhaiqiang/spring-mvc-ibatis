package com.demo.common;

import java.util.List;

public class PageInfo<T> {
	private Integer total;
	private List<T> rows;

	public PageInfo() {
		super();
	}

	public PageInfo(Integer total, List<T> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

}
