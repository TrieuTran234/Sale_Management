package com.serviceImlp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dao.PromotionDAO;
import com.entitySQL.Promotion;
import com.service.PromontionService;


@Service
public class PromotionServiceImpl implements PromontionService {
	@Autowired
	PromotionDAO promotionDAO;
	
	@Override
	public <S extends Promotion> S save(S entity) {
		return promotionDAO.save(entity);
	}

	@Override
	public List<Promotion> findAll(Sort sort) {
		return (List<Promotion>)promotionDAO.findAll(sort);
	}

	@Override
	public List<Promotion> saveAll(List<Promotion> entities) {
		return (List<Promotion>)promotionDAO.saveAll(entities);
	}

	@Override
	public Page<Promotion> findAll(Pageable pageable) {
		return promotionDAO.findAll(pageable);
	}

	@Override
	public Optional<Promotion> findById(String id) {
		return promotionDAO.findById(id);
	}

	@Override
	public boolean existsById(String id) {
		return promotionDAO.existsById(id);
	}

	@Override
	public List<Promotion> findAll() {
		return (List<Promotion>)promotionDAO.findAll();
	}

	@Override
	public List<Promotion> findAllById(List<String> ids) {
		return (List<Promotion>)promotionDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return promotionDAO.count();
	}

	@Override
	public void deleteById(String id) {
		promotionDAO.deleteById(id);
	}

	@Override
	public void delete(Promotion entity) {
		promotionDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<String> ids) {
		promotionDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<Promotion> entities) {
		promotionDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		promotionDAO.deleteAll();
	}
}
