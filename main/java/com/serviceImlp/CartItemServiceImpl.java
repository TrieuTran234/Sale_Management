package com.serviceImlp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dao.CartItemDAO;
import com.entitySQL.CartItem;
import com.service.CartItemService;


@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
	CartItemDAO cartItemDAO;

	@Override
	public void save(CartItem entity, Integer qty) {
		Optional<CartItem> cartItemOP = cartItemDAO.findByCustomerAndProduct(entity.getCustomer(), entity.getProduct());
		CartItem cartItem = null;
		if (cartItemOP.isEmpty()) {
			cartItem = entity;
		} else {

			cartItem = cartItemOP.get();
			System.out.println(cartItem.getId());
			cartItem.setQty(cartItem.getQty() + qty);
		}
		cartItemDAO.save(cartItem);
	}
	@Override
	public void update(CartItem entity, Integer qty) {
		Optional<CartItem> cartItemOP = cartItemDAO.findByCustomerAndProduct(entity.getCustomer(), entity.getProduct());
		CartItem cartItem = null;
		if (cartItemOP.isPresent()) {

			cartItem = cartItemOP.get();
			System.out.println(cartItem.getId());
			cartItem.setQty( qty);
		}
		cartItemDAO.save(cartItem);
	}
	@Override
	public List<CartItem> findAll(Sort sort) {
		return (List<CartItem>) cartItemDAO.findAll(sort);
	}

	@Override
	public List<CartItem> saveAll(List<CartItem> entities) {
		return (List<CartItem>) cartItemDAO.saveAll(entities);
	}

	@Override
	public Page<CartItem> findAll(Pageable pageable) {
		return cartItemDAO.findAll(pageable);
	}

	@Override
	public Optional<CartItem> findById(Integer id) {
		return cartItemDAO.findById(id);
	}

	@Override
	public boolean existsById(Integer id) {
		return cartItemDAO.existsById(id);
	}

	@Override
	public List<CartItem> findAll() {
		return (List<CartItem>) cartItemDAO.findAll();
	}

	@Override
	public List<CartItem> findAllById(List<Integer> ids) {
		return (List<CartItem>) cartItemDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return cartItemDAO.count();
	}

	@Override
	public void deleteById(Integer id) {
		cartItemDAO.deleteById(id);
	}

	@Override
	public void delete(CartItem entity) {
		cartItemDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Integer> ids) {
		cartItemDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<CartItem> entities) {
		cartItemDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		cartItemDAO.deleteAll();
	}
}
