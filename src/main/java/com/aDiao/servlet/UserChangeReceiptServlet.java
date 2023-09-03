package com.aDiao.servlet;

import com.aDiao.entity.User;
import com.aDiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userChangeReceiptServlet")
public class UserChangeReceiptServlet extends HttpServlet {

    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");

        String uid = req.getParameter("uid");
        String uname = req.getParameter("uname");
        String uphone = req.getParameter("uphone");
        String uaddress = req.getParameter("uaddress");

        User user = new User();
        user.setUid(Integer.parseInt(uid));
        user.setUname(uname);
        user.setUphone(uphone);
        user.setUaddress(uaddress);

        userService.updateUserReceipt(user);

        req.setAttribute("update_msg","收件信息修改成功！");

        req.setAttribute("user",user);

        req.getRequestDispatcher("/mycenter.jsp").forward(req,resp);
    }
}
