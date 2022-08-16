package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.entitySQL.Promotion;



public interface PromontionService {

	void deleteAll();

	void deleteAll(List<Promotion> entities);

	void deleteAllById(List<String> ids);

	void delete(Promotion entity);

	void deleteById(String id);

	long count();

	List<Promotion> findAllById(List<String> ids);

	List<Promotion> findAll();

	boolean existsById(String id);

	Optional<Promotion> findById(String id);

	Page<Promotion> findAll(Pageable pageable);

	List<Promotion> saveAll(List<Promotion> entities);

	List<Promotion> findAll(Sort sort);

	<S extends Promotion> S save(S entity);

	

}
