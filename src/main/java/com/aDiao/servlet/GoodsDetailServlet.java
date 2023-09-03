package com.aDiao.servlet;

import com.aDiao.entity.Goods;
import com.aDiao.service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/goodsDetailServlet")
public class GoodsDetailServlet extends HttpServlet {

    private GoodsService goodsService = new GoodsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Goods goods = goodsService.getById(id);
        req.setAttribute("goods",goods);
        req.getRequestDispatcher("/goodsdetail.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
