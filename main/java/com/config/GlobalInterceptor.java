package com.config;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CartItemDAO;
import com.dao.CustomerDAO;
import com.entitySQL.Customer;
import com.service.CartItemService;
import com.service.CustomerService;
import com.service.FindUserService;
import com.service.SessionService;
import com.service.ShoppingCartService;


@Service
public class GlobalInterceptor implements HandlerInterceptor {
	@Autowired
	CustomerService customerService;
	@Autowired
	CustomerDAO customerDAO;
	@Autowired
	SessionService sessionService;
	@Autowired
	FindUserService findUserService;
	@Autowired
	CartItemService cartItemService;
	@Autowired
	CartItemDAO cartItemDAO;
	@Autowired
	ShoppingCartService shoppingCartService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object handler, ModelAndView mv)
			throws Exception {
		String name = findUserService.findUser(sessionService.get("user"));
		req.setAttribute("name", name);
		try {
			Optional<Customer> customerOP = customerService.findById(sessionService.get("user"));
			if (customerOP.isPresent()) {
				req.setAttribute("count", cartItemDAO.findByCustomer(customerOP.get()).size());
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			req.setAttribute("count", shoppingCartService.getCount());

		}
	}
}
