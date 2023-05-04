package com.shopping.mall.Dao;

import java.util.List;

import com.shopping.mall.Dto.ProductDto;

public interface ProductDao {
	
	String NAMESPACE = "spmproduct.";
	public List<ProductDto> selectList();
	public ProductDto productDetail(int productnumber);
	public List<ProductDto> changeMenu(String productcategory);
}
