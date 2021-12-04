package com.demo.common;

import java.util.List;

import javax.xml.namespace.QName;

import org.apache.cxf.binding.soap.SoapMessage;
import org.apache.cxf.headers.Header;
import org.apache.cxf.helpers.DOMUtils;
import org.apache.cxf.interceptor.Fault;
import org.apache.cxf.phase.AbstractPhaseInterceptor;
import org.apache.cxf.phase.Phase;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class AuthInterceptor extends AbstractPhaseInterceptor<SoapMessage> {
	// 用户名
	private static final String NAME = "admin";
	// 密码
	private static final String PASSWORD = "admin";
	// 密钥
	private static final String SIGNSTR = "******************";

	public AuthInterceptor() {
		super(Phase.PREPARE_SEND);
	}

	@Override
	public void handleMessage(SoapMessage message) throws Fault {
		// 消息头
		List<Header> headers = message.getHeaders();
		Document doc = DOMUtils.createDocument();
		Element auth = doc.createElement("auth");
		Element name = doc.createElement("username");
		Element password = doc.createElement("password");
		Element signstr = doc.createElement("signstr");
		name.setTextContent(NAME);
		password.setTextContent(PASSWORD);
		signstr.setTextContent(SIGNSTR);
		auth.appendChild(name);
		auth.appendChild(password);
		auth.appendChild(signstr);
		headers.add(new Header(new QName(""), name));
		headers.add(new Header(new QName(""), password));
		headers.add(new Header(new QName(""), signstr));
	}
}
