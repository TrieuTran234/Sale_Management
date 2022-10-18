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
	@Autowired
	MailerService mailerService;

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
			} else if (!checkLogin(un, pw)) {
				message = "Sai mật khẩu."+ " mk là:" + customer3.getPassword();
				model.addAttribute("user1", un);
				model.addAttribute("message", message );
			} else {
				session.set("user", un);
				session.set("admin", null);
			}
		}
		// xy ly khi la nhan vien
		if (staffOP.isPresent()) {
			staff3 = staffOP.get();
			if (!checkLogin(un, pw)) {
				message = "Sai mật khẩu."+ " mk là:" + staff3.getPassword();
				model.addAttribute("user1", un);
				model.addAttribute("message", message );
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
		// neu dang nhap thanh cong
		if (message.equals("")) {
			message = "Login in successfully";
			session.set("user", un);
			String uri = session.get("security-uri");

			if (uri != null) {

				return "redirect:/index";

			} else {
				message = "Login in successfully";

			}

		} else {
			model.addAttribute("message", message);
		}
		String name = findUserService.findUser(session.get("user"));

		if (message.equals("Login in successfully")) {
			return "redirect:/index";
		} else {
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
	public String getEditProfile(Model model) {
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
	public String postEditProfile(Customer item, Model model, @RequestParam("photo") MultipartFile multipartFile,
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
	public String getChangePass(Model model) {

		String name = findUserService.findUserID(session.get("user"));
		model.addAttribute("userid", name);

		model.addAttribute("error", errorPassword);
		errorPassword = "";
		loadNameAcount(model);
		return "/account/changepassword";
	}

	@RequestMapping("/account/change")
	public String postChangePassword(Model model, @RequestParam("password") String password,
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

	// Quen mk
	String errorForgot = "";
	String checkCode = "";
	String random = "";
	String emailForgot = "";

	@RequestMapping("/account/forgot/index")
	public String forgotIndex(Model model) {

		model.addAttribute("error", errorForgot);
		model.addAttribute("checkcode", checkCode);
		model.addAttribute("email", emailForgot);

		errorForgot = "";
		return "/account/forgotPw";
	}

	@RequestMapping("/account/forgot")
	public String forgot(Model model, @RequestParam("email") String email) throws MessagingException {

		Optional<Customer> customerOP = customerDAO.findByEmail(email);
		emailForgot = email;
		if (customerOP.isPresent()) {
			Customer customer = customerOP.get();
			String randomCode = RandomString.make(8);

			random = randomCode;

			sendNewPassWordEmail(customer, randomCode);
			errorForgot = "We have sent you a new code via email. Please check your email message notifications and\r\n"
					+ "re-login";

			checkCode = "1";
		} else {
			errorForgot = "The entered email is not found in the list";
		}

		return "redirect:/account/forgot/index";
	}

	@RequestMapping("/account/forgot/reset")
	public String resetPassword(@RequestParam("code") String code, @RequestParam("password") String password,
			@RequestParam("password1") String password1, @RequestParam("email") String email, Model model) {

		Optional<Customer> customerOP = customerDAO.findByEmail(email);
		if (customerOP.isPresent()) {
			if (code.equals(random)) {
				if (password.equals(password1)) {
					Customer customer = customerOP.get();
					customer.setPassword(password1);
					customerService.save(customer);
					errorForgot = "Change password successfully";
					checkCode = "";
				} else {
					errorForgot = "Confirmation password is not correct with new password";
					checkCode = "1";
				}
			} else {
				errorForgot = "The code is incorrect";
				checkCode = "1";
			}
		}

		return "redirect:/account/forgot/index";
	}

	public void sendNewPassWordEmail(Customer item, String randomCode) throws MessagingException {
		String subject = "Please check YOUR new password";
		String to = item.getEmail();
		String from = "TheSuperPhuc";
		String body = "<p>Dear " + item.getFullname() + ",</p>";

		body += "<p> Please get this new password log back into your account and change password</p>";

		body += "<p> Your code <h2>" + randomCode + "</h2> </p>";

		body += "<p>Thank you <br>The superPhuc Team</p>";

		mailerService.send(from, to, null, null, subject, body, null);
	}

	public boolean checkLogin(String username, String password) {
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
