package com.personal.demo.hello;

import javax.jws.WebService;

@WebService
public interface HelloWorld {

	public String sayHello(String name);
	
}
