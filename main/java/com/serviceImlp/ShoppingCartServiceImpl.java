package com.serviceImlp;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.entity.Item;
import com.service.ShoppingCartService;




@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	Map<Integer, Item> map = new HashMap<>(); // gio hang

	@Override
	public void add(Item item,Integer qty) {
		Item cartItem = map.get(item.getId());
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
	public Item find(Integer id) {
		return map.get(id);

	}
	@Override
	public Item findName(String name) {
		return map.get(name);
	}

	@Override
	public Item update(Integer id, int qty) {
		Item cartItem=map.get(id);
		cartItem.setQty(qty);
		return cartItem;
	}

	@Override
	public void clear() {
		map.clear();

	}

	@Override
	public Collection<Item> getItems() {
		
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
