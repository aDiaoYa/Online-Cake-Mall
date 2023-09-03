package com.aDiao.service;

import com.aDiao.entity.Type;
import com.aDiao.mapper.TypeMapper;
import com.aDiao.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class TypeService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    /**
     * 查询全部类目
     * @return
     * */
    public List<Type> selectAll() {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        TypeMapper mapper = sqlSession.getMapper(TypeMapper.class);

        //4. 调用方法
        List<Type> alltype = mapper.selectAll();

        sqlSession.close();

        return alltype;
    }

    /**
     * 查询类目名称
     * @return
     * */
    public Type selectTypeName(int id) {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        TypeMapper mapper = sqlSession.getMapper(TypeMapper.class);

        //4. 调用方法
        Type typename = mapper.selectTypeName(id);

        sqlSession.close();

        return typename;
    }
}
