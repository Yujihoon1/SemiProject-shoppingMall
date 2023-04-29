package com.shopping.mall;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.mall.Dto.MypageDto;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@RequestMapping("/mypageupdateform")
	public String myapgeupdateform() {
		
		return "mypageupdateform";
	}
	
	@RequestMapping("/mypageupdate")
	public String mypageupdate(Model model, MypageDto dto) {
		
		return "mypage";
	}
	
	@RequestMapping("/mypagecart")
	public String mypagecart() {
		
		return "mypagecart";
	}
}
