package com.yahari.kiosk.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.yahari.kiosk.command.AdminCommand;
import com.yahari.kiosk.domain.Admin;
import com.yahari.kiosk.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	@GetMapping("kiosk/add_admin")
	public String addAdminForm(AdminCommand adminCommand) {
		return "kiosk/admin/add_admin";
	}
	
	@PostMapping("kiosk/add_admin")
	public String addAdmin(AdminCommand adminCommand) {
		adminCommand.setAdminAccountNum(adminCommand.getAdminAccountNum1() + "-" +
				adminCommand.getAdminAccountNum2() + "-" + adminCommand.getAdminAccountNum3());
		
		if(!adminService.findAllAdmin().isEmpty()) {
			return "kiosk/admin/admin_login";
		}
		Admin admin = new Admin();
		admin.setAdminAccountNum(adminCommand.getAdminAccountNum());
		admin.setAdminBalance(0);
		admin.setAdminPasswd(adminCommand.getAdminPasswd());
		adminService.addAdmin(admin);
		return "kiosk/admin/add_admin_success";
	}
	
	@GetMapping("kiosk/admin_login")
	public String adminLoginForm(AdminCommand adminCommand) {
		return "kiosk/admin/admin_login";
	}
	
	@PostMapping("kiosk/admin_login")
	public String adminLogin(AdminCommand adminCommand, HttpServletRequest req) {
		Admin admin = adminService.findAdminByPasswd(adminCommand.getAdminPasswd());
		if(admin == null) {
			return "kiosk/admin/admin_login";
		}
		HttpSession session = req.getSession();
		session.setAttribute("admin", admin);
		return "kiosk/admin/admin_page";
	}
	
	@GetMapping("kiosk/admin_page")
	public String adminPageForm(AdminCommand adminCommand) {
		return "kiosk/admin/admin_page";
	}
}
