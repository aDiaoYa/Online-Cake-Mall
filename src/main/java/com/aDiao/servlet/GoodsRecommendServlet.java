package com.aDiao.servlet;

import com.aDiao.entity.Page;
import com.aDiao.service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/goodsRecommendList")
public class GoodsRecommendServlet extends HttpServlet {

    private GoodsService goodsService = new GoodsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int type = Integer.parseInt(req.getParameter("type"));
        int pageNumber = 1;
        if (req.getParameter("pageNumber") == null) {
            pageNumber = 1;
        } else {
            pageNumber = Integer.parseInt(req.getParameter("pageNumber"));
        }

        Page page = goodsService.getRecommendGoods(type,pageNumber);
        req.setAttribute("page",page);
        req.setAttribute("type",type);
        req.getRequestDispatcher("/goodsrecommendlist.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
