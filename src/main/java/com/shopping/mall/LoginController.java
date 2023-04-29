package com.shopping.mall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping("/loginform")
	public String loginForm() {
		
		return "login";
	}
	
	@RequestMapping("/idfindform")
	public String idfindForm() {
		
		return "id";
	}
	@RequestMapping("/pwfindform")
	public String pwForm() {
		
		return "pw";
	}
	@RequestMapping("/membershipform")
	public String membershipForm() {
		
		return "membership";
	}
}
