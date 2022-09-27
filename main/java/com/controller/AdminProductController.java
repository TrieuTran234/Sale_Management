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
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.ProductDAO;
import com.entitySQL.Category;
import com.entitySQL.Product;
import com.service.CategoryService;
import com.service.CustomerService;
import com.service.FindUserService;
import com.service.ParamService;
import com.service.ProductService;
import com.service.SessionService;
import com.service.StaffService;


//@Controller
public class AdminProductController {
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

	@RequestMapping("/admin/product/index")
	public String index(Model model) {
		
		Product product = new Product();
		model.addAttribute("item", product);
		loadNameAcount(model);
		
		List<Product> listProducts = productService.findAll();
		model.addAttribute("items", listProducts);
	
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);
//		model.addAttribute("ids", 1);
		
		error = "";
		return "/admin/product-edit";
	}

	@RequestMapping("/admin/product/list")
	public String list(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("keywords") Optional<String> kw, @RequestParam("field") Optional<String> field) {
		
		loadNameAcount(model);
		
		Product product = new Product();
		model.addAttribute("item", product);
		// search
		String kwords = "";
		if (kw.isPresent()) {
			kwords = kw.orElse(session.get("keyword"));
			session.set("keywords", kwords);
		} else {
			kwords = "";
		}
		
		// sort and paniagte
		if (p.isPresent() && p.get()>=0) {

			Pageable pageable = PageRequest.of(p.orElse(0), 5, Sort.by(Direction.ASC, field.orElse("price")));
			Page<Product> page = productDAO.findByKeywords("%" + kwords + "%", pageable);
			model.addAttribute("field", field.orElse("price").toLowerCase());
			model.addAttribute("page", page);
		}else {
			
			Pageable pageable = PageRequest.of(0, 5, Sort.by(Direction.ASC, field.orElse("price")));
			Page<Product> page = productDAO.findByKeywords("%" + kwords + "%", pageable);
			model.addAttribute("field", field.orElse("price").toLowerCase());
			model.addAttribute("page", page);
		}
		
		
		return "/admin/product-list";
	}

	@RequestMapping("/admin/product/create")
	public String staffcreate(Product product, @RequestParam("photo") MultipartFile multipartFile) {
		if (!productService.existsById(product.getId())) {

			// upload hinh
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			String uploadDir = "uploads/product/";
			product.setImage(fileName);
			System.out.println(fileName);
			productService.save(product);
			paramService.save(multipartFile, uploadDir);
		} else {
			error = "Id already exists";
		}
		return "redirect:/admin/product/index";
	}

	@RequestMapping("/admin/product/update")
	public String update(Product item, Model model, @RequestParam("photo") MultipartFile multipartFile,
			@RequestParam("image1") String image1) {

		if (!productService.existsById(item.getId())) {

			error = "Id to update is not in the list";

		} else {
			// upload hinh

			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			if (fileName.equals("")) {
				item.setImage(image1);
			} else {
				String uploadDir = "uploads/product/";
				item.setImage(fileName);
				paramService.save(multipartFile, uploadDir);
			}

			productService.save(item);

			error = "";
		}

		return "redirect:/admin/product/index";

	}

	@RequestMapping("/admin/product/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		productService.deleteById(Integer.parseInt(id));
		return "redirect:/admin/product/list";
	}

	@RequestMapping("/admin/product/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Product item = productService.findById(Integer.parseInt(id)).get();
		model.addAttribute("item", item);
		List<Product> items = productService.findAll();
		model.addAttribute("items", items);
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		return "/admin/product-edit";
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
