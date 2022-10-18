package com.controller;

import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CartItemDAO;
import com.dao.CustomerDAO;
import com.dao.OrderDAO;
import com.dao.OrderDetailsDAO;
import com.dao.OrderStatusDAO;
import com.dao.ProductDAO;
import com.dao.StatusDetailDAO;
import com.entity.Item;
import com.entity.ItemOrder;
import com.entitySQL.CartItem;
import com.entitySQL.Customer;
import com.entitySQL.Order;
import com.entitySQL.OrderDetail;
import com.entitySQL.OrderStatus;
import com.entitySQL.StatusDetail;
import com.service.CartItemService;
import com.service.CustomerService;
import com.service.FindUserService;
import com.service.ItemOrderService;
import com.service.MailerService;
import com.service.OrderDetailsService;
import com.service.OrderService;
import com.service.ParamService;
import com.service.ProductService;
import com.service.SessionService;
import com.service.ShoppingCartService;

import net.bytebuddy.utility.RandomString;

@Controller
public class OrderController {
	@Autowired
	OrderService orderService;
	@Autowired
	OrderDetailsService orderDetailService;
	@Autowired
	OrderStatusDAO orderStatusDAO;
	@Autowired
	CartItemService cartItemService;
	@Autowired
	CustomerService customerService;
	@Autowired
	CustomerDAO customerDAO;
	@Autowired
	SessionService sessionService;
	@Autowired
	CartItemDAO cartItemDAO;
	@Autowired
	ItemOrderService itemOrderService;
	@Autowired
	ProductService productService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	StatusDetailDAO statusDetailDAO;
	@Autowired
	OrderDetailsDAO orderDetailsDAO;
	@Autowired
	ShoppingCartService shoppingCartService;
	@Autowired
	MailerService mailerService;
	@Autowired
	FindUserService findUserService;
	@Autowired
	SessionService session;
	double sum = 0;
	String error = "";

	@RequestMapping("/client/order/index")
	public String index(Model model) {
		loadNameAcount( model);
		try {

			Optional<Customer> customerOP = customerService.findById(sessionService.get("user"));
			if (customerOP.isPresent()) {
				Customer customer = customerOP.get();
				for (ItemOrder itemOrder : itemOrderService.getItems()) {
					sum += itemOrder.getPrice() * itemOrder.getQty();
				}
				model.addAttribute("item", customer);
				model.addAttribute("items", itemOrderService.getItems());
				model.addAttribute("sum", sum);
				model.addAttribute("error", error);
				model.addAttribute("checkcreate", "RONG");
				error = "";
				sum = 0;
			}

		} catch (Exception e) {
			for (ItemOrder itemOrder : itemOrderService.getItems()) {
				sum += itemOrder.getPrice() * itemOrder.getQty();

			}
			model.addAttribute("items", itemOrderService.getItems());
			model.addAttribute("sum", sum);
			model.addAttribute("error", error);
			model.addAttribute("checkcreate", "");
			error = "";
			sum = 0;

		}
		return "/client/checkout";
	}

	// add tat ca san pham co' trong gio hang qua don hang thanh toan va xoa tat ca
	// san pham nam trong gio hang do'
	@RequestMapping("/client/order/addall")
	public String addAllOrderItem() {
		try {

			Optional<Customer> customerOP = customerService.findById(sessionService.get("user"));
			if (customerOP.isPresent()) {
				Customer customer = customerOP.get();

				List<CartItem> listCartItems = cartItemDAO.findByCustomer(customer);
				for (CartItem cartItem : listCartItems) {
					ItemOrder itemOrder = new ItemOrder();
					itemOrder.setId(cartItem.getProduct().getId());
					itemOrder.setName(cartItem.getName());
					itemOrder.setPrice(cartItem.getPrice());
					itemOrder.setImage(cartItem.getImage());
					itemOrder.setQty(cartItem.getQty());

					itemOrderService.add(itemOrder, cartItem.getQty());
				}
				cartItemDAO.deleteByCustomer(customer);
			}
		} catch (Exception e) {
			for (Item Item : shoppingCartService.getItems()) {
				ItemOrder itemOrder = new ItemOrder();
				itemOrder.setId(Item.getId());
				itemOrder.setName(Item.getName());
				itemOrder.setPrice(Item.getPrice());
				itemOrder.setImage(Item.getImage());
				itemOrder.setQty(Item.getQty());

				itemOrderService.add(itemOrder, Item.getQty());
			}

			shoppingCartService.clear();
		}
		return "redirect:/client/order/index";

	}

