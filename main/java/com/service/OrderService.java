package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.entitySQL.Order;



public interface OrderService {

	void deleteAll();

	void deleteAll(List<Order> entities);

	void deleteAllById(List<Integer> ids);

	void delete(Order entity);

	void deleteById(Integer id);

	long count();

	List<Order> findAllById(List<Integer> ids);

	List<Order> findAll();

	boolean existsById(Integer id);

	Optional<Order> findById(Integer id);

	Page<Order> findAll(Pageable pageable);

	List<Order> saveAll(List<Order> entities);

	List<Order> findAll(Sort sort);

	<S extends Order> S save(S entity);

}
