package com.yahari.kiosk.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yahari.kiosk.dao.CustomerDao;
import com.yahari.kiosk.domain.Customer;

@Component
public class CustomerService {
	@Autowired
	CustomerDao customerDao;
	
	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);
	}
	
	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
	}
	
	public Customer findCustomerByPhone(String phone) {
		return customerDao.findCustomerByPhone(phone);
	}
	
	public List<Customer> findCustomerList(){
		return customerDao.findCustomerList();
	}
	
	public long findCustomerCount() {
		return customerDao.findCustomerCount();
	}
	
	public List<Customer> findCustomerByDate(Date date){
		return customerDao.findCustomerByDate(date);
	}
	
	public long findCustomerByDateCount(Date date) {
		return customerDao.findCustomerByDateCount(date);
	}
}
