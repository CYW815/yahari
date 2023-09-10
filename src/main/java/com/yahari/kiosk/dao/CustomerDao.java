package com.yahari.kiosk.dao;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.yahari.kiosk.domain.Customer;

@Component
public class CustomerDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public void addCustomer(Customer customer) {
		String sql = "INSERT INTO customer (name, phone, passwd, balance, point) VALUE (?, ?, ?, ?, ?)";
		
		jdbcTemplate.update(sql, customer.getName(), customer.getPhone(), 
				customer.getPasswd(), customer.getBalance(), customer.getPoint());
	}
	
	public void updateCustomer(Customer customer) {
		String sql = "UPDATE customer SET name = ?, phone = ?, passwd = ?, "
				+ "balance = ?, point = ? WHERE cid = ?";
		jdbcTemplate.update(sql, customer.getName(), customer.getPhone(), 
				customer.getPasswd(), customer.getBalance(), customer.getPoint(), 
				customer.getCid());
	}
	
	public Customer findCustomerByPhone(String phone) {
		String sql = "SELECT * FROM customer WHERE phone = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Customer>(Customer.class), phone);
		}catch(DataAccessException e) {
			return null;
		}
	}
	
	public List<Customer> findCustomerList(){
		String sql = "SELECT * FROM customer";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Customer>(Customer.class));
	}
	
	public long findCustomerCount() {
		String sql = "SELECT count(*) FROM customer";
		return jdbcTemplate.queryForObject(sql, Long.class);
	}
	
	public List<Customer> findCustomerByDate(Date date){
		String sql = "SELECT * FROM customer WHERE DATE(regDate) = ?";
		try {
			return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Customer>(Customer.class), date);
		}catch(DataAccessException e) {
			return null;
		}
	}
	
	public long findCustomerByDateCount(Date date) {
		String sql = "SELECT count(*) FROM customer WHERE DATE(regDate) = ?";
		return jdbcTemplate.queryForObject(sql, Long.class, date);
	}
}
