package com.dao;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.entitySQL.CartItem;
import com.entitySQL.Customer;
import com.entitySQL.Product;




public interface CartItemDAO extends PagingAndSortingRepository<CartItem, Integer > {
	List<CartItem> findByCustomer(Customer customer);
	Optional<CartItem> findByCustomerAndProduct(Customer customer,Product product);
	
	@Transactional
	@Modifying
	@Query("DELETE FROM  CartItem c WHERE c.customer=?1")
	public void deleteByCustomer(Customer id);
	
	
}
