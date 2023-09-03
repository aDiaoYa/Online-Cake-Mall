package com.aDiao.servlet;

import com.aDiao.entity.Page;
import com.aDiao.service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet("/goodsSearchServlet")
public class GoodsSearchServlet extends HttpServlet {
    private GoodsService goodsService = new GoodsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
//        HttpSession session = req.getSession();
        String keyword = req.getParameter("keyword");
        int pageNumber = 1;
        if (req.getParameter("pageNumber")!=null) {
            pageNumber = Integer.parseInt(req.getParameter("pageNumber"));
        }
        Page page = goodsService.getSearchGoodsPage(keyword,pageNumber);
//        session.setAttribute("page",page);
        System.out.println("page:"+page);
        req.setAttribute("page",page);
        req.setAttribute("keyword", URLEncoder.encode(keyword,"utf-8"));
        req.getRequestDispatcher("/search.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
