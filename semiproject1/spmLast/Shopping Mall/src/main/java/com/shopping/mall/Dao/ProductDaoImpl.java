package com.shopping.mall.Dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.mall.Dto.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ProductDto productDetail(int productnumber) {
		ProductDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"productDetail", productnumber);
		} catch (Exception e) {
			System.out.println("[error] : productdetail");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<ProductDto> selectList() {
		List<ProductDto> res = new ArrayList<ProductDto>();
		try {
			res = sqlSession.selectList(NAMESPACE+"selectList");
		} catch (Exception e) {
			System.out.println("[error] : select list");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<ProductDto> changeMenu(String productcategory) {
		List<ProductDto> result = new ArrayList<ProductDto>();
		
		try {
			result = sqlSession.selectList(NAMESPACE+"changeMenu",productcategory);
		} catch (Exception e) {
			System.out.println("[error]: changeMenu");
			e.printStackTrace();
		}
		
		return result;
	}
	
}
