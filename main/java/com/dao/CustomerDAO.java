package com.dao;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.entitySQL.Customer;


public interface CustomerDAO extends PagingAndSortingRepository<Customer, String> {
	@Query("UPDATE Customer c SET c.active = true WHERE	c.id=?1")
	@Modifying
	public void unactive(String id);
	
	Optional<Customer> findByVerificationCode(String verificationCode);
	
	Optional<Customer> findByEmail(String email);
	@Query("SELECT o FROM Customer o WHERE o.fullname LIKE ?1")
	Page<Customer> findByKeywords(String keywords, Pageable pageable);
	
}
