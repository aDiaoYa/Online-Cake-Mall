package com.aDiao.service;

import com.aDiao.entity.Goods;
import com.aDiao.entity.Page;
import com.aDiao.mapper.GoodsMapper;
import com.aDiao.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;
import java.util.Map;

public class GoodsService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    /**
     * 根据id查询热销商品
     * @return
     * */
    public List<Map<String,Object>> selectHotGoods() {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        //4. 调用方法
        List<Map<String,Object>> hotgoods = mapper.selectHotGoods();

        sqlSession.close();

        return hotgoods;
    }

    /**
     * 根据id查询条幅商品
     * @return
     * */
    public Map<String,Object> selectScrollGoods() {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        //4. 调用方法
        Map<String,Object> scrollgoods = mapper.selectScrollGoods();

        sqlSession.close();

        return scrollgoods;
    }

    /**
     * 根据id查询新品上市
     * @return
     * */
    public List<Map<String,Object>> selectNewGoods() {
        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        //4. 调用方法
        List<Map<String,Object>> newgoods = mapper.selectNewGoods();

        sqlSession.close();

        return newgoods;
    }

    /**
     * 商品分类界面
     * */

//    public List<Goods> selectZeroGoods(int pageNumber) {
//        //2. 获取SqlSession
//        SqlSession sqlSession = factory.openSession();
//        //3. 获取GoodsMapper
//        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
//        int pageNo = (pageNumber-1)*8;
//        //4. 调用方法
//        List<Goods> selectzerogoods = mapper.selectZeroGoods(pageNo);
//
//        sqlSession.close();
//
//        return selectzerogoods;
//    }
//
//    public List<Goods> selectOtherGoods(int tid, int pageNumber) {
//        //2. 获取SqlSession
//        SqlSession sqlSession = factory.openSession();
//        //3. 获取GoodsMapper
//        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
//        int pageNo = (pageNumber-1)*8;
//
//        //4. 调用方法
//        List<Goods> selectothergoods = mapper.selectOtherGoods(tid,pageNo);
//        System.out.println("selectothergoods"+selectothergoods);
//
//        sqlSession.close();
//
//        return selectothergoods;
//    }


    public Page getZeroGoodsPage(int pageNumber) {
        Page page = new Page();
        page.setPageNumber(pageNumber);

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        int totalCount = 0;
        totalCount = mapper.getZeroGoodsPage();

        page.setPageSizeAndTotalCount(8,totalCount);

        pageNumber = (pageNumber-1)*8;
        //4. 调用方法
        List list = mapper.selectZeroGoods(pageNumber);

        page.setList(list);

        sqlSession.close();
        return page;
    }

    public Page getOtherGoodsPage(int tid, int pageNumber) {
        Page page = new Page();
        page.setPageNumber(pageNumber);
        System.out.println(pageNumber);

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        int totalCount = mapper.getOtherGoodsPage(tid);

        page.setPageSizeAndTotalCount(8,totalCount);

        pageNumber = (pageNumber-1)*8;

        //4. 调用方法
        List list = mapper.selectOtherGoods(tid,pageNumber);
        System.out.println(list);

        page.setList(list);

        sqlSession.close();
        return page;
    }

    /**
     * 热销商品界面
     * */
    public Page getRecommendGoods(int type, int pageNumber) {
        Page page = new Page();
        page.setPageNumber(pageNumber);
        System.out.println(pageNumber);

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        int totalCount = mapper.selectRecommendGoods(type);

        page.setPageSizeAndTotalCount(8,totalCount);

        int pageNo = (pageNumber-1)*8;

        //4. 调用方法
        List list = mapper.getRecommendGoods(type,pageNo);
        System.out.println(list);

        page.setList(list);

        sqlSession.close();
        return page;
    }

    /**
     * 根据id查找商品详情
     * */
    public Goods getById(int id) {

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        //4. 调用方法
        Goods goods = mapper.getById(id);

        sqlSession.close();

        return goods;
    }

    /**
     * 搜索功能
     * */
    public Page getSearchGoodsPage(String keyword, int pageNumber) {
        Page page = new Page();
        page.setPageNumber(pageNumber);
        int totalCount = 0;

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取GoodsMapper
        GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);

        totalCount = mapper.getSearchGoodsPage(keyword);

        page.setPageSizeAndTotalCount(8,totalCount);

        pageNumber = (pageNumber-1)*8;
        //4. 调用方法
        List list = mapper.selectSearchGoods(keyword,pageNumber);

        page.setList(list);

        sqlSession.close();

        return page;

    }

}
