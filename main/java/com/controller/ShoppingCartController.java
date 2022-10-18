package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CartItemDAO;
import com.entity.Item;
import com.entitySQL.CartItem;
import com.entitySQL.Customer;
import com.entitySQL.Product;
import com.service.CartItemService;
import com.service.CustomerService;
import com.service.FindUserService;
import com.service.ParamService;
import com.service.ProductService;
import com.service.SessionService;
import com.service.ShoppingCartService;

@Controller
public class ShoppingCartController {

	@Autowired
	ProductService productService;

	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	ParamService paramService;

	@Autowired
	CustomerService customerService;
	@Autowired
	SessionService session;
	@Autowired
	CartItemService cartItemService;
	@Autowired
	CartItemDAO cartItemDAO;
	@Autowired
	FindUserService findUserService;
	

	@RequestMapping("/client/shoppingcart/index")
	public String viewCarts(Model model) {
		loadNameAcount(model);
		try {
			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			if (customerOP.isPresent()) {
				double sumPrice = 0;
				for (CartItem item : cartItemDAO.findByCustomer(customerOP.get())) {
					sumPrice += (item.getPrice() * item.getQty());
				}
				model.addAttribute("price", sumPrice);
				model.addAttribute("cart_item", cartItemDAO.findByCustomer(customerOP.get()));
				System.out.println(cartItemDAO.findByCustomer(customerOP.get()).size());
			}
		} catch (Exception e) {
			double sumPrice = 0;
			for (Item item : shoppingCartService.getItems()) {
				sumPrice += (item.getPrice() * item.getQty());

			}
			model.addAttribute("error1", "bug");
			model.addAttribute("price", sumPrice);
			model.addAttribute("cart_item", shoppingCartService.getItems());
		}

		return "/client/shopping-cart";
	}

	@RequestMapping("/client/shoppingcart/add/{id}")
	public String addCart(@PathVariable("id") Integer id) {

		Optional<Product> productOP = productService.findById(id);
		try {
			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			if (customerOP.isPresent()) {
				if (productOP.isPresent()) {
					Product product = productOP.get();
					Customer customer = customerOP.get();
					CartItem item = new CartItem();
					item.setId(1);
					item.setName(product.getName());
					item.setImage(product.getImage());
					item.setPrice(product.getPrice());
					item.setProduct(product);
					item.setCustomer(customer);
					Integer qty = paramService.getInt("qty", 1);
					item.setQty(qty);
					System.out.println(qty);
					cartItemService.save(item, qty);

					System.out.println(item.getName() + " hiii+database");

				}
			}
		} catch (Exception e) {
			if (productOP.isPresent()) {
				Product product = productOP.get();
				Item item = new Item();
				item.setId(product.getId());
				item.setName(product.getName());
				item.setImage(product.getImage());
				item.setPrice(product.getPrice());
				Integer qty = paramService.getInt("qty", 1);
				item.setQty(qty);
				System.out.println(qty);
				shoppingCartService.add(item, qty);
				System.out.println(item.getName() + " hiii");
			}
		}
		return "redirect:/client/shoppingcart/index";
	}

	@RequestMapping("/client/shoppingcart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		try {
			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			if (customerOP.isPresent()) {
				cartItemService.deleteById(id);
			}
		} catch (Exception e) {
			shoppingCartService.remove(id);
		}
		return "redirect:/client/shoppingcart/index";
	}

	@RequestMapping("/client/shoppingcart/update/{id}")
	public String update(@PathVariable("id") Integer id, @RequestParam("qty") int qty) {
		try {
			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			if (customerOP.isPresent()) {
				Optional<CartItem> itemOP = cartItemService.findById(id);
				if (itemOP.isPresent()) {
					CartItem item = itemOP.get();

					cartItemService.update(item, qty);
				}
			}
		} catch (Exception e) {
			shoppingCartService.update(id, qty);
		}
		return "redirect:/client/shoppingcart/index";
	}

	@RequestMapping("/client/shoppingcart/update/{id}/{qty}")
	public String update2(@PathVariable("id") Integer id, @PathVariable("qty") int qty) {
		System.out.println("qty la " + qty);
		shoppingCartService.update(id, qty);
		return "redirect:/client/shoppingcart/index";
	}

	@RequestMapping("/client/shoppingcart/clear")
	public String clear() {
		try {

			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			if (customerOP.isPresent()) {
				cartItemService.deleteAll();
			}
		} catch (Exception e) {
			shoppingCartService.clear();
		}
		return "redirect:/client/shoppingcart/index";
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
