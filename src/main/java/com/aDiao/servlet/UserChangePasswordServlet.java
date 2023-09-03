package com.aDiao.servlet;

import com.aDiao.entity.User;
import com.aDiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userChangePasswordServlet")
public class UserChangePasswordServlet extends HttpServlet {

    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.doPost(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");

        int uid = Integer.parseInt(req.getParameter("uid"));
        String upassword = req.getParameter("upassword");
        String upasswordnew = req.getParameter("upasswordnew");

        User user = (User) req.getSession().getAttribute("user");

        user.setUpassword(upassword);
        user.setUid(uid);

        if (upassword.equals(user.getUpassword())) {
            userService.updateUserPassword(uid,upasswordnew);

            req.setAttribute("update_msg","密码修改成功！");

            req.setAttribute("user",user);

            req.getRequestDispatcher("/mycenter.jsp").forward(req,resp);
        } else {
            req.setAttribute("pass_msg","修改失败，原密码错误，你再想想！");

            req.getRequestDispatcher("/mycenter.jsp").forward(req,resp);
        }
    }
}
