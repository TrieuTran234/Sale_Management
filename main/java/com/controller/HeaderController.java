package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.CookieService;
import com.service.FindUserService;
import com.service.SessionService;

@Controller
public class HeaderController {
	@Autowired
	CookieService cookie;
	@Autowired
	FindUserService findUserService;
	@Autowired
	SessionService session;



	
	@RequestMapping("/about")
	public String about(Model model) {
		model.addAttribute("user1", cookie.getValue("user1"));	
		loadNameAcount(model);
		return "/client/about";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "/client/contact";
	}

	@RequestMapping("/shop-details")
	public String shopdetails() {
		return "/client/shop-details";
	}

	@RequestMapping("/admin/product")
	public String product() {
		return "/admin/product";
	}

	@RequestMapping("/blog-details")
	public String blogdetails() {
		return "/client/blog-details";
	}

	@RequestMapping("/blog")
	public String blog() {
		return "/client/blog";
	}

	@RequestMapping("/admin/order")
	public String order() {
		return "/admin/order";
	}
	public void loadNameAcount(Model model) {
		try {
			// Đọc giá trị của attribute trong session
			String name = findUserService.findUser(session.get("user"));
			model.addAttribute("name", name);
		} catch (Exception e) {
			System.out.println(e+"loi kho load acount");
		}
	}


}
