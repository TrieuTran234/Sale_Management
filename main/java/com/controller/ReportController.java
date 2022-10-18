package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.OrderDAO;
import com.dao.ProductDAO;
import com.entity.Report;
import com.entity.ReportMonth;
import com.service.FindUserService;
import com.service.SessionService;



@Controller
public class ReportController {
	@Autowired
	ProductDAO dao;
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	FindUserService findUserService;
	@Autowired
	SessionService session;
	
	@RequestMapping("/admin/report/index")
	public String reportIndex(Model model) {
		loadNameAcount( model);
		List<Report> items = dao.getInventoryByCategory();
		model.addAttribute("items", items);
		List<ReportMonth> itemMonths=orderDAO.getInventoryByMonth();
		model.addAttribute("itemsMT", itemMonths);
		return "/admin/report";
	}
	public void loadNameAcount(Model model) {
		try {
			// Đọc giá trị của attribute trong session
			String name = findUserService.findUser(session.get("user"));
			model.addAttribute("name", name);
		} catch (Exception e) {
			System.out.println(e + "loi kho load acount");
		}
	}
}
