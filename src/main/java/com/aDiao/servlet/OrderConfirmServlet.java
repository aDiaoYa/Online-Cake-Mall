package com.aDiao.servlet;

import com.aDiao.entity.Orders;
import com.aDiao.entity.User;
import com.aDiao.service.OrdersService;
import com.aDiao.utils.DFUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/orderConfirmServlet")
public class OrderConfirmServlet extends HttpServlet {

    private OrdersService ordersService = new OrdersService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Orders orders = (Orders) req.getSession().getAttribute("orders");
        int opaytype = Integer.parseInt(req.getParameter("paytype"));
        String oname = req.getParameter("oname");
        String ophone = req.getParameter("ophone");
        String oaddress = req.getParameter("oaddress");

        orders.setOpaytype(opaytype);
        orders.setOname(oname);
        orders.setOphone(ophone);
        orders.setOaddress(oaddress);
        orders.setOstatus(3);
        orders.setUser((User) req.getSession().getAttribute("user"));
        int uid = ((User) req.getSession().getAttribute("user")).getUid();
        orders.setUser_id(uid);
        System.out.println("啊叼一只鱼");

        ordersService.InsertOrders(orders, DFUtil.dfD(new Date()));

        req.getSession().removeAttribute("orders");


        req.setAttribute("msg","订单支付成功");
        req.getRequestDispatcher("/paysuccess.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
