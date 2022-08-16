package com.serviceImlp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dao.StaffDAO;
import com.entitySQL.Staff;
import com.service.StaffService;





@Service
public class StaffServiceImpl implements StaffService {
	@Autowired
	StaffDAO staffDAO;

	@Override
	public <S extends Staff> S save(S entity) {
		return staffDAO.save(entity);
	}

	@Override
	public List<Staff> findAll(Sort sort) {
		return (List<Staff>)staffDAO.findAll(sort);
	}

	@Override
	public List<Staff> saveAll(List<Staff> entities) {
		return (List<Staff>)staffDAO.saveAll(entities);
	}

	@Override
	public Page<Staff> findAll(Pageable pageable) {
		return staffDAO.findAll(pageable);
	}

	@Override
	public Optional<Staff> findById(String id) {
		return staffDAO.findById(id);
	}

	@Override
	public boolean existsById(String id) {
		return staffDAO.existsById(id);
	}

	@Override
	public List<Staff> findAll() {
		return (List<Staff>)staffDAO.findAll();
	}

	@Override
	public List<Staff> findAllById(List<String> ids) {
		return (List<Staff>)staffDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return staffDAO.count();
	}

	@Override
	public void deleteById(String id) {
		staffDAO.deleteById(id);
	}

	@Override
	public void delete(Staff entity) {
		staffDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<String> ids) {
		staffDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<Staff> entities) {
		staffDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		staffDAO.deleteAll();
	}

}
