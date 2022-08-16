package com.serviceImlp;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.entity.ItemOrder;
import com.service.ItemOrderService;



@SessionScope
@Service
public class ItemOrderServiceImpl implements ItemOrderService {
	Map<Integer, ItemOrder> map = new HashMap<>(); // don hang tam thoi

	
	@Override
	public void add(ItemOrder item,Integer qty) {
		ItemOrder cartItem = map.get(item.getId());
		if (cartItem == null) {
			map.put(item.getId(), item);
		} else {
			cartItem.setQty(cartItem.getQty() + qty);
		}

	}

	
	@Override
	public void remove(Integer id) {
		map.remove(id);

	}
	@Override
	public ItemOrder find(Integer id) {
		return map.get(id);

	}
	@Override
	public ItemOrder findName(String name) {
		return map.get(name);

	}
	@Override
	public ItemOrder update(Integer id, int qty) {
		ItemOrder cartItem=map.get(id);
		cartItem.setQty(qty);
		return cartItem;
	}

	@Override
	public void clear() {
		map.clear();

	}

	
	@Override
	public Collection<ItemOrder> getItems() {
		
		return map.values();
	}

	
	@Override
	public int getCount() {
		
		return map.values().size();
	}

	
	@Override
	public double getAmount() {
		
		return map.values().stream()
				.mapToDouble(item -> item.getQty() * item.getPrice()).sum();
	}

}
