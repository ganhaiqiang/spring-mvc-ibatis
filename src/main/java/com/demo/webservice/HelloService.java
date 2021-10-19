package com.demo.webservice;

import javax.jws.WebService;
import javax.xml.ws.BindingType;

@WebService
@BindingType(javax.xml.ws.soap.SOAPBinding.SOAP12HTTP_BINDING)
public interface HelloService {

	String sayHello(String name);
}
