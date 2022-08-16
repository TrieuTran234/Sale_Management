package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.entitySQL.Staff;



public interface StaffService {

	void deleteAll();

	void deleteAll(List<Staff> entities);

	void deleteAllById(List<String> ids);

	void delete(Staff entity);

	void deleteById(String id);

	long count();

	List<Staff> findAllById(List<String> ids);

	List<Staff> findAll();

	boolean existsById(String id);

	Optional<Staff> findById(String id);

	Page<Staff> findAll(Pageable pageable);

	List<Staff> saveAll(List<Staff> entities);

	List<Staff> findAll(Sort sort);

	<S extends Staff> S save(S entity);

}
