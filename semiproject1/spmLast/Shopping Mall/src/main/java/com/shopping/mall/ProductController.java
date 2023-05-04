package com.shopping.mall;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shopping.mall.Dto.ProductDto;
import com.shopping.mall.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductService proS;
	
	@RequestMapping("/productdetail")
	public String productdetail(Model model, int productnumber) {
		
		logger.info("[Product Controller] : detail");
		
		model.addAttribute("dto",proS.productDetail(productnumber));
		
		return "productdetail";
	}
	
	@ResponseBody
	@PostMapping(value="/changeMenu")
	public Map<String, Object> ajaxselect(Model model, @RequestBody String productcategory){
		
		logger.info("[Product Controller] : changeMenu");
		
		Map<String, Object> map = new HashMap<String, Object>();
		//boolean check = false;
		System.out.println("productcategory: " + productcategory);
		String str = productcategory.replace("\"", "");
		
		//model.addAttribute("list", proS.changeMenu(str));
		
//		if(proS.changeMenu(str) != null) {
//			check = true;
//		}
		List<ProductDto> list = proS.changeMenu(str);
		map.put("list", list);
		System.out.println("list size : " + list.size());
		return map;
	}
	
	@RequestMapping("/productcategory")
	public String productcategory(Model model, String productcategory) {
		logger.info("[Product Controller] : changeMenuList");
		model.addAttribute("list",proS.changeMenu(productcategory));
		return "main";	
	}
}
