package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.entity.ReportMonth;
import com.entitySQL.Order;
import com.entitySQL.OrderStatus;


public interface OrderDAO extends PagingAndSortingRepository<Order, Integer> {
	List<Order> findByOrderstatus(OrderStatus orderstatus);
	
	
	//tạo report theo tháng: ngày tạo giá, số lượng
	@Query("SELECT new ReportMonth( MONTH(o.createDate),sum(o.price), count(o)) "
			+ " FROM Order o "
			+ " GROUP BY MONTH(o.createDate)"
			+ " ORDER BY sum(o.price) DESC")
			List<ReportMonth> getInventoryByMonth();
}
