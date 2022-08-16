package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.CustomerDAO;
import com.entitySQL.Customer;
import com.service.CustomerService;
import com.service.ParamService;
import com.service.SessionService;


@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;
	@Autowired
	ParamService paramService;
	String error = "";
	@Autowired
	SessionService sessionService;
	@Autowired
	CustomerDAO customerDAO;
	
	@RequestMapping("/admin/customer/index")
	public String customerindex(Model model) {
		Customer customer = new Customer();
		model.addAttribute("item", customer);
		
		List<Customer> listscustomers = customerService.findAll();
		
		model.addAttribute("items", listscustomers);
		model.addAttribute("error", error);
		error = "";
		return "/admin/USER";
	}

	@RequestMapping("/admin/customer/list")
	public String list(Model model) {
		
		Customer customer = new Customer();
		model.addAttribute("item", customer);
		List<Customer> listCustomers=customerService.findAll();
		model.addAttribute("items", listCustomers);
		
		return "/admin/USER";
	}

	@RequestMapping("/admin/customer/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Customer item = customerService.findById(id).get();
		model.addAttribute("item", item);
		List<Customer> items = customerService.findAll();
		model.addAttribute("items", items);
		return "/admin/USER";
	}

	@RequestMapping("/admin/customer/create")
	public String customercreate(Customer customer, @RequestParam("photo") MultipartFile multipartFile) {
		if (!customerService.existsById(customer.getId())) {

			// upload hinh
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			String uploadDir = "uploads/";
			customer.setImage(fileName);
			System.out.println(fileName);
			customerService.save(customer);
			paramService.save(multipartFile, uploadDir);
			error = "";
		} else {
			error = "Id already exists";
		}
		return "redirect:/admin/customer/index";
	}

	@RequestMapping("/admin/customer/update")
	public String update(Customer item, Model model, @RequestParam("photo") MultipartFile multipartFile,
			@RequestParam("image1") String image1) {

		if (!customerService.existsById(item.getId())) {

			error = "Id to update is not in the list";

		} else {
			// upload hinh
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			
			if (fileName.equals("")) {
				item.setImage(image1);
			} else {
				String uploadDir = "uploads/";
				item.setImage(fileName);
				paramService.save(multipartFile, uploadDir);
			}
			customerService.save(item);
			error = "";
		}

		return "redirect:/admin/customer/index";
	}

	@RequestMapping("/admin/customer/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		customerService.deleteById(id);
		return "redirect:/admin/customer/list";
	}
}
