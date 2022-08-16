package com.service;

import java.util.Collection;

import com.entity.ItemOrder;



public interface ItemOrderService {

	double getAmount();

	int getCount();

	Collection<ItemOrder> getItems();

	void clear();

	ItemOrder update(Integer id, int qty);

	void remove(Integer id);

	void add(ItemOrder item, Integer qty);

	ItemOrder find(Integer id);

	ItemOrder findName(String name);

}
