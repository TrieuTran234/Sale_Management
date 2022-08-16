package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.entitySQL.Customer;


public interface CustomerService {

	void deleteAll();

	void deleteAll(List<Customer> entities);

	void deleteAllById(List<String> ids);

	void delete(Customer entity);

	void deleteById(String id);

	long count();

	List<Customer> findAllById(List<String> ids);

	List<Customer> findAll();

	boolean existsById(String id);

	Optional<Customer> findById(String id);

	Page<Customer> findAll(Pageable pageable);

	List<Customer> saveAll(List<Customer> entities);

	List<Customer> findAll(Sort sort);

	<S extends Customer> S save(S entity);

	boolean verify(String verificationCode);

}
