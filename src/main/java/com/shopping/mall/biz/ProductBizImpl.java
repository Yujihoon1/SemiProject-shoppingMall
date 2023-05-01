package com.shopping.mall.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.mall.Dao.ProductDao;
import com.shopping.mall.Dto.ProductDto;

@Service
public class ProductBizImpl implements ProductBiz {

    @Autowired
    private ProductDao dao;

    @Override
    public List<ProductDto> showMain() {
        return dao.showMain();
    }

    @Override
    public ProductDto showDetail(int productnumber) {
        return dao.showDetail(productnumber);
    }

}
