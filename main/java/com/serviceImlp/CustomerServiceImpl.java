package com.serviceImlp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dao.CustomerDAO;
import com.entitySQL.Customer;
import com.service.CustomerService;


@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	CustomerDAO customerDAO;

	@Override
	public <S extends Customer> S save(S entity) {
		return customerDAO.save(entity);
	}

	@Override
	public List<Customer> findAll(Sort sort) {
		return (List<Customer>)customerDAO.findAll(sort);
	}

	@Override
	public List<Customer> saveAll(List<Customer> entities) {
		return (List<Customer>)customerDAO.saveAll(entities);
	}

	@Override
	public Page<Customer> findAll(Pageable pageable) {
		return customerDAO.findAll(pageable);
	}

	@Override
	public Optional<Customer> findById(String id) {
		return customerDAO.findById(id);
	}

	@Override
	public boolean existsById(String id) {
		return customerDAO.existsById(id);
	}

	@Override
	public List<Customer> findAll() {
		return (List<Customer>)customerDAO.findAll();
	}

	@Override
	public List<Customer> findAllById(List<String> ids) {
		return (List<Customer>)customerDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return customerDAO.count();
	}

	@Override
	public void deleteById(String id) {
		customerDAO.deleteById(id);
	}

	@Override
	public void delete(Customer entity) {
		customerDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<String> ids) {
		customerDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<Customer> entities) {
		customerDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		customerDAO.deleteAll();
	}
	
	@Override
	public boolean verify(String verificationCode) {
		Optional<Customer> customerOP=customerDAO.findByVerificationCode(verificationCode);
		if(customerOP.isEmpty() ) {
			System.out.println("rong~");
			return false;
		}else {
			
			Customer customer=customerOP.get();
			System.out.println(customer.getId());
			customer.setActive(true);
			customerDAO.save(customer);
			return true;
		}
	}
}
