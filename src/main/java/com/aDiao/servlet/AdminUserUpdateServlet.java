package com.aDiao.servlet;

import com.aDiao.entity.User;
import com.aDiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminUserUpdateServlet")
public class AdminUserUpdateServlet extends HttpServlet {
    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");

        String uid = req.getParameter("uid");
        String uphone = req.getParameter("uphone");
        String uaddress = req.getParameter("uaddress");

        User user = new User();
        user.setUid(Integer.valueOf(uid));
        user.setUphone(uphone);
        user.setUaddress(uaddress);

        System.out.println(user);
        userService.updateUser(user);


        req.setAttribute("user",user);
        req.setAttribute("msg","修改客户信息成功，请返回客户管理列表查看！");
        req.getRequestDispatcher("/admin/adminuseredit.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
