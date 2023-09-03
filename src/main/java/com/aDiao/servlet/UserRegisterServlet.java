package com.aDiao.servlet;

import com.aDiao.entity.User;
import com.aDiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userRegisterServlet")
public class UserRegisterServlet extends HttpServlet {

    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
//        1、获取用户名和相关数据
        String username = req.getParameter("username");
        String uemail = req.getParameter("uemail");
        String upassword = req.getParameter("upassword");
        String uname = req.getParameter("uname");
        String uphone = req.getParameter("uphone");
        String uaddress = req.getParameter("uaddress");

        User user = new User();
        user.setUsername(username);
        user.setUemail(uemail);
        user.setUpassword(upassword);
        user.setUname(uname);
        user.setUphone(uphone);
        user.setUaddress(uaddress);

        boolean flag = userService.register(user);

        if (flag) {
            System.out.println(1);
            req.setAttribute("register_msg","注册成功，请登录");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
            System.out.println(2);
        } else {
            System.out.println(3);
            req.setAttribute("register_msg","用户名或邮箱已存在，请重新填写");
            req.getRequestDispatcher("/register.jsp").forward(req,resp);
            System.out.println(4);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
