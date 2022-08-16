package com.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.entitySQL.Promotion;
import com.entitySQL.PromotionDetail;



public interface PromotionDetailDAO extends CrudRepository<PromotionDetail, Integer>{
	List<PromotionDetail> findByPromotion(Promotion promotion);
	
	
}
