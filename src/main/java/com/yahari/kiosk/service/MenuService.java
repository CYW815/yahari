package com.yahari.kiosk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yahari.kiosk.dao.MenuDao;
import com.yahari.kiosk.domain.Menu;

@Component
public class MenuService {

	@Autowired
	MenuDao menuDao;
	
	public void addMenu(Menu menu) {
		menuDao.addMenu(menu);
	}
	
	public List<Menu> findAllMenuList(){
		return menuDao.findAllMenuList();
	}
	
	public Menu findMenuByName(String name) {
		return menuDao.findMenuByName(name);
	}
	
	public void updateMenu(Menu menu) {
		menuDao.updateMenu(menu);
	}
	
	public void deleteMenuByMenuName(String name) {
		menuDao.deleteMenuByMenuName(name);
	}
}
