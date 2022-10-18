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

import com.dao.CartItemDAO;
import com.dao.StaffDAO;
import com.entitySQL.Staff;
import com.service.FindUserService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.StaffService;



@Controller
public class StaffController {
	@Autowired
	StaffService staffService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	StaffDAO staffDAO;
	@Autowired
	SessionService session;
	@Autowired
	FindUserService findUserService;
	String error = "";

	@RequestMapping("/admin/staff/index")
	public String staffedit(Model model) {
		loadNameAcount(model);
		Staff staff = new Staff();
		model.addAttribute("item", staff);
		List<Staff> listsStaffs = staffService.findAll();
		model.addAttribute("items", listsStaffs);
		model.addAttribute("error", error);
		error = "";
		return "/admin/staff";
	}

	@RequestMapping("/admin/staff/list")
	public String index(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("keywords") Optional<String> kw, @RequestParam("field") Optional<String> field) {
		// search
		loadNameAcount(model);
		String kwords = "";
		if (kw.isPresent()) {
			kwords = kw.orElse(sessionService.get("keyword"));
			sessionService.set("keywords", kwords);
		} else {
			kwords = "";
		}

		Staff staff = new Staff();
		model.addAttribute("item", staff);

		// sort and paniagte
		Pageable pageable = PageRequest.of(p.orElse(0), 5, Sort.by(Direction.ASC, field.orElse("id")));
		Page<Staff> page = staffDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("field", field.orElse("id").toLowerCase());
		model.addAttribute("page", page);
		return "/admin/staff-list";
	}

	@RequestMapping("/admin/staff/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		loadNameAcount(model);
		Staff item = staffService.findById(id).get();
		model.addAttribute("item", item);
		List<Staff> items = staffService.findAll();
		model.addAttribute("items", items);
		return "/admin/staff";
	}

	@RequestMapping("/admin/staff/create")
	public String staffcreate(Staff staff, @RequestParam("photo") MultipartFile multipartFile) {
		if (!staffService.existsById(staff.getId())) {

			// upload hinh
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			String uploadDir = "uploads/";
			staff.setImage(fileName);
			System.out.println(fileName);
			staffService.save(staff);
			paramService.save(multipartFile, uploadDir);
		} else {
			error = "Id already exists";
		}
		return "redirect:/admin/staff/index";
	}

	@RequestMapping("/admin/staff/update")
	public String update(Staff item, Model model, @RequestParam("photo") MultipartFile multipartFile,
			@RequestParam("image1") String image1) {
		loadNameAcount(model);

		if (!staffService.existsById(item.getId())) {

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
			staffService.save(item);

			error = "";
		}

		return "redirect:/admin/staff/index";
	}

	@RequestMapping("/admin/staff/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		staffService.deleteById(id);
		return "redirect:/admin/staff/list";
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
