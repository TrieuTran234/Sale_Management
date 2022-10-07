package com.controller;

import java.util.Optional;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.CustomerDAO;
import com.entitySQL.Customer;
import com.entitySQL.Staff;
import com.service.CookieService;
import com.service.CustomerService;
import com.service.FindUserService;
import com.service.MailerService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.StaffService;

import net.bytebuddy.utility.RandomString;

@Controller
public class AccountController {
	@Autowired
	CookieService cookie;
	@Autowired
	ParamService param;
	@Autowired
	SessionService session;
	@Autowired
	HttpServletRequest request;
	@Autowired
	CustomerService customerService;
	@Autowired
	CustomerDAO customerDAO;
	@Autowired
	StaffService staffService;
	@Autowired
	FindUserService findUserService;

	@GetMapping("/account/login")
	public String get_login(Model model) {

		model.addAttribute("user1", cookie.getValue("user1"));
		loadNameAcount(model);
		return "/account/login";
	}

	@PostMapping("/account/login")
	public String post_login(Model model) {
		// co the dung = request.getParameter("value");
		String un = param.getString("username", "");
		String pw = param.getString("password", "");
		// chuc mang remember me
		boolean rm = param.getBoolean("remember", false);
		// thong bao khi loi
		String message = "";
		// check xem ten dg la nguoi dung hay nhan vien
		Customer customer3 = null;
		Staff staff3 = null;
		Optional<Customer> customerOP = customerService.findById(un);
		Optional<Staff> staffOP = staffService.findById(un);

		// xu ly khi la khach hang
		if (customerOP.isPresent()) {
			customer3 = customerOP.get();
			if (customer3.getActive() == false) {
				message = "Tài khoản chưa được kịch hoạt.";
				model.addAttribute("message", message);
			} else if (!dologin(un, pw)) {
				message = "Sai mật khẩu.";
				model.addAttribute("user1", un);
				model.addAttribute("message", message + " mk là:" + customer3.getPassword());
			} else {
				session.set("user", un);
				session.set("admin", null);
			}
		}
		// xy ly khi la nhan vien
		if (staffOP.isPresent()) {
			staff3 = staffOP.get();
			if (!dologin(un, pw)) {
				message = "Sai mật khẩu.";
				model.addAttribute("user1", un);
				model.addAttribute("message", message + " mk là:" + staff3.getPassword());
			} else {
				session.set("user", un);
				session.set("admin", "is Admin");

			}
		}
		if (rm == true) {
			model.addAttribute("user1", cookie.add("user1", un, 10).getValue());
		} else {
			cookie.remove("user1");
		}

		if (message.equals("")) {
			return "redirect:/index";
		} else {
			session.set("admin", null);
			session.set("user", null);
			return "/account/login";
		}

	}

	// logout
	@RequestMapping("/account/logout")
	public String logout() {
		cookie.remove("user1");
		session.remove("user");
		return "redirect:/account/login";
	}

	//////// dang ky
	String errorRegis = "";

	@GetMapping("/account/register/index")
	public String registerIndex(Model model) {
		loadNameAcount(model);
		Customer customer = new Customer();
		model.addAttribute("item", customer);

		model.addAttribute("error", errorRegis);
		errorRegis = "";
		loadNameAcount(model);
		return "/account/REGISTRATION";
	}

	@RequestMapping("/account/register")
	public String register(Customer item, Model model, @RequestParam("photo") MultipartFile multipartFile,
			@RequestParam("password") String password, @RequestParam("password1") String password1,
			HttpServletRequest request) throws MessagingException {
		loadNameAcount(model);
		try {
			// neu chua ton tai khach hang
			if (!customerService.existsById(item.getId())) {
				// 2 pass nhap dung
				if (password.equals(password1)) {
					// upload hinh
					String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
					String uploadDir = "uploads/";
					item.setImage(fileName);
					System.out.println(fileName);
					item.setActive(false);
					String ramdomCode = RandomString.make(10);
					item.setVerificationCode(ramdomCode);

					customerService.save(item);
					param.save(multipartFile, uploadDir);
					errorRegis = "Regist successfully";

				} else {
					errorRegis = "Confirm password is incorrect";
				}
			} else {
				errorRegis = "Id already exists";
			}
			return "redirect:/account/register/index";
		} catch (Exception e) {
			System.out.println("dang loi /account/register ");
			loadNameAcount(model);
			return "/account/REGISTRATION";
		}
	}

	// cap nhat tk
	String errorEdit = "";
	String passwordEdit = "";
	boolean active;

	@RequestMapping("/account/editprofile/index")
	public String editProfileIndex(Model model) {
		loadNameAcount(model);
		Customer item = customerService.findById(session.get("user")).get();
		active = item.getActive();
		passwordEdit = item.getPassword();
		model.addAttribute("item", item);
		model.addAttribute("error", errorEdit);
		errorEdit = "";
		loadNameAcount(model);
		return "/account/editprofile";
	}

	@RequestMapping("/account/editprofile")
	public String editProfile(Customer item, Model model, @RequestParam("photo") MultipartFile multipartFile,
			@RequestParam("image1") String image1) {
		loadNameAcount(model);
		// upload hinh
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		if (fileName.equals("")) {
			item.setImage(image1);
		} else {
			String uploadDir = "uploads/";
			item.setImage(fileName);
			param.save(multipartFile, uploadDir);
		}
		item.setPassword(passwordEdit);
		item.setActive(active);
		customerService.save(item);
		errorEdit = "Update successfully";

		return "redirect:/account/editprofile/index";
	}

	// DOI MAT KHAU
	String errorPassword = "";

	@RequestMapping("/account/change/index")
	public String x(Model model) {
		loadNameAcount(model);

		String name = findUserService.findUserID(session.get("user"));
		model.addAttribute("userid", name);

		model.addAttribute("error", errorPassword);
		errorPassword = "";
		loadNameAcount(model);
		return "/account/changepassword";
	}

	@RequestMapping("/account/change")
	public String changepassword(Model model, @RequestParam("password") String password,
			@RequestParam("password1") String password1, @RequestParam("password2") String password2) {
		loadNameAcount(model);
		String name = findUserService.findUserID(session.get("user"));
		Optional<Customer> customerOP = customerService.findById(name);
		if (customerOP.isPresent()) {
			Customer customer = customerOP.get();
			// KIEM tra mk cu~
			if (!password.equals(customer.getPassword())) {
				errorPassword = "Current password is not correct";
			} else {
				// kiem tra mk moi
				if (!password1.equals(password2)) {
					errorPassword = "Confirmation password is not correct with new password";
				} else {
					customer.setPassword(password2);
					customerService.save(customer);
					errorPassword = "Change passowrd is succesfully";
				}
			}
		}

		return "redirect:/account/change/index";
	}
	
	@RequestMapping("/account/forgot/index")
	public String forgotIndex(Model model) {
		loadNameAcount(model);
	
		return "/account/forgotPw";
	}

	public boolean dologin(String username, String password) {
		Customer customer = null;
		Staff staff = null;

		Optional<Customer> customerOP = customerService.findById(username);
		Optional<Staff> staffOP = staffService.findById(username);

		boolean login = false;

		if (customerOP.isPresent()) {
			customer = customerOP.get();
			if (password.equals(customer.getPassword())) {
				login = true;
			}
		}
		if (staffOP.isPresent()) {
			staff = staffOP.get();
			if (password.equals(staff.getPassword())) {
				login = true;
			}
		}
		return login;
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
