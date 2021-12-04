package com.demo.service;

import javax.jws.WebService;
import javax.xml.soap.SOAPException;

import org.springframework.beans.factory.annotation.Autowired;

import com.demo.model.Student;

@WebService(endpointInterface = "com.demo.service.WsService")
public class WsServiceImpl implements WsService {

	@Autowired
	private StudentService studentService;

	@Override
	public Student findById(Integer id) throws SOAPException {
		if (id == null || id == 0) {
			throw new SOAPException("id不能为空！");
		}
		return studentService.selectByPrimaryKey(id);
	}

}
