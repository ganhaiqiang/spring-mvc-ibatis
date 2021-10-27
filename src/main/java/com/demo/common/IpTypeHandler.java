package com.demo.common;

import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ibatis.sqlmap.engine.type.TypeHandler;

public class IpTypeHandler implements TypeHandler {

	@Override
	public void setParameter(PreparedStatement ps, int i, Object parameter, String jdbcType) throws SQLException {
		ps.setLong(i, IpConverter.inet_aton(parameter.toString()));
	}

	@Override
	public Object getResult(ResultSet rs, String columnName) throws SQLException {
		BigDecimal s = rs.getBigDecimal(columnName);
		if (rs.wasNull()) {
			return null;
		} else {
			return IpConverter.inet_ntoa(s.longValue());
		}
	}

	@Override
	public Object getResult(ResultSet rs, int columnIndex) throws SQLException {
		BigDecimal s = rs.getBigDecimal(columnIndex);
		if (rs.wasNull()) {
			return null;
		} else {
			return IpConverter.inet_ntoa(s.longValue());
		}
	}

	@Override
	public Object getResult(CallableStatement cs, int columnIndex) throws SQLException {
		BigDecimal s = cs.getBigDecimal(columnIndex);
		if (cs.wasNull()) {
			return null;
		} else {
			return IpConverter.inet_ntoa(s.longValue());
		}
	}

	@Override
	public Object valueOf(String s) {
		return String.valueOf(s);
	}

	@Override
	public boolean equals(Object object, String string) {
		if (object == null || string == null) {
			return object == string;
		} else {
			Object castedObject = valueOf(string);
			return object.equals(castedObject);
		}
	}

}
