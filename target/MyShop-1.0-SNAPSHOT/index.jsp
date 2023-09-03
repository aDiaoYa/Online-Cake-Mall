<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>

<%--头部--%>
<jsp:include page="header.jsp">
    <jsp:param name="flag" value="1"/>
</jsp:include>


<!--banner-->

<div class="banner">
    <div class="container">
        <h2 class="hdng"><a href="${pageContext.request.contextPath}/goodsDetailServlet?id=${scrollgoods.gid}">${scrollgoods.gname}</a><span></span></h2>
        <p>今日精选推荐</p>
        <a class="banner_a" href="javascript:;" onclick="buy(${scrollgoods.gid})">立刻购买</a>
        <div class="banner-text">
            <a href="${pageContext.request.contextPath}/goodsDetailServlet?id=${scrollgoods.gid}">
                <img src="${pageContext.request.contextPath}${scrollgoods.gcover}" alt="${scrollgoods.gname}" width="350" height="350">
            </a>
        </div>
    </div>
</div>

<!--//banner-->

<div class="subscribe2"></div>

<!--gallery-->
<div class="gallery">
    <div class="container">
        <div class="alert alert-danger">热销推荐</div>
        <div class="gallery-grids">

            <c:forEach items="${hotgoods}" var="g">
            <div class="col-md-4 gallery-grid glry-two">
                <a href="${pageContext.request.contextPath}/goodsDetailServlet?id=${g.gid}">
                    <img src="${pageContext.request.contextPath}${g.gcover}" class="img-responsive" alt="${g.gname}" width="350" height="350"/>
                </a>
                <div class="gallery-info galrr-info-two">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="${pageContext.request.contextPath}/goodsDetailServlet?id=${g.gid}">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(${g.gid})">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>${g.typename} > ${g.gname}</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ ${g.gprice}</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>

        <div class="clearfix"></div>
        <div class="alert alert-info">新品推荐</div>
        <div class="gallery-grids">
            <c:forEach items="${newgoods}" var="n">
                <div class="col-md-3 gallery-grid ">
                    <a href="${pageContext.request.contextPath}/goodsDetailServlet?id=${n.gid}">
                        <img src="${pageContext.request.contextPath}${n.gcover}" class="img-responsive" alt="${n.gname}"/>
                    </a>
                    <div class="gallery-info">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="${pageContext.request.contextPath}/goodsDetailServlet?id=${n.gid}">查看详情</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${n.gid})">立刻购买</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="galy-info">
                        <p>${n.typename}> ${n.gname}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">¥ ${n.gprice}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>
    </div>
</div>
<!--//gallery-->

<!--subscribe-->
<div class="subscribe"></div>
<!--//subscribe-->

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>