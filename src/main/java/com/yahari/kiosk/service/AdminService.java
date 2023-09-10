package com.yahari.kiosk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yahari.kiosk.dao.AdminDao;
import com.yahari.kiosk.domain.Admin;

@Component
public class AdminService {
	
	@Autowired
	AdminDao adminDao;
	
	public void addAdmin(Admin admin) {
		adminDao.addAdmin(admin);
	}
	
	public void updateAdmin(Admin admin) {
		adminDao.updateAdmin(admin);
	}
	
	public List<Admin> findAllAdmin() {
		return adminDao.findAllAdmin();
	}
	
	public Admin findAdminByPasswd(String passwd) {
		return adminDao.findAdminByPasswd(passwd);
	}

	public Admin findAdminByAccountNum(String accountNum) {
		return adminDao.findAdminByAccountNum(accountNum);
	}
}
