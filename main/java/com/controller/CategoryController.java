package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entitySQL.Category;
import com.service.CategoryService;
import com.service.FindUserService;
import com.service.SessionService;



@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	FindUserService findUserService;
	@Autowired
	SessionService session;

	String error = "";

	@RequestMapping("/admin/category/index")
	public String index(Model model) {
		//load tên của admin
		loadNameAcount(model);
		//đổ dữ liệu trông lên form
		Category item = new Category();
		model.addAttribute("item", item);
		//load database
		List<Category> listItem = categoryService.findAll();
		
		model.addAttribute("items", listItem);
		model.addAttribute("error", error);
		
		error="";
		return "/admin/category";
	}

	@RequestMapping("/admin/category/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
	
		loadNameAcount(model);
		
		Category item = categoryService.findById(id).get();
		
		model.addAttribute("item", item);
		List<Category> items = categoryService.findAll();
		
		model.addAttribute("items", items);
		return "/admin/category";
	}

	@RequestMapping("/admin/category/create")
	public String create(Category item) {
		if (!categoryService.existsById(item.getId())) {
			categoryService.save(item);
			error="";
		} else {
			error = "Id already exists";
		}
		return "redirect:/admin/category/index";
	}

	@RequestMapping("/admin/category/update")
	public String update(Category item, Model model) {
		if (!categoryService.existsById(item.getId())) {
			error = "Id to update is not in the list";
		} else {
			categoryService.save(item);
			error = "";
		}
		loadNameAcount(model);
		return "redirect:/admin/category/index";
	}

	@RequestMapping("/admin/category/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		categoryService.deleteById(id);
		return "redirect:/admin/category/index";
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
