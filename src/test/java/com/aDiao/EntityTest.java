package com.aDiao;

import com.aDiao.entity.Goods;
import com.aDiao.mapper.GoodsMapper;
import com.aDiao.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

public class EntityTest {

//    1、加载mybatis的核心配置文件，获取SqlSessionFactory
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    @Test
    public void testSelectAll() throws IOException {

//        2、获取SqlSession对象，用它来执行sql
        SqlSession sqlSession = factory.openSession();

//        3、获取接口代理对象
        GoodsMapper goodsMapper = sqlSession.getMapper(GoodsMapper.class);

        List<Goods> goods = goodsMapper.selectAll();
        System.out.println(goods);

        sqlSession.close();
    }
}
