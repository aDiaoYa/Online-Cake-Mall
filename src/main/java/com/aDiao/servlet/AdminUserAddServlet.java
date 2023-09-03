package com.aDiao.servlet;

import com.aDiao.entity.User;
import com.aDiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminUserAddServlet")
public class AdminUserAddServlet extends HttpServlet {

    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String uemail = req.getParameter("uemail");
        String upassword = req.getParameter("upassword");
        String uname = req.getParameter("uname");
        String uphone = req.getParameter("uphone");
        String uaddress = req.getParameter("uaddress");
        String isadmin = req.getParameter("isadmin");
        System.out.println(isadmin);

        User user = new User();
        user.setUsername(username);
        user.setUemail(uemail);
        user.setUpassword(upassword);
        user.setUname(uname);
        user.setUphone(uphone);
        user.setUaddress(uaddress);
        user.setIsadmin(Boolean.valueOf("isadmin"));
        System.out.println(user);

        userService.userAdd(user);

        req.setAttribute("add_msg","添加用户成功！");
        req.getRequestDispatcher("/adminUserListServlet").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
