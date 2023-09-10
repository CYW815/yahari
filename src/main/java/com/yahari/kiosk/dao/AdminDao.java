package com.yahari.kiosk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.yahari.kiosk.domain.Admin;

@Component
public class AdminDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public void addAdmin(Admin admin) {
		String sql = "INSERT INTO admin (adminPasswd, adminBalance, "
				+ "adminAccountNum) VALUES (?, ?, ?)";
		jdbcTemplate.update(sql, admin.getAdminPasswd(), admin.getAdminBalance()
				, admin.getAdminAccountNum());
	}
	
	public void updateAdmin(Admin admin) {
		String sql = "UPDATE admin SET adminPasswd = ?, adminAccountNum = ?, adminBalance = ? WHERE aid = ?";
		jdbcTemplate.update(sql, admin.getAdminPasswd(), 
				admin.getAdminAccountNum(),admin.getAdminBalance(), admin.getAid());
	}
	
	public List<Admin> findAllAdmin() {
		String sql = "SELECT * FROM admin";
		try {
			return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Admin>(Admin.class));
		}catch(DataAccessException e) {
			return null;
		}
	}
	
	public Admin findAdminByPasswd(String passwd) {
		String sql = "SELECT * FROM admin WHERE adminPasswd = ?";
		try{
			return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), passwd);
		}catch(DataAccessException e) {
			return null;
		}
	}
	
	public Admin findAdminByAccountNum(String accountNum) {
		String sql = "SELECT * FROM admin WHERE adminAccountNum = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), accountNum);
		}catch(DataAccessException e) {
			return null;
		}
	}
}
