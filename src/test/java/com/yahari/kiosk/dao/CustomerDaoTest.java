package com.yahari.kiosk.dao;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@SpringBootTest
public class CustomerDaoTest {
	
	@Autowired
	private CustomerDao customerDao;
	
	@Test
	public void findCustomerList() {
		customerDao.findCustomerList();
		
		
		
	}
	
		
}