	// add san pham tu gio hang qua don hang thanh toan va xoa san pham do' trong
	// gio hang
	@RequestMapping("/client/order/add/{id}")
	public String addOrderItem(@PathVariable("id") Integer id) {

		try {
			Optional<Customer> customerOP = customerService.findById(sessionService.get("user"));
			if (customerOP.isPresent()) {
				Customer customer = customerOP.get();
				CartItem cartItem = cartItemDAO.findByCustomerAndProduct(customer, productService.findById(id).get())
						.get();
				ItemOrder itemOrder = new ItemOrder();
				itemOrder.setId(cartItem.getProduct().getId());
				itemOrder.setName(cartItem.getName());
				itemOrder.setPrice(cartItem.getPrice());
				itemOrder.setImage(cartItem.getImage());
				itemOrder.setQty(cartItem.getQty());
				itemOrderService.add(itemOrder, cartItem.getQty());
				cartItemService.delete(cartItem);
			}
		} catch (Exception e) {
			Item Item = shoppingCartService.find(id);
			ItemOrder itemOrder = new ItemOrder();
			itemOrder.setId(productService.findById(id).get().getId());
			itemOrder.setName(Item.getName());
			itemOrder.setPrice(Item.getPrice());
			itemOrder.setImage(Item.getImage());
			itemOrder.setQty(Item.getQty());
			itemOrderService.add(itemOrder, Item.getQty());
			shoppingCartService.remove(id);
		}

		return "redirect:/client/order/index";

	}

	// xoa san pham tu don hang thanh toan ,dua san pham ve lai gio hang
	@RequestMapping("/client/order/remove/{id}")
	public String removeOrderItem(@PathVariable("id") Integer id) {
		try {

			Optional<Customer> customerOP = customerService.findById(sessionService.get("user"));
			if (customerOP.isPresent()) {
				Customer customer = customerOP.get();
				ItemOrder itemOrder = itemOrderService.find(id);
				itemOrderService.remove(id);
				CartItem cartItem = new CartItem();
				cartItem.setName(itemOrder.getName());
				cartItem.setImage(itemOrder.getImage());
				cartItem.setPrice(itemOrder.getPrice());

				cartItem.setQty(itemOrder.getQty());
				cartItem.setCustomer(customer);
				cartItem.setProduct(productDAO.findByName(itemOrder.getName()).get(0));
				cartItemService.save(cartItem, itemOrder.getQty());
			}
		} catch (Exception e) {
			ItemOrder itemOrder = itemOrderService.find(id);
			itemOrderService.remove(id);
			Item Item = new Item();
			Item.setName(itemOrder.getName());
			Item.setImage(itemOrder.getImage());
			Item.setPrice(itemOrder.getPrice());

			Item.setQty(itemOrder.getQty());
			Item.setId(itemOrder.getId());
			shoppingCartService.add(Item, itemOrder.getQty());

		}
		return "redirect:/client/order/index";

	}

