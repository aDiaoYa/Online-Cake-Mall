package com.aDiao.listener;

import com.aDiao.entity.Type;
import com.aDiao.service.TypeService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

/**
 * 类目
 * 监听ServletContext对象
 * */
@WebListener
public class ApplicationListenner implements ServletContextListener {

    private TypeService typeService = new TypeService();


    public void contextInitialized(ServletContextEvent sce) {
        /**
         * 查询所有类目
         * */
        List<Type> alltype = typeService.selectAll();
        sce.getServletContext().setAttribute("alltype",alltype);
        System.out.println(alltype);
    }


    public void contextDestroyed(ServletContextEvent sce) {


    }
}
