package com.aDiao.servlet;

import com.aDiao.entity.Goods;
import com.aDiao.entity.Orders;
import com.aDiao.service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/goodsBuyServlet")
public class GoodsBuyServlet extends HttpServlet {

    private GoodsService goodsService = new GoodsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Orders orders = null ;
        if (req.getSession().getAttribute("orders")!=null) {
            orders = (Orders) req.getSession().getAttribute("orders");
        } else {
            orders = new Orders();
            req.getSession().setAttribute("orders",orders);
        }

        int goodsid = Integer.parseInt(req.getParameter("goodsid"));
        Goods goods = goodsService.getById(goodsid);
        if (goods.getGstock()>0) {
            orders.addGoods(goods);
            resp.getWriter().print("ok");
        } else {
            resp.getWriter().print("fail");
        }
        System.out.println(req.getParameter("goodsid"));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
