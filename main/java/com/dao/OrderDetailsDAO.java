package com.dao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.entitySQL.Order;
import com.entitySQL.OrderDetail;
import com.entitySQL.Product;



public interface OrderDetailsDAO extends PagingAndSortingRepository<OrderDetail, Integer> {
	List<OrderDetail> findByOrder(Order order);
	
	List<OrderDetail> findByProduct(Product product);
}
