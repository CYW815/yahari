package com.yahari.kiosk.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.yahari.kiosk.domain.Menu;
import com.yahari.kiosk.rowmapper.MenuRowMapper;

@Component
public class MenuDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public MenuDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void addMenu(Menu menu) {
		String sql = "INSERT INTO Menu (name, price, menuType, imageName) "
				   + "VALUE (?, ?, ?, ?)";
		
		jdbcTemplate.update(sql, menu.getName(), 
				menu.getPrice(), String.valueOf(menu.getMenuType()), menu.getImageName());
	}
	
	public List<Menu> findAllMenuList(){
		String sql = "SELECT mid, name, price, menuType, imageName FROM Menu";
		return jdbcTemplate.query(sql, new MenuRowMapper());
	}
	
	public void updateMenu(Menu menu) {
		String sql = "UPDATE Menu SET price = ? WHERE name = ?";
		jdbcTemplate.update(sql, menu.getPrice(), menu.getName());
	}
	
	public Menu findMenuByName(String name) {
		String sql ="SELECT * FROM Menu WHERE name = ?";
		return jdbcTemplate.queryForObject(sql, new MenuRowMapper(), name);
	}
	
	public void deleteMenuByMenuName(String name) {
		String sql = "DELETE FROM Menu WHERE name = ?";
		jdbcTemplate.update(sql, name);
	}
}
