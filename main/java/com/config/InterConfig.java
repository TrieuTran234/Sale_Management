package com.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterConfig implements WebMvcConfigurer {
	@Autowired
	AuthInterceptor auth;
	@Autowired
	GlobalInterceptor global;
	
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(auth)
		.addPathPatterns("/admin/**","/account/change/index","/account/change",
				"/account/editprofile/index","/account/editprofile")
		
		;
		registry.addInterceptor(global).addPathPatterns("/account/login","/account/editprofile/index","/account/register/index","/account/change/index",
				"/client/shoppingcart/index","/client/shopdetail/index/{id}","/client/order/index","/client/product","/index","/blog","/contact","/about");
		
	}
	
}
