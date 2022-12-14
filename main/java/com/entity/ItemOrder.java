package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ItemOrder {
	Integer id;
	String name;
	String image;
	double price;
	int qty = 1;
}
