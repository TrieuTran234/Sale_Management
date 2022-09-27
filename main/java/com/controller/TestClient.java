package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

public class TestClient {

	@RequestMapping("/index/fuc")
	public String index() {
		return "/client/index";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "/client/about";
	}
	
	@RequestMapping("/blog")
	public String blog() {
		return "/client/blog";
	}
	
	@RequestMapping("/blogdetails")
	public String blogdetails() {
		return "/client/blog-details";
	}
	
	@RequestMapping("/changepassword")
	public String changepassword() {
		return "/account/changepassword";
	}

	@RequestMapping("/checkout")
	public String checkout() {
		return "/client/checkout";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "/client/contact";
	}
	
	@RequestMapping("/editprofile")
	public String editprofile() {
		return "/account/editprofile";
	}
	
	@RequestMapping("/forgotPw")
	public String forgotPw() {
		return "/account/forgotPw";
	}
	
	
	@RequestMapping("/login")
	public String login() {
		return "/account/login";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "/client/main";
	}
	
	@RequestMapping("/REGISTRATION")
	public String REGISTRATION() {
		return "/account/REGISTRATION";
	}
	
	@RequestMapping("/shop")
	public String shop() {
		return "/client/shop";
	}
	
	@RequestMapping("/shopdetails")
	public String shopdetails() {
		return "/client/shop-details";
	}
	
	@RequestMapping("/shoppingcart")
	public String shoppingcart() {
		return "/client/shopping-cart";
	}
}
