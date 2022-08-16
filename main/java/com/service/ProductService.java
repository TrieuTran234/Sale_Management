package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.entitySQL.Product;



public interface ProductService {

	void deleteAll();

	void deleteAll(List<Product> entities);

	void deleteAllById(List<Integer> ids);

	void delete(Product entity);

	void deleteById(Integer id);

	long count();

	List<Product> findAllById(List<Integer> ids);

	List<Product> findAll();

	boolean existsById(Integer id);

	Optional<Product> findById(Integer id);

	Page<Product> findAll(Pageable pageable);

	List<Product> saveAll(List<Product> entities);

	List<Product> findAll(Sort sort);

	<S extends Product> S save(S entity);

}
