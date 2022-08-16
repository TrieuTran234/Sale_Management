package com.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.entitySQL.Promotion;


public interface PromotionDAO extends PagingAndSortingRepository<Promotion, String> {

}
