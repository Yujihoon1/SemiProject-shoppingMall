package com.shopping.mall.Dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.mall.Dto.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public List<ProductDto> showMain() {
        List<ProductDto> res = new ArrayList<ProductDto>();

        try {
            res = sqlSession.selectList(NAMESPACE + "showMain");
        } catch (Exception e) {
            System.out.println("[error] : show main");
            e.printStackTrace();
        }

        return res;
    }

    @Override
    public ProductDto showDetail(int productnumber) {
        ProductDto res = null;

        try {
            res = sqlSession.selectOne(NAMESPACE + "showDetail", productnumber);
        } catch (Exception e) {
            System.out.println("[error] : show detail");
            e.printStackTrace();
        }
        return res;
    }

}
