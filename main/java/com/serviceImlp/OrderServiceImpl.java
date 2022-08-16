package com.serviceImlp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dao.OrderDAO;
import com.entitySQL.Order;
import com.service.OrderService;


@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	OrderDAO orderDAO;
	@Override
	public <S extends Order> S save(S entity) {
		return orderDAO.save(entity);
	}

	@Override
	public List<Order> findAll(Sort sort) {
		return (List<Order>)orderDAO.findAll(sort);
	}

	@Override
	public List<Order> saveAll(List<Order> entities) {
		return (List<Order>)orderDAO.saveAll(entities);
	}

	@Override
	public Page<Order> findAll(Pageable pageable) {
		return orderDAO.findAll(pageable);
	}

	@Override
	public Optional<Order> findById(Integer id) {
		return orderDAO.findById(id);
	}

	@Override
	public boolean existsById(Integer id) {
		return orderDAO.existsById(id);
	}

	@Override
	public List<Order> findAll() {
		return (List<Order>)orderDAO.findAll();
	}

	@Override
	public List<Order> findAllById(List<Integer> ids) {
		return (List<Order>)orderDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return orderDAO.count();
	}

	@Override
	public void deleteById(Integer id) {
		orderDAO.deleteById(id);
	}

	@Override
	public void delete(Order entity) {
		orderDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Integer> ids) {
		orderDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<Order> entities) {
		orderDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		orderDAO.deleteAll();
	}
}
