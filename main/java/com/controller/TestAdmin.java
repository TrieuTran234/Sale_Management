package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class TestAdmin {

	@RequestMapping("/category")
	public String category() {
		return "/admin/category";
	}
	
	@RequestMapping("/order")
	public String order() {
		return "/admin/order";
	}
	
	@RequestMapping("/orderdetail")
	public String orderdetail() {
		return "/admin/orderdetail";
	}
	
	@RequestMapping("/product")
	public String product() {
		return "/admin/product";
	}
	
	@RequestMapping("/product-edit")
	public String productedit() {
		return "/admin/product-edit";
	}

	@RequestMapping("/product-list")
	public String productlist() {
		return "/admin/product-list";
	}
	
	@RequestMapping("/promotion")
	public String contact() {
		return "/admin/promotion";
	}
	
	@RequestMapping("/promotionDetail")
	public String promotionDetail() {
		return "/admin/promotionDetail";
	}
	
	@RequestMapping("/report")
	public String report() {
		return "/admin/report";
	}
	
	
	@RequestMapping("/staff")
	public String staff() {
		return "/admin/staff";
	}
	
	@RequestMapping("/staff-list")
	public String stafflist() {
		return "/admin/staff-list";
	}
	
	@RequestMapping("/USER")
	public String USER() {
		return "/admin/USER";
	}
	

}
