package com.demo.common;

import javax.xml.soap.SOAPException;
import javax.xml.soap.SOAPHeader;
import javax.xml.soap.SOAPMessage;

import org.apache.cxf.binding.soap.SoapMessage;
import org.apache.cxf.binding.soap.saaj.SAAJInInterceptor;
import org.apache.cxf.interceptor.Fault;
import org.apache.cxf.phase.AbstractPhaseInterceptor;
import org.apache.cxf.phase.Phase;
import org.w3c.dom.NodeList;

public class LoginInterceptor extends AbstractPhaseInterceptor<SoapMessage> {
	private SAAJInInterceptor saajIn = new SAAJInInterceptor();

	public LoginInterceptor() {
		super(Phase.PRE_PROTOCOL);
		getAfter().add(SAAJInInterceptor.class.getName());
	}

	@Override
	public void handleMessage(SoapMessage soapMessage) throws Fault {
		try {
			SOAPMessage doc = soapMessage.getContent(SOAPMessage.class);
			if (doc == null) {
				saajIn.handleMessage(soapMessage);
				doc = soapMessage.getContent(SOAPMessage.class);
			}
			SOAPHeader header = doc.getSOAPHeader();
			if (header == null) {
				return;
			}

			NodeList nodes = header.getElementsByTagName("username");
			for (int i = 0; i < nodes.getLength(); i++) {
				System.out.println(nodes.item(i).getLocalName() + "----" + nodes.item(i).getTextContent());
			}
			NodeList password = header.getElementsByTagName("password");
			for (int i = 0; i < password.getLength(); i++) {
				System.out.println(password.item(i).getLocalName() + "----" + password.item(i).getTextContent());
			}
			NodeList signstr = header.getElementsByTagName("signstr");
			for (int i = 0; i < signstr.getLength(); i++) {
				System.out.println(signstr.item(i).getLocalName() + "----" + signstr.item(i).getTextContent());
			}

		} catch (SOAPException e) {
			e.printStackTrace();
		}
	}
}
