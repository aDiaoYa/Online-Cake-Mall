<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 刁心雨
  Date: 2022/10/10
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">蛋糕店后台</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
<%--        <li ><a href="orderList.action">订单管理</a></li>--%>
        <li ><a href="${pageContext.request.contextPath}/adminUserListServlet">客户管理</a></li>
        <li ><a href="${pageContext.request.contextPath}/">商品管理</a></li>
<%--        <li ><a href="typeList.action">类目管理</a></li>--%>
<%--        <li ><a href="adminRe.action">修改密码</a></li>--%>
        <li><a href="${pageContext.request.contextPath}/user_logout">退出</a></li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>
