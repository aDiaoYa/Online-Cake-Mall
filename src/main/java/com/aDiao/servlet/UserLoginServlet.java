package com.aDiao.servlet;

import com.aDiao.entity.User;
import com.aDiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/userLoginServlet")
public class UserLoginServlet extends HttpServlet {

    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        String ue = req.getParameter("ue");
        String upassword = req.getParameter("upassword");
        User user = userService.login(ue,upassword);

        if (user == null) {
            req.setAttribute("fail_msg","用户名、邮箱或者密码错误，请重新登录！");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        } else {
            session.setAttribute("user",user);
            req.setAttribute("user",user);
            req.getRequestDispatcher("/mycenter.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
