package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.entitySQL.OrderDetail;



public interface OrderDetailsService {

	void deleteAll();

	void deleteAll(List<OrderDetail> entities);

	void deleteAllById(List<Integer> ids);

	void delete(OrderDetail entity);

	void deleteById(Integer id);

	long count();

	List<OrderDetail> findAllById(List<Integer> ids);

	List<OrderDetail> findAll();

	boolean existsById(Integer id);

	Optional<OrderDetail> findById(Integer id);

	Page<OrderDetail> findAll(Pageable pageable);

	List<OrderDetail> saveAll(List<OrderDetail> entities);

	List<OrderDetail> findAll(Sort sort);

	<S extends OrderDetail> S save(S entity);

}
