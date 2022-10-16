package com.config;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDAO;
import com.entitySQL.Customer;
import com.entitySQL.Staff;
import com.service.CustomerService;
import com.service.SessionService;
import com.service.StaffService;

@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	CategoryDAO dao;
	@Autowired
	CustomerService customerService;
	@Autowired
	StaffService staffService;
	@Autowired
	SessionService session;

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {
		String uri = req.getRequestURI();
		String error = "";
		try {
			// Tim khach hang va nhan vien
			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			Optional<Staff> staffOP = staffService.findById(session.get("user"));
			Customer customer3 = null;
			Staff staff3 = null;
			if (customerOP.isPresent() && staffOP.isEmpty()) {
				customer3 = customerOP.get();
				staff3 = null;
				System.out.println(customer3.getPassword() + "password customer ");
			} else {
				staff3 = staffOP.get();
				customer3 = null;
				
			}

			// không đúng vai trò
			if (uri.startsWith("/admin/") && staff3 == null) {
				error = "Access denied!";

			}else if (uri.startsWith("/account/") && customer3==null) {
				error="You are not logged in for account";
			} else if (uri.startsWith("/client/order/") && customer3==null) {
				error="You are not logged in for order";
			}  else if (uri.startsWith("/client/preorder/") && customer3==null) {
				error="You are not logged in for preorder";
			} 
			
			else {
				error = "";
			}

		} catch (Exception e) {
			error = "You are not logged in";

		}
		if (error.length() > 0) {
			session.set("security-uri", uri);
			resp.sendRedirect("/account/login?error=" + error);
			return false;
		} else {
			
			return true;
		}

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

}
