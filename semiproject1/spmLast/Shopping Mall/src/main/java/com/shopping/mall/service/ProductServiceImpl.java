package com.shopping.mall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.mall.Dao.ProductDao;
import com.shopping.mall.Dto.ProductDto;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao prodao;

	@Override
	public ProductDto productDetail(int productnumber) {
		
		return prodao.productDetail(productnumber);
	}

	@Override
	public List<ProductDto> selectList() {
		return prodao.selectList();
	}

	@Override
	public List<ProductDto> changeMenu(String productcategory) {
		return prodao.changeMenu(productcategory);
	}
}
