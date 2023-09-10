package com.yahari.kiosk.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.yahari.kiosk.command.CustomerCommand;
import com.yahari.kiosk.domain.Customer;
import com.yahari.kiosk.service.CustomerService;
import com.yahari.kiosk.service.MenuService;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	@Autowired
	MenuService menuService;
	
	@GetMapping("/kiosk/add_customer")
	public String addCustomerForm(CustomerCommand customerCommand) {
		return "kiosk/customer/add_customer";
	}
	
	@PostMapping("/kiosk/add_customer")
	public String addCustomer(@ModelAttribute("customer") 
							CustomerCommand customerCommand, Model model) {
		customerCommand.setPhone(customerCommand.getPhone1() + "-" + customerCommand.getPhone2() + "-" + customerCommand.getPhone3());
		model.addAttribute("customer", customerCommand);
		
		Customer customer = new Customer();
		customer.setName(customerCommand.getName());
		customer.setPasswd(customerCommand.getPasswd());
		customer.setPhone(customerCommand.getPhone());
		customer.setBalance(customerCommand.getBalance());
		customer.setPoint(customerCommand.getPoint());
		customerService.addCustomer(customer);
		return "kiosk/customer/add_customer_success";
	}
	
	@GetMapping("/kiosk/customer_login")
	public String loginForm(CustomerCommand customerCommand) {
		return "kiosk/customer/customer_login";
	}
	
	@PostMapping("/kiosk/customer_login")
	public String login(CustomerCommand customerCommand, HttpServletRequest req) {
		Customer customer = customerService.findCustomerByPhone(customerCommand.getPhone1() + "-" +
				customerCommand.getPhone2() + "-" + customerCommand.getPhone3());
		if(customer != null && customer.getPasswd().equals(customerCommand.getPasswd())){
			HttpSession session = req.getSession();
			session.setAttribute("customer", customer);
			return "/kiosk/hereOrNot";
		}
		return "kiosk/customer/customer_login";
	}
	
	@GetMapping("kiosk/customer_page")
	public String updateCustomerForm(CustomerCommand customerCommand) {
		return "kiosk/customer/customer_page";
	}
	
	@PostMapping("kiosk/customer_page")
	public String updateCustomer(CustomerCommand customerCommand, HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		Customer customer = (Customer)session.getAttribute("customer");	
		double balance = customer.getBalance();
		double cash = customerCommand.getBalance();
		customer.setBalance(balance + cash);
		customerService.updateCustomer(customer);
		session.setAttribute("customer", customer);
		req.setAttribute("cashCharge", customerCommand);
		return "kiosk/customer/customer_page";
	}
	
	@GetMapping("kiosk/select_customer")
	public String customerListForm(CustomerCommand customerCommand) {
		return "kiosk/customer/select_customer";
	}
	
	@PostMapping("kiosk/select_customer")
	public String customerList(CustomerCommand customerCommand, Model model) {
		String findType = customerCommand.getSelect();
		
		switch (findType) {
		case "전체":
				List<Customer> listAll = customerService.findCustomerList();
				model.addAttribute("customerCount", customerService.findCustomerCount());
				model.addAttribute("customerList", listAll);
			break;
		case "전화번호":
				Customer customer = customerService.findCustomerByPhone(customerCommand.getPhone());
				model.addAttribute("customerOne", customer);
			break;
		case "날짜":
				SimpleDateFormat format = new SimpleDateFormat("yyMMdd");
			Date date;
			try {
				date = format.parse(customerCommand.getDate());
			} catch (ParseException e) {
				return "kiosk/customer/select_customer";
			}
				List<Customer> listDate = customerService.findCustomerByDate(date);
				model.addAttribute("customerCount", customerService.findCustomerByDateCount(date));
				model.addAttribute("customerList", listDate);
			break;
		}
		return "kiosk/customer/select_customer";
	}
	
	
	@ModelAttribute("PhoneNumberList")
	public List<String> phoneNumberList() {
		List<String> list = new ArrayList<>();
		list.add("010");
		list.add("011");
		return list;
	}
	
	@ModelAttribute("CustomerSelectList")
	public List<String> customerSelectList(){
		List<String> list = new ArrayList<>();
		list.add("전체");
		list.add("전화번호");
		list.add("날짜");
		return list;
	}
}
