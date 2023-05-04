package com.shopping.mall.Dao;

import java.util.List;

import com.shopping.mall.Dto.ProductDto;

public interface ProductDao {
    String NAMESPACE = "spmproduct.";

    public List<ProductDto> showMain();

    public ProductDto showDetail(int productnumber);
}
