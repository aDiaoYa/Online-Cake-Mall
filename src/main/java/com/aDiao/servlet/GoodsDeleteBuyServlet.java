package com.aDiao.servlet;

import com.aDiao.entity.Orders;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/goodsDeleteBuyServlet")
public class GoodsDeleteBuyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Orders orders = (Orders) req.getSession().getAttribute("orders");
        int goodsid = Integer.parseInt(req.getParameter("goodsid"));
        orders.deleteGoods(goodsid);
        resp.getWriter().print("ok");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
