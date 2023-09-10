package com.yahari.kiosk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping("kiosk")
	public String kiosk(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		if(session != null) {
			session.invalidate();
		}
		return "kiosk/index";
	}
	
	@GetMapping("kiosk/hereOrNot")
	  public String hereOrNot() {
	    return "kiosk/hereOrNot";
	}
}
