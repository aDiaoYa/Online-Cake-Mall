package com.aDiao.mapper;

import com.aDiao.entity.Goods;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface GoodsMapper {

    /**
     * 查询所有
     * */
    public List<Goods> selectAll();


//    select g.gid,g.gname,g.gcover,g.gprice,t.tname typename from recommend r,goods g,type t where rtype=2 and r.goods_id=g.type_id and g.type_id=t.tid;
    /**
     * 根据id查询热销商品
     * */
    @Select("select g.gid,g.gname,g.gcover,g.gprice,t.tname typename from recommend r,type t,goods g where rtype=2 and r.goods_id=g.gid and t.tid=g.type_id ORDER BY gid ASC")
    List<Map<String,Object>> selectHotGoods();

//    select g.gid,g.gname,g.gcover,g.gprice from recommend r,goods g,type t where rtype=1 and r.goods_id=g.type_id;
    /**
     * 根据id查询条幅商品
     * */
    @Select("select g.gid,g.gname,g.gcover,g.gprice from recommend r,goods g where rtype=1 and r.goods_id=g.gid and g.gid<5 ORDER BY gid ASC")
    Map<String,Object> selectScrollGoods();

    /**
     * 根据id查询新品上市
     * */
    @Select("select g.gid,g.gname,g.gcover,g.gprice,t.tname typename from recommend r,type t,goods g where rtype=1 and r.goods_id=g.gid and t.tid=g.type_id ORDER BY gid ASC")
    List<Map<String,Object>> selectNewGoods();



    /**
     * 查询总记录数
     * @param
     * */
    @Select("select count(*) from goods")
    int getZeroGoodsPage();

    /**
     * 根据id查询商品类型列表
     *
     * @param pageNo
     */
    @Select("select * from goods limit #{pageNo},8")
    List<Goods> selectZeroGoods(@Param("pageNo") int pageNo);



    /**
     * 查询总记录数
     * @param tid
     * */
    @Select("select count(*) from goods where type_id=#{tid}")
    int getOtherGoodsPage(@Param("tid") int tid);

    /**
     * 根据id查询商品类型列表
     *
     * @param tid
     * @param pageNo
     */
    @Select("select * from goods where type_id=#{tid} limit #{pageNo},8")
    List<Goods> selectOtherGoods(@Param("tid") int tid, @Param("pageNo") int pageNo);


    /**
     * 根据id查询热销商品界面：获取总记录数
     * @param type
     * */
    @Select("select count(*) from recommend where rtype=#{type}")
    int selectRecommendGoods(@Param("type") int type);

    /**
     *根据id查询热销商品界面
     * @param type
     * @param pageNo
     * */
    @Select("select gid, gname, gcover, gimage1, gimage2, gprice, ginfo, gstock from goods g,recommend r where r.goods_id=g.gid and r.rtype=#{type} limit #{pageNo},8")
    List<Goods> getRecommendGoods(@Param("type") int type, @Param("pageNo") int pageNo);

    /**
     * 根据id查找商品详情信息
     * @param id
     * */
    @Select("select gid, gname, gcover, gimage1, gimage2, gprice, ginfo, gstock, tid typeid, tname typename from goods g,type t where g.type_id=t.tid and gid=#{id}")
    Goods getById(@Param("id") int id);

    /**
     * 查询搜索出来符合条件的商品记录数
     * */
    @Select("select count(*) from goods where gname like CONCAT('%',#{keyword},'%') ")
    int getSearchGoodsPage(@Param("keyword") String keyword);
    /**
     * 查询搜索出来符合条件的商品
     * */
    @Select("select * from goods where gname like CONCAT('%',#{keyword},'%') limit #{pageNumber},8")
    List<Goods> selectSearchGoods(@Param("keyword") String keyword,@Param("pageNumber") int pageNumber);

}
