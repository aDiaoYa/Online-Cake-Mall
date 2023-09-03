package com.aDiao.mapper;

import com.aDiao.entity.Goods;
import com.aDiao.entity.Type;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface TypeMapper {

    /**
     * 查询所有类目
     * */
    List<Type> selectAll();

    /**
     * 查询类型名称
     * */
    @Select("select * from type where tid = #{id}")
    Type selectTypeName(int id);
}
