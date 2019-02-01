package com.agatawielgus.employeemanagement.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/showMyLoginPage")
	public String showMyLognPage() {
		return "plain-login";
	}
	
	
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		return "access-denied";
	}

}
