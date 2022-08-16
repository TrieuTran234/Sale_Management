package com.dao;

import org.springframework.data.repository.CrudRepository;

import com.entitySQL.Category;



public interface CategoryDAO extends CrudRepository<Category, String>{

}
