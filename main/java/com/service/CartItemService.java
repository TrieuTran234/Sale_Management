package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.entitySQL.CartItem;



public interface CartItemService {

	void deleteAll();

	void deleteAll(List<CartItem> entities);

	void deleteAllById(List<Integer> ids);

	void delete(CartItem entity);

	void deleteById(Integer id);

	long count();

	List<CartItem> findAllById(List<Integer> ids);

	List<CartItem> findAll();

	boolean existsById(Integer id);

	Optional<CartItem> findById(Integer id);

	Page<CartItem> findAll(Pageable pageable);

	List<CartItem> saveAll(List<CartItem> entities);

	List<CartItem> findAll(Sort sort);

	void save(CartItem entity,Integer qty);

	void update(CartItem entity, Integer qty);

}
