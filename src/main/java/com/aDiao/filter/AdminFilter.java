package com.aDiao.filter;


import com.aDiao.entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 管理员后台访问权限限制
 * */

@WebFilter("/admin/*")
public class AdminFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest hreq = (HttpServletRequest)servletRequest;
        HttpServletResponse hresp = (HttpServletResponse)servletResponse;

        User user = (User) hreq.getSession().getAttribute("user");
        if (user.getIsadmin()==true) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            hresp.sendRedirect(hreq.getContextPath());
        }
    }

    public void destroy() {
    }
}
