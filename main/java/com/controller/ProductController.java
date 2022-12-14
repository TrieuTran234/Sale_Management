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

import com.dao.ProductDAO;
import com.entitySQL.Category;
import com.entitySQL.Product;
import com.service.CategoryService;
import com.service.CustomerService;
import com.service.FindUserService;
import com.service.ParamService;
import com.service.ProductService;
import com.service.SessionService;
import com.service.StaffService;



@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ParamService paramService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SessionService session;
	@Autowired
	CustomerService customerService;
	@Autowired
	StaffService staffService;
	@Autowired
	FindUserService findUserService;
	String error = "";

	@RequestMapping("/admin/product/index")
	public String index(Model model) {
		Product product = new Product();
		loadNameAcount( model);
		model.addAttribute("item", product);
		
		List<Product> listProducts = productService.findAll();
		model.addAttribute("items", listProducts);
		model.addAttribute("error", error);
		
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);
		
		model.addAttribute("ids", 1);
		error = "";
		return "/admin/product-edit";
	}

	@RequestMapping("/admin/product/list")
	public String getProductByKeyWord(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("keywords") Optional<String> kw, @RequestParam("field") Optional<String> field) {
		loadNameAcount( model);
		Product product = new Product();
		model.addAttribute("item", product);
		// search
		String kwords = "";
		if (kw.isPresent()) {
			kwords = kw.orElse(session.get("keyword"));
			session.set("keywords", kwords);
		} else {
			kwords = "";
		}
		
		// sort and paniagte
		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.ASC, field.orElse("price")));
		Page<Product> page = productDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("field", field.orElse("price").toLowerCase());
		model.addAttribute("page", page);
		return "/admin/product-list";
	}

	//create
	@RequestMapping("/admin/product/create")
	public String createProduct(Product product, @RequestParam("photo") MultipartFile multipartFile) {
		if (!productService.existsById(product.getId())) {
			// upload hinh
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			String uploadDir = "uploads/product/";
			product.setImage(fileName);
			System.out.println(fileName);
			productService.save(product);
			paramService.save(multipartFile, uploadDir);
		} else {
			error = "Id already exists";
		}
		return "redirect:/admin/product/index";
	}

	@RequestMapping("/admin/product/update")
	public String updateProduct(Product item, Model model, @RequestParam("photo") MultipartFile multipartFile,
			@RequestParam("image1") String image1) {
		loadNameAcount( model);
		if (!productService.existsById(item.getId())) {

			error = "Id to update is not in the list";

		} else {
			// upload hinh

			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			if (fileName.equals("")) {
				item.setImage(image1);
			} else {
				String uploadDir = "uploads/product/";
				item.setImage(fileName);
				paramService.save(multipartFile, uploadDir);
			}

			productService.save(item);

			error = "";
		}

		return "redirect:/admin/product/index";

	}

	@RequestMapping("/admin/product/delete/{id}")
	public String deleteProduct(@PathVariable("id") String id) {
		productService.deleteById(Integer.parseInt(id));
		return "redirect:/admin/product/list";
	}

	@RequestMapping("/admin/product/edit/{id}")
	public String editProduct(Model model, @PathVariable("id") String id) {
		loadNameAcount( model);
		Product item = productService.findById(Integer.parseInt(id)).get();
		model.addAttribute("item", item);
		List<Product> items = productService.findAll();
		model.addAttribute("items", items);
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		return "/admin/product-edit";
	}

	// client
	@RequestMapping("/client/product")
	public String clientproductpanigate(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("keywords") Optional<String> kw, @RequestParam("field") Optional<String> field) {
		loadNameAcount( model);
		// search
		String kwords = "";
		if (kw.isPresent()) {
			kwords = kw.orElse(session.get("keyword"));
			session.set("keywords", kwords);
		} else {
			kwords = "";
		}

		// field category
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		// sort and paniagte
		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));
		
		Page<Product> page = productDAO.findByKeywords("%" + kwords + "%", pageable);
		
		model.addAttribute("field", field.orElse("price").toUpperCase());
		model.addAttribute("page", page);

		return "/client/shop";
	}

	// client findbycategory
	@RequestMapping("/client/product/findbycate/{id}")
	public String clientProductFindbyCate(@PathVariable("id") String id, Model model,
			@RequestParam("p") Optional<Integer> p, @RequestParam("field") Optional<String> field,
			@RequestParam("keywords") Optional<String> kw) {
		loadNameAcount( model);
		// search
		String kwords = "";
		if (kw.isPresent()) {
			kwords = kw.orElse(session.get("keyword"));
			session.set("keywords", kwords);
		} else {
			kwords = "";
		}
		// field category
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));

		Optional<Category> categoryOP = categoryService.findById(id);
		if (categoryOP.isPresent()) {
			Category category = categoryOP.get();
			Page<Product> page = productDAO.findByNameAndCategory("%" + kwords + "%", category, pageable);
			model.addAttribute("field", field.orElse("price").toUpperCase());
			model.addAttribute("page", page);
		}
		// sort and paniagte

		return "/client/shop";
	}
	
	//find by price
	@RequestMapping("/product/search/price1")
	public String findByPrice1(Model model, @RequestParam("p") Optional<Integer> p,
			 @RequestParam("field") Optional<String> field) {
		
		loadNameAcount( model);
		// field category
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		// find by price
		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));
		
		Page<Product> page = productDAO.findByPriceBetween(0,20, pageable);
		
		model.addAttribute("field", field.orElse("price").toUpperCase());
		model.addAttribute("page", page);

		return "/client/shop";
	}
	@RequestMapping("/product/search/price2")
	public String findByPrice2(Model model, @RequestParam("p") Optional<Integer> p,
			 @RequestParam("field") Optional<String> field) {
		loadNameAcount( model);

		// field category
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		// find by price
		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));
		
		Page<Product> page = productDAO.findByPriceBetween(21,50, pageable);
		
		model.addAttribute("field", field.orElse("price").toUpperCase());
		model.addAttribute("page", page);

		return "/client/shop";
	}
	@RequestMapping("/product/search/price3")
	public String findByPrice3(Model model, @RequestParam("p") Optional<Integer> p,
			 @RequestParam("field") Optional<String> field) {
		
		loadNameAcount( model);
		// field category
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		// find by price
		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));
		
		Page<Product> page = productDAO.findByPriceBetween(51,100, pageable);
		
		model.addAttribute("field", field.orElse("price").toUpperCase());
		model.addAttribute("page", page);

		return "/client/shop";
	}
	@RequestMapping("/product/search/price4")
	public String findByPrice4(Model model, @RequestParam("p") Optional<Integer> p,
			 @RequestParam("field") Optional<String> field) {
		loadNameAcount( model);

		// field category
		List<Category> listCategories = categoryService.findAll();
		model.addAttribute("itemCate", listCategories);

		// find by price
		Pageable pageable = PageRequest.of(p.orElse(0), 6, Sort.by(Direction.DESC, field.orElse("price")));
		
		Page<Product> page = productDAO.findByPriceBetween(101,500, pageable);
		
		model.addAttribute("field", field.orElse("price").toUpperCase());
		model.addAttribute("page", page);

		return "/client/shop";
	}
	public void loadNameAcount(Model model) {
		try {
			// ?????c gi?? tr??? c???a attribute trong session
			String name = findUserService.findUser(session.get("user"));
			model.addAttribute("name", name);
		} catch (Exception e) {
			System.out.println(e + "loi kho load acount");
		}
	}
	
	
	
	

}
