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



@Controller
public class ReportController {
	@Autowired
	ProductDAO dao;
	@Autowired
	OrderDAO orderDAO;
	@RequestMapping("/admin/report/index")
	public String reportIndex(Model model) {
		
		List<Report> items = dao.getInventoryByCategory();
		model.addAttribute("items", items);
		List<ReportMonth> itemMonths=orderDAO.getInventoryByMonth();
		model.addAttribute("itemsMT", itemMonths);
		return "/admin/report";
	}
}
