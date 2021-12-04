package com.demo.common;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ibatis.sqlmap.engine.type.TypeHandler;

public class SexEnumTypeHandler implements TypeHandler {

	@Override
	public void setParameter(PreparedStatement ps, int i, Object parameter, String jdbcType) throws SQLException {
		ps.setString(i, ((SexEnum) parameter).getCode());
	}

	@Override
	public Object getResult(ResultSet rs, String columnName) throws SQLException {
		Object s = rs.getString(columnName);
		if (rs.wasNull()) {
			return null;
		} else {
			return SexEnum.parse((String) s);
		}
	}

	@Override
	public Object getResult(ResultSet rs, int columnIndex) throws SQLException {
		Object s = rs.getString(columnIndex);
		if (rs.wasNull()) {
			return null;
		} else {
			return SexEnum.parse((String) s);
		}
	}

	@Override
	public Object getResult(CallableStatement cs, int columnIndex) throws SQLException {
		Object s = cs.getString(columnIndex);
		if (cs.wasNull()) {
			return null;
		} else {
			return SexEnum.parse((String) s);
		}
	}

	@Override
	public Object valueOf(String s) {
		return SexEnum.parse(s);
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
