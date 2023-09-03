package com.aDiao.servlet;

import com.aDiao.entity.Goods;
import com.aDiao.service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/indexServlet")
public class IndexServlet extends HttpServlet {

    private GoodsService services = new GoodsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        取得条幅商品
        Map<String,Object> scrollgoods = services.selectScrollGoods();
        req.setAttribute("scrollgoods",scrollgoods);

//        取得热销商品
        List<Map<String,Object>> hotgoods = services.selectHotGoods();
        req.setAttribute("hotgoods",hotgoods);
//        取得新品商品
        List<Map<String,Object>> newgoods = services.selectNewGoods();
        req.setAttribute("newgoods",newgoods);
//        跳转到index.jsp
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
