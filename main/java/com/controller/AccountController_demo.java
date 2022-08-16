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

public class AccountController_demo {
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
	public String login1(Model model) {
		model.addAttribute("user1", cookie.getValue("user1"));	
		loadNameAcount(model);
		return "/account/login";
	}

	@PostMapping("/account/login")
	public String login2(Model model) {
		// co the dung = request.getParameter("value");
		String un = param.getString("username", "");
		String pw = param.getString("password", "");
		boolean rm = param.getBoolean("remember", false);// chuc mang remember me

		String message = "";

		Customer customer3 = null;
		Staff staff3 = null;
		Optional<Customer> customerOP = customerService.findById(un);
		Optional<Staff> staffOP = staffService.findById(un);

		// xu ly khi la khach hang
		if (customerOP.isPresent()) {
			customer3 = customerOP.get();
			if (customer3.getActive() == false) {
				message = "Your account is not active";
				model.addAttribute("message", message);
			} else if (!dologin(un, pw)) {
				message = "Invalid password customer";
				model.addAttribute("user1",un);
				model.addAttribute("message", message + " mk la:" + customer3.getPassword());
			} else {
				/// truong hop dang nhap thanh cong
				session.set("user", un);
				session.set("admin", null);
				// can hoi phuc, check lai security-uri
				// ===========================================================================
//				String uri = session.get("security-uri");
//				if (uri != null) {
//					message = "security-uri false";
//					model.addAttribute("message", message);
//				}
			}
		}
		// xy ly khi la nhan vien
		if (staffOP.isPresent()) {
			staff3 = staffOP.get();
			if (!dologin(un, pw)) {
				message = "Invalid password staff";
				model.addAttribute("user1",un);
				model.addAttribute("message", message + " mk la:" + staff3.getPassword());
			} else {
				session.set("user", un);
				session.set("admin", "is Admin");
				// can hoi phuc, check lai security-uri
				// ===========================================================================
//				String uri = session.get("security-uri");
//				if (uri == null) {
//					message = "security-uri false";
//					model.addAttribute("message", message);
//				}

			}
		}

		// kime tra nut remember
		if (rm == true) {
			model.addAttribute("user1", cookie.add("user1", un, 10).getValue());
		} else {
			cookie.remove("user1");
		}
		String name = findUserService.findUser(session.get("user"));// ???????????????????????????????????????????????
		
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
		session.remove("user");
		return "redirect:/account/login";
	}

	//////// dang ky
	String errorRegis = "";

	@RequestMapping("/account/register/index")
	public String registerIndex(Model model) {
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

					//gui gmail
//					String siteURL = Utility.getsiteURL(request);
//					sendVerificationEmail(item, siteURL);
//					errorRegis = "Please check your email to verify your account";

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

	public void sendVerificationEmail(Customer item, String siteUrl) throws MessagingException {
		String subject = "Please verify your registration";
		String to = item.getEmail();
		String from = "phuctlhps15061@fpt.edu.vn";
		String body = "<p>Dear" + item.getFullname() + ",</p>";

		body += "<p>Please click the link below to verify to your regisreation:</p>";

		String verifyURL = siteUrl + "/verify?code=" + item.getVerificationCode();

		body += "<h3><a href=\"" + verifyURL + "\">Verify</a></h3>";

		body += "<p>Thank you <br>The superPhuc Team</p>";

		mailerService.send(from, to, null, null, subject, body, null);
	}

	@GetMapping("/verify")
	public String verifyCustomer(@Param("code") String code, Model model) {
		System.out.println(code + "code ne");
		boolean verified = customerService.verify(code);
		String pageTitle = verified ? "Verification Succeeded!" : "Verification Failed";
		errorRegis = pageTitle;
	
		return "redirect:/account/register/index";

	}

	// cap nhat tk
	String errorEdit = "";
	String passwordEdit = "";
	boolean active;

	@RequestMapping("/account/editprofile/index")
	public String editProfileIndex(Model model) {
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
	public String changePasswordIndex(Model model) {
		String name1 = findUserService.findUser(session.get("user"));

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
		loadNameAcount(model);
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
			System.out.println(e+"loi kho load acount");
		}
	}

}
