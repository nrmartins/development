package com.personal.demo.hello;

import javax.jws.WebService;


@WebService(endpointInterface="com.personal.demo.hello.HelloWorld")
public class HelloWorldImpl implements HelloWorld{

	@Override
	public String sayHello(String name) {
		return "Hello from service, " + name;
	}


}
