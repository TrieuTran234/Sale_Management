package com.serviceImlp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dao.OrderDetailsDAO;
import com.entitySQL.OrderDetail;
import com.service.OrderDetailsService;


@Service
public class OrderDetailsServiceImpl implements OrderDetailsService {
	@Autowired
	OrderDetailsDAO orderDetailsDAO;
	@Override
	public <S extends OrderDetail> S save(S entity) {
		return orderDetailsDAO.save(entity);
	}

	@Override
	public List<OrderDetail> findAll(Sort sort) {
		return (List<OrderDetail>)orderDetailsDAO.findAll(sort);
	}

	@Override
	public List<OrderDetail> saveAll(List<OrderDetail> entities) {
		return (List<OrderDetail>)orderDetailsDAO.saveAll(entities);
	}

	@Override
	public Page<OrderDetail> findAll(Pageable pageable) {
		return orderDetailsDAO.findAll(pageable);
	}

	@Override
	public Optional<OrderDetail> findById(Integer id) {
		return orderDetailsDAO.findById(id);
	}

	@Override
	public boolean existsById(Integer id) {
		return orderDetailsDAO.existsById(id);
	}

	@Override
	public List<OrderDetail> findAll() {
		return (List<OrderDetail>)orderDetailsDAO.findAll();
	}

	@Override
	public List<OrderDetail> findAllById(List<Integer> ids) {
		return (List<OrderDetail>)orderDetailsDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return orderDetailsDAO.count();
	}

	@Override
	public void deleteById(Integer id) {
		orderDetailsDAO.deleteById(id);
	}

	@Override
	public void delete(OrderDetail entity) {
		orderDetailsDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Integer> ids) {
		orderDetailsDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<OrderDetail> entities) {
		orderDetailsDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		orderDetailsDAO.deleteAll();
	}
}
