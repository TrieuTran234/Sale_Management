package com.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entitySQL.Customer;
import com.entitySQL.Staff;



@Service
public class FindUserService {
	@Autowired
	SessionService session;
	@Autowired
	CustomerService customerService;
	@Autowired
	StaffService staffService;

	public String findUser(String user) {
		try {

			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			//check xem co phai staff ko
			Optional<Staff> staffOP = staffService.findById(session.get("user"));
			
			Customer customer3 = null;
			Staff staff3 = null;
			
			if (customerOP.isPresent() && staffOP.isEmpty()) {
				customer3 = customerOP.get();
				staff3 = null;
				return customer3.getFullname();
			} else {
				staff3 = staffOP.get();
				customer3 = null;
				return staff3.getFullname();
			}
		} catch (Exception e) {
			return "Account?";
		}

	}
	public String findUserID(String user) {
		try {

			Optional<Customer> customerOP = customerService.findById(session.get("user"));
			Optional<Staff> staffOP = staffService.findById(session.get("user"));
			
			Customer customer3 = null;
			Staff staff3 = null;
			if (customerOP.isPresent() && staffOP.isEmpty()) {
				customer3 = customerOP.get();
				staff3 = null;
				return customer3.getId();
			} else {
				staff3 = staffOP.get();
				customer3 = null;
				return staff3.getId();
			}
		} catch (Exception e) {
			return "Account?";
		}

	}
}
