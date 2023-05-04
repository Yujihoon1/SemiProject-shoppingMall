package com.shopping.mall.biz;

import java.util.List;

import com.shopping.mall.Dto.ProductDto;

public interface ProductBiz {
    public List<ProductDto> showMain();

    public ProductDto showDetail(int productnumber);

}
