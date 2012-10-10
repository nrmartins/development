<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.personal.demo.hello.client.HelloWorldImplService"%>
<%@ page import="com.personal.demo.hello.client.HelloWorld"%>
<%@ page import="com.personal.demo.hello.client.HelloWorldImplService"%>
<%@ page import="javax.xml.namespace.QName"%>
<%@ page import="java.net.URL"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
	 	String name = request.getParameter("name");
	    HelloWorldImplService ss = new HelloWorldImplService(new URL("http://localhost:8080/demo/service/hello?wsdl"), new QName("http://hello.demo.personal.com/", "HelloWorldImplService"));
	    HelloWorld port = ss.getHelloWorldImplPort();  
        java.lang.String reply = port.sayHello(name);
	%>	
	<%= reply %>
</body>
</html>
