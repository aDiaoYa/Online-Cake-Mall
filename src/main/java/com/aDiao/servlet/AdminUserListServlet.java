package com.aDiao.servlet;

import com.aDiao.entity.Page;
import com.aDiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminUserListServlet")
public class AdminUserListServlet extends HttpServlet {

    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        int pageNumber = 1;
        if (req.getParameter("pageNumber")!=null) {
            pageNumber = Integer.parseInt(req.getParameter("pageNumber"));
        }
        Page page = userService.getUserPage(pageNumber);

        req.setAttribute("page",page);
        req.getRequestDispatcher("/admin/adminuserlist.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
