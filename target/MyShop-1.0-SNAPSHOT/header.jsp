<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 刁心雨
  Date: 2022/10/3
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--header-->
<div class="header">
  <div class="container">
    <nav class="navbar navbar-default" role="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <h1 class="navbar-brand"><a href="${pageContext.request.contextPath}">蛋糕店</a></h1>
      </div>
      <!--navbar-header-->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li><a href="${pageContext.request.contextPath}" <c:if test="${param.flag==1}">class="active"</c:if>>首页</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle <c:if test="${param.flag==2}">active</c:if>" data-toggle="dropdown" >商品分类<b class="caret"></b></a>
            <ul class="dropdown-menu multi-column columns-2">
              <li>
                <div class="row">
                  <div class="col-sm-12">
                    <h4>商品分类</h4>
                    <ul class="multi-column-dropdown">

                      <li><a class="list" href="${pageContext.request.contextPath}/goodsListServlet">全部系列</a></li>

                      <c:forEach items="${alltype}" var="t">
                        <li><a class="list" href="${pageContext.request.contextPath}/goodsListServlet?id=${t.tid}">${t.tname}</a></li>
                      </c:forEach>

                    </ul>
                  </div>
                </div>
              </li>
            </ul>
          </li>
          <li><a href="${pageContext.request.contextPath}/goodsRecommendList?type=2" <c:if test="${type==2}">class="active"</c:if>>热销</a></li>
          <li><a href="${pageContext.request.contextPath}/goodsRecommendList?type=3" <c:if test="${type==3}">class="active"</c:if>>新品</a></li>

          <c:choose>
            <c:when test="${empty user}">
              <li><a href="${pageContext.request.contextPath}/register.jsp" <c:if test="${param.flag==3}">class="active"</c:if>>注册</a></li>
              <li><a href="${pageContext.request.contextPath}/login.jsp" <c:if test="${param.flag==4}">class="active"</c:if>>登录</a></li>
            </c:when>
            <c:otherwise>
              <li><a href="${pageContext.request.contextPath}/orderListServlet" <c:if test="${param.flag==5}">class="active"</c:if>>我的订单</a></li>
              <li><a href="${pageContext.request.contextPath}/mycenter.jsp" <c:if test="${param.flag==3}">class="active"</c:if>>个人中心</a></li>
              <li><a href="${pageContext.request.contextPath}/user_logout" <c:if test="${param.flag==4}">class="active"</c:if>>退出</a></li>
            </c:otherwise>
          </c:choose>


          <c:if test="${!empty user && user.isadmin}">
            <li><a href="${pageContext.request.contextPath}/admin/adminindex.jsp" <c:if test="${param.flag==5}">class="active"</c:if>>后台管理</a></li>
          </c:if>


        </ul>
        <!--/.navbar-collapse-->
      </div>
      <!--//navbar-header-->
    </nav>
    <div class="header-info">
      <div class="header-right search-box">
        <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
        <div class="search">
          <form class="navbar-form" action="${pageContext.request.contextPath}/goodsSearchServlet">
            <input type="text" class="form-control" name="keyword">
            <button type="submit" class="btn btn-default" aria-label="Left Align">搜索</button>
          </form>
        </div>
      </div>

<%--      购物车--%>
      <div class="header-right cart">
        <a href="${pageContext.request.contextPath}/cart.jsp">
          <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"><span class="card_num">${orders.oamount}</span></span>
        </a>
      </div>
      <c:if test="${!empty user }">
        <div class="header-right login">
          <a href="${pageContext.request.contextPath}/mycenter.jsp"><span class="glyphicon" aria-hidden="true">${user.username}</span></a>
        </div>
      </c:if>

      <div class="clearfix"> </div>
    </div>
    <div class="clearfix"> </div>
  </div>
</div>
<!--//header-->
</body>
</html>
