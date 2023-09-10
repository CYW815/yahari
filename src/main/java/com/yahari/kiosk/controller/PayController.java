package com.yahari.kiosk.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.yahari.kiosk.command.PayCommand;
import com.yahari.kiosk.domain.Admin;
import com.yahari.kiosk.domain.Customer;
import com.yahari.kiosk.service.AdminService;
import com.yahari.kiosk.service.CustomerService;

@Controller
public class PayController {
	public static int orderNum = 0;
	@Autowired
	CustomerService customerService;
	@Autowired
	AdminService adminService;
	
	@GetMapping("/kiosk/pay")
	public String payForm(PayCommand payCommand) {
		return "kiosk/pay/pay";
	}
	@PostMapping("kiosk/pay")
	public String pay(HttpServletRequest req, PayCommand payCommand) {
 		HttpSession session = req.getSession();
		Customer customer = (Customer)session.getAttribute("customer");
		double payment = payCommand.getBalance();
		double balance = customer.getBalance() - payment;
		double updatePoint = ((payment * 0.1) + customer.getPoint()) - payCommand.getUsePoint();
		customer.setBalance(balance);
		customer.setPoint(updatePoint);
		customerService.updateCustomer(customer);
		Admin admin = adminService.findAdminByAccountNum("123456-12-123456");
		double updateBalance = admin.getAdminBalance() + payment;
		admin.setAdminBalance(updateBalance);
		adminService.updateAdmin(admin);
		orderNum++;
		session.setAttribute("receipt", payCommand.getReceiptType());
		session.setAttribute("orderNum", orderNum);
		return "kiosk/pay/pay_success";
	}
	
	@GetMapping("/kiosk/receipt")
	public String receipt() {
		return "kiosk/pay/receipt";
	}
}
