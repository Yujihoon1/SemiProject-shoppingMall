package com.shopping.mall.service;

import java.util.List;

import com.shopping.mall.Dto.ProductDto;

public interface ProductService {
	
	public List<ProductDto> selectList();
	public ProductDto productDetail(int productnumber);
	public List<ProductDto> changeMenu(String productcategory);
	
	
}
