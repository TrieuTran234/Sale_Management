package com.dao;

import org.springframework.data.repository.CrudRepository;

import com.entitySQL.OrderStatus;



public interface OrderStatusDAO extends CrudRepository<OrderStatus, String>{
	@Override
	default OrderStatus save(OrderStatus entity) {
		// TODO Auto-generated method stub
		return null;
	}
}
