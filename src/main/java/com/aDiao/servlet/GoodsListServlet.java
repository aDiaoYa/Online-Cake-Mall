package com.aDiao.servlet;

import com.aDiao.entity.Goods;
import com.aDiao.entity.Page;
import com.aDiao.entity.Type;
import com.aDiao.service.GoodsService;
import com.aDiao.service.TypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/goodsListServlet")
public class GoodsListServlet extends HttpServlet {

    private GoodsService goodsService = new GoodsService();
    private TypeService typeService = new TypeService();

    /**
     * 根据id查询商品类型列表
     * */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


//        全部系列
        int id = 0;
        int pageNumber = 1;
//        if (req.getParameter("id") == null) {
//            System.out.println("aDIAo一只鱼");
//            List<Goods> goodslist = goodsService.selectZeroGoods(pageNumber);
//            req.setAttribute("goodslist",goodslist);
//        } else {
//            id = Integer.parseInt(req.getParameter("id"));
//            List<Goods> goodslist = goodsService.selectOtherGoods(id,pageNumber);
//            System.out.println("id"+id);
//            req.setAttribute("goodslist",goodslist);
//        }

        HttpSession session = req.getSession();
        System.out.println("pageNumber"+req.getParameter("pageNumber"));
        if (req.getParameter("pageNumber") == null) {
            pageNumber = 1;
        } else {
            pageNumber = Integer.parseInt(req.getParameter("pageNumber"));
        }

        System.out.println("id"+req.getParameter("id"));
        if (req.getParameter("id") == null || req.getParameter("id") == "0") {
            Page page = goodsService.getZeroGoodsPage(pageNumber);
            session.setAttribute("page",page);
        } else {
//            不同系列
            id = Integer.parseInt(req.getParameter("id"));
            Page page = goodsService.getOtherGoodsPage(id,pageNumber);
            session.setAttribute("page",page);
        }

        Type t = null;
        if (id!=0) {
            t = typeService.selectTypeName(id);
        }
        req.setAttribute("t",t);
        req.setAttribute("pageNumber",pageNumber);
        req.setAttribute("id",id);
        req.getRequestDispatcher("/goodslist.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
