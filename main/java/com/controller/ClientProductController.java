package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.ProductDAO;
import com.entitySQL.Category;
import com.entitySQL.Product;
import com.service.CategoryService;
import com.service.CookieService;
import com.service.CustomerService;
import com.service.FindUserService;
import com.service.ParamService;
import com.service.ProductService;
import com.service.SessionService;
import com.service.StaffService;



@Controller
public class ClientProductController {
	@Autowired
	CookieService cookie;
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ParamService paramService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SessionService session;
	@Autowired
	CustomerService customerService;
	@Autowired
	StaffService staffService;
	@Autowired
	FindUserService findUserService;
	String error = "";

	// client(load luc vao trang)
	@RequestMapping("/client/product")
	public String clientproductpanigate(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("keywords") Optional<String> kw, @RequestParam("field") Optional<String> field) {
		
		// search 
		String kwords = "";
		if (kw.isPresent()) {		
			//If a value is present, returns the value, otherwise returns other.
			//lay gia tri kw neu ko ton tai thi lay gia tri keyword = ""
			kwords = kw.orElse(session.get("keyword"));
			session.set("keywords", kwords);
		} else {
			kwords = "";
		}

		// field category (do lai san pham vao thanh ben trai)
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);
		
		//tra ve tai khoan hien dang dang nhap
		String name = findUserService.findUser(session.get("user"));

		// sort and paniagte
		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));
		
		Page<Product> page = productDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("field", field.orElse("price").toUpperCase());
		model.addAttribute("page", page);

		//load account 
		model.addAttribute("user1", cookie.getValue("user1"));	
		loadNameAcount(model);
		return "/client/shop";
	}

	// client findbycategory
	@RequestMapping("/client/product/findbycate/{id}")
	public String clientProductFindbyCate(@PathVariable("id") String id, Model model,
			@RequestParam("p") Optional<Integer> p, @RequestParam("field") Optional<String> field,
			@RequestParam("keywords") Optional<String> kw) {
		
		// search
		String kwords = "";
		if (kw.isPresent()) {
			kwords = kw.orElse(session.get("keyword"));
			session.set("keywords", kwords);
		} else {
			kwords = "";
		}
		// field category
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));

		Optional<Category> categoryOP = categoryService.findById(id);
		if (categoryOP.isPresent()) {
			Category category = categoryOP.get();
			Page<Product> page = productDAO.findByNameAndCategory("%" + kwords + "%", category, pageable);
			model.addAttribute("field", field.orElse("price").toUpperCase());
			model.addAttribute("page", page);
		}
		// sort and paniagte

		return "/client/shop";
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
