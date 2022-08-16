package com.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.entitySQL.Staff;



public interface StaffDAO extends PagingAndSortingRepository<Staff, String> {
	@Query("SELECT o FROM Staff o WHERE o.fullname LIKE ?1")
	Page<Staff> findByKeywords(String keywords, Pageable pageable);
}