	// tao don hang
	@RequestMapping("/client/preorder")
	public String preOrder(@RequestParam("name") String namere, @RequestParam("address") String address,
			@RequestParam("phone") String phonere, @RequestParam("email") String email,
			@RequestParam("note") String note, @RequestParam("sum") Double sum,
			@RequestParam("password") String password, @RequestParam("check") Boolean check, HttpServletRequest request)
			throws MessagingException {
		try {

			Optional<Customer> customerOP = customerService.findById(sessionService.get("user"));
			if (customerOP.isPresent()) {
				if (password.equals(customerOP.get().getPassword())) {
					Order order = new Order();
					order.setNameRe(namere);
					order.setAddress(address);
					order.setPhoneRe(phonere);
					order.setEmail(email);
					order.setNote(note);
					order.setPrice(sum);
					order.setCustomer(customerOP.get());

					OrderStatus orderStatus = orderStatusDAO.findById("CG").get();

					order.setOrderstatus(orderStatus);
					orderService.save(order);
					// tao don hang chi tiet
					for (ItemOrder itemOrder : itemOrderService.getItems()) {
						OrderDetail orderDetail = new OrderDetail();
						orderDetail.setProduct(productService.findById(itemOrder.getId()).get());
						orderDetail.setQuantity(itemOrder.getQty());
						orderDetail.setPrice(itemOrder.getPrice());
						orderDetail.setOrder(order);
						orderDetailService.save(orderDetail);
					}
					StatusDetail statusDetail = new StatusDetail();
					statusDetail.setOrder(order);
					statusDetail.setDescription("Chua xac nhan");
					statusDetailDAO.save(statusDetail);
					//

					error = "Pre-order successfully";
					itemOrderService.clear();
				} else {
					error = "Incorrect password";
				}
			}
		} catch (Exception e) {
			if (check == true) {
				if (!customerDAO.existsById(email)) {
					String ramdomCode = RandomString.make(64);
					Customer customer = new Customer(email, false, namere, null, phonere, ramdomCode, address, email,
							password, null, null);
					customerService.save(customer);
					String siteURL = Utility.getsiteURL(request);
					sendVerificationEmail(customer, siteURL);

					Optional<Customer> customerOP = customerService.findById(email);
					if (customerOP.isPresent()) {
						if (password.equals(customerOP.get().getPassword())) {
							Order order = new Order();
							order.setNameRe(namere);
							order.setAddress(address);
							order.setPhoneRe(phonere);
							order.setEmail(email);
							order.setNote(note);
							order.setPrice(sum);
							order.setCustomer(customerOP.get());

							OrderStatus orderStatus = orderStatusDAO.findById("CG").get();

							order.setOrderstatus(orderStatus);
							orderService.save(order);
							// tao don hang chi tiet
							for (ItemOrder itemOrder : itemOrderService.getItems()) {
								OrderDetail orderDetail = new OrderDetail();
								orderDetail.setProduct(productService.findById(itemOrder.getId()).get());
								orderDetail.setQuantity(itemOrder.getQty());
								orderDetail.setPrice(itemOrder.getPrice());
								orderDetail.setOrder(order);
								orderDetailService.save(orderDetail);
							}
							StatusDetail statusDetail = new StatusDetail();
							statusDetail.setOrder(order);
							statusDetail.setDescription("Chua xac nhan");
							statusDetailDAO.save(statusDetail);
							//

							error = "Pre-order successfully, Pls check email confirm verify";
							itemOrderService.clear();
						}
					} else {
						Order order = new Order();
						order.setNameRe(namere);
						order.setAddress(address);
						order.setPhoneRe(phonere);
						order.setEmail(email);
						order.setNote(note);
						order.setPrice(sum);
						order.setCustomer(null);

						OrderStatus orderStatus = orderStatusDAO.findById("CG").get();

						order.setOrderstatus(orderStatus);
						orderService.save(order);
						// tao don hang chi tiet
						for (ItemOrder itemOrder : itemOrderService.getItems()) {
							OrderDetail orderDetail = new OrderDetail();
							orderDetail.setProduct(productService.findById(itemOrder.getId()).get());
							orderDetail.setQuantity(itemOrder.getQty());
							orderDetail.setPrice(itemOrder.getPrice());
							orderDetail.setOrder(order);
							orderDetailService.save(orderDetail);
						}
						StatusDetail statusDetail = new StatusDetail();
						statusDetail.setOrder(order);
						statusDetail.setDescription("Chua xac nhan");
						statusDetailDAO.save(statusDetail);
						//

						error = "Pre-order successfully";
						itemOrderService.clear();
					}
				} else {
					error = " ID (Email) already exists in the account list ! Pls login";
				}
			}
		}
		return "redirect:/client/order/index";
	}

	// admin
	@RequestMapping("/admin/order/index")
	public String adminOrder(Model model) {
		loadNameAcount( model);
		OrderStatus orderStatus = orderStatusDAO.findById("CG").get();
		List<Order> list = orderDAO.findByOrderstatus(orderStatus);
		List<Order> listDG = orderDAO.findByOrderstatus(orderStatusDAO.findById("DG").get());
		List<Order> listTC = orderDAO.findByOrderstatus(orderStatusDAO.findById("TC").get());
		model.addAttribute("items", list);
		model.addAttribute("itemsDG", listDG);
		model.addAttribute("itemsTC", listTC);
		return "/admin/order";
	}

	@RequestMapping("/admin/orderdetail/{id}")
	public String adminOrder1(Model model, @PathVariable("id") Integer id) {
		loadNameAcount( model);

		Order order = orderService.findById(id).get();
		List<OrderDetail> listOrderDetails = orderDetailsDAO.findByOrder(order);
		model.addAttribute("items", listOrderDetails);
		model.addAttribute("name", order.getOrderstatus().getName());
		return "/admin/orderdetail";
	}

	@RequestMapping("/admin/orderupdate/dg/{id}")
	public String adminUpdateSttDG(Model model, @PathVariable("id") Integer id) {
		loadNameAcount( model);
		Order order = orderService.findById(id).get();
		OrderStatus orderStatus = orderStatusDAO.findById("DG").get();
		order.setOrderstatus(orderStatus);
		orderService.save(order);
		model.addAttribute("name", order.getOrderstatus().getName());
		return "redirect:/admin/order/index";
	}

	@RequestMapping("/admin/orderupdate/tc/{id}")
	public String adminUpdateSttTC(Model model, @PathVariable("id") Integer id) {
		loadNameAcount( model);
		Order order = orderService.findById(id).get();
		OrderStatus orderStatus = orderStatusDAO.findById("TC").get();
		order.setOrderstatus(orderStatus);
		orderService.save(order);
		model.addAttribute("name", order.getOrderstatus().getName());
		return "redirect:/admin/order/index";
	}

	// send email dang ky neu chua co tk de order
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
