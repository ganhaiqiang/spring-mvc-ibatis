package com.demo.service;

import javax.jws.WebService;
import javax.xml.soap.SOAPException;

import com.demo.model.Student;

@WebService
public interface WsService {

	Student findById(Integer id) throws SOAPException;
}
