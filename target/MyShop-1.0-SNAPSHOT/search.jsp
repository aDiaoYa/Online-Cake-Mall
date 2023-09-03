<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 刁心雨
  Date: 2022/10/3
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
</head>
<body>

	<!--header-->
	<jsp:include page="header.jsp"></jsp:include>

	
	<!--products-->
	<div class="products">	 
		<div class="container">
			<h2>搜索结果</h2>
					
			<div class="col-md-12 product-model-sec">
				<c:forEach items="${page.list}" var="g">
					<div class="product-grid">
						<a href="${pageContext.request.contextPath}/goodsDetailServlet?id=${g.gid}">
							<div class="more-product"><span> </span></div>						
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${pageContext.request.contextPath}${g.gcover}" class="img-responsive" alt="${g.gname}" width="240" height="240">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
										<button>查看详情</button>
									</h4>
								</div>
							</div>
						</a>				
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${g.gname}</h4>
								<span class="item_price">¥ ${g.gprice}</span>
								<input type="button" class="item_add items" value="加入购物车" onclick="buy(${g.gid})">
								<div class="clearfix"> </div>
							</div>												
						</div>
					</div>
				</c:forEach>
				

				
				<div class="clearfix"> </div>
			</div>
			<div><div style='text-align:center;'>
<%--<a class='btn btn-info' disabled >首页</a>--%>
<%--<a class='btn btn-info' disabled >上一页</a>--%>
<%--<h2 style='display:inline;'>[1/1]</h2>--%>
<%--<h2 style='display:inline;'>[6]</h2>--%>
<%--<a class='btn btn-info' disabled >下一页</a>--%>
<%--<a class='btn btn-info' disabled >尾页</a>--%>
<%--<input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="http://localhost:8080/test_cakeshop_jsp/index/goods.action?page="+(this.previousSibling.value)+"&typeid=5"'>GO</a>--%>
<%--</div>--%>
	<a class='btn btn-info' <c:if test="${page.pageNumber==1}">disabled</c:if> <c:if test="${page.pageNumber!=1}">href="${pageContext.request.contextPath}/goodsSearchServlet?pageNumber=1&keyword=${param.keyword}"</c:if> >首页</a>
	<a class='btn btn-info' <c:if test="${page.pageNumber==1}">disabled</c:if> <c:if test="${page.pageNumber!=1}">href="${pageContext.request.contextPath}/goodsSearchServlet?pageNumber=${page.pageNumber-1}&keyword=${param.keyword}"</c:if> >上一页</a>
	<h3 style='display:inline;'>[${page.pageNumber}/${page.totalPage}]</h3>
	<h3 style='display:inline;'>[${page.totalCount}]</h3>
	<a class='btn btn-info' <c:if test="${page.totalPage==0 || page.pageNumber==page.totalPage}">disabled</c:if> <c:if test="${page.pageNumber!=page.totalPage}">href="${pageContext.request.contextPath}/goodsSearchServlet?pageNumber=${page.pageNumber+1}&keyword=${param.keyword}"</c:if>>下一页</a>
	<a class='btn btn-info' <c:if test="${page.totalPage==0 || page.pageNumber==page.totalPage}">disabled</c:if> <c:if test="${page.pageNumber!=page.totalPage}">href="${pageContext.request.contextPath}/goodsSearchServlet?pageNumber=${page.totalPage}&keyword=${param.keyword}"</c:if>>尾页</a>
	<input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="${pageContext.request.contextPath}/goodsSearchServlet?keyword=${param.keyword}&pageNumber="+(this.previousSibling.value)'>GO</a>
</div>
</div>
		</div>
	</div>
	<!--//products-->	
	
	




	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>