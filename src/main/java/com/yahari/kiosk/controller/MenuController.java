package com.yahari.kiosk.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yahari.kiosk.command.MenuCommand;
import com.yahari.kiosk.command.PayCommand;
import com.yahari.kiosk.domain.Menu;
import com.yahari.kiosk.domain.MenuDrink;
import com.yahari.kiosk.domain.MenuRamen;
import com.yahari.kiosk.domain.MenuSide;
import com.yahari.kiosk.provider.MenuTypeProvider;
import com.yahari.kiosk.service.MenuService;

@Controller
public class MenuController {
	
	@Autowired
	private MenuService menuService;

	//1. add_menu
	@GetMapping("kiosk/add_menu")
	public String addMenuForm(MenuCommand menuCommand) {
		return "kiosk/menu/add_menu";
	}
	
	@PostMapping("kiosk/add_menu")
	public String addMenu(MenuCommand menuCommand) {
		
		Menu menu = null;
		char menuType = menuCommand.getMenuType();
		
		if(menuType == 'R') {
			menu = new MenuRamen();
		} else if(menuType == 'S') {
			menu = new MenuSide();
		} else if(menuType == 'D') {
			menu = new MenuDrink();
		}
		
		menu.setName(menuCommand.getName());
		menu.setPrice(menuCommand.getPrice());
		menu.setMenuType(menuType);
		menu.setImageName(menuCommand.getImageName());
		menuService.addMenu(menu);
		
		return "kiosk/menu/add_menu_success";
	}
	
	
	
	//2.list_menu	
	@GetMapping("kiosk/menu")
	public String menuForm(MenuCommand menuCommand, HttpServletRequest requset) {
		List<Menu> mList = menuService.findAllMenuList();
		requset.setAttribute("menuList", mList);
		return "kiosk/menu/menu";
	}
	
	@PostMapping("kiosk/menu")
	public String menu(MenuCommand menuCommand, HttpServletRequest req, PayCommand payCommand) {
		HttpSession session = req.getSession();
		List<Menu> mList = new ArrayList<>();
		List<Integer> countList = new ArrayList<>();
		for(String name : menuCommand.getMenuName()) {
			mList.add(menuService.findMenuByName(name));
		}
		double payment = 0.0;
		for(Menu menu : mList) {
			for(int i = 0; i < 1; i++) {
				payment += menu.getPrice() * menuCommand.getMenuCount().get(0);
				countList.add(menuCommand.getMenuCount().get(0));
				menuCommand.getMenuCount().remove(0);
			}
		}
		session.setAttribute("pay", payment);
		session.setAttribute("cart", mList);
		session.setAttribute("countList", countList);
		return "kiosk/pay/pay";
	}

	
	
	//3.update_menu
	@GetMapping("kiosk/update_menu")
	public String updateMenuForm(MenuCommand menuCommand) {
		return "kiosk/menu/update_menu";
	}
	
	@PostMapping("kiosk/update_menu")
	public String updateMenu(MenuCommand menuCommand, HttpServletRequest request) {
		Menu menu = null;
		System.out.println(menuCommand.getName());
		menu = menuService.findMenuByName(menuCommand.getName());
		menu.setPrice(menuCommand.getPrice());
		menuService.updateMenu(menu);
		
		return "kiosk/menu/update_menu_success";
	}
	
	
	//4.delete_menu
	@GetMapping("kiosk/delete_menu")
	public String deleteMenuForm(MenuCommand menuCommand) {
		return "kiosk/menu/delete_menu";
	}
	
	@PostMapping("kiosk/delete_menu")
	public String deleteMenu(MenuCommand menuCommand, @RequestParam String name) {
		menuService.deleteMenuByMenuName(name);
		return "kiosk/menu/delete_menu_success";
	}
	
	
	//5.select_menu
	@GetMapping("kiosk/select_menu")
	public String selectMenuForm(HttpServletRequest requset) {
		requset.setAttribute("menuList", menuService.findAllMenuList());
		System.out.println(menuService.findAllMenuList());
		return "kiosk/menu/select_menu";
	}
	
	@ModelAttribute("menuTypeList")
	public List<MenuTypeProvider> menuTypeList(){
		List<MenuTypeProvider> list = new ArrayList<>();
		list.add(new MenuTypeProvider("라멘", 'R'));
		list.add(new MenuTypeProvider("사이드", 'S'));
		list.add(new MenuTypeProvider("음료", 'D'));
		return list;
	}
}
