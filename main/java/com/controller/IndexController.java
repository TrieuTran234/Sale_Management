package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.OrderDetailsDAO;
import com.dao.ProductDAO;
import com.dao.PromotionDetailDAO;
import com.entitySQL.Product;
import com.entitySQL.PromotionDetail;
import com.service.CookieService;
import com.service.FindUserService;
import com.service.OrderDetailsService;
import com.service.ProductService;
import com.service.SessionService;

@Controller
public class IndexController {
	@Autowired
	CookieService cookie;
	@Autowired
	FindUserService findUserService;
	@Autowired
	SessionService session;
	@Autowired
	ProductService productService;
	@Autowired
	OrderDetailsDAO orderDetailsDAO;
	@Autowired
	OrderDetailsService orderDetailsService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	PromotionDetailDAO promotionDetailDAO;

	@RequestMapping("/index")
	public String index(Model model) {
		// thuat toan sap xep
		Pageable pageable = PageRequest.of(0, 5, Sort.by(Direction.ASC, "createDate"));

		// tim cac don hang chi tiet chua san pham
		Page<Product> page = productService.findAll(pageable);

		// promotionDetail fill all
		Iterable<PromotionDetail> listPromotionDetails = promotionDetailDAO.findAll();

		List<Product> listProducts = new ArrayList<Product>();// list rong

		for (PromotionDetail promotionDetail : listPromotionDetails) {
			listProducts.add(promotionDetail.getProduct());
		}

		model.addAttribute("items", listProducts);
		model.addAttribute("itemdate", page);

		try {
			
			//// set ten tai khoan khi da dang nhap
			model.addAttribute("user1", cookie.getValue("user1"));
			
			String name = findUserService.findUser(session.get("user"));
			
			model.addAttribute("name", name);

		} catch (Exception e) {
			System.out.println("loi index controller- add tai khoan");
		}

		return "/client/index";
	}

	
}
