package com.aDiao.servlet;

import com.aDiao.entity.Orderitem;
import com.aDiao.entity.Orders;
import com.aDiao.entity.User;
import com.aDiao.service.OrdersService;
import sun.util.calendar.BaseCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Date;

@WebServlet("/orderListServlet")
public class OrderListServlet extends HttpServlet {

    private OrdersService ordersService = new OrdersService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

        req.setCharacterEncoding("utf-8");
        User user = (User) req.getSession().getAttribute("user");

        List<Orders> orderList = ordersService.selectallorders(user.getUid());
        for (Orders orders : orderList) {
            String s = orders.getOdatetime();
            orders.setOdatetime(s.substring(0,s.length()-2));
        }
        req.setAttribute("orderList",orderList);

        req.getRequestDispatcher("/myorder.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
