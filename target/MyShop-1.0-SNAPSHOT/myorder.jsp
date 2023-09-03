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
	<title>我的订单</title>
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

	<!--header-->
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="5"/>
	</jsp:include>

	
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
		
		
		
			<h2>我的订单</h2>
			
				<table class="table table-bordered table-hover">

				<tr>
					<th width="10%">总价</th>
					<th width="20%">商品详情</th>
					<th width="20%">收货信息</th>
					<th width="10%">订单状态</th>
					<th width="10%">支付方式</th>
					<th width="10%">下单时间</th>
					<th width="10%">操作</th>
				</tr>
				<c:forEach items="${orderList}" var="ot">
			         <tr>
			         	<td><p>￥ ${ot.ototal}</p></td>
			         	<td>
				         	
					         	<c:forEach items="${ot.orderitemList}" var="il">
									<p>${il.goodsName} x ${il.iamount}</p>
								</c:forEach>
				         	
			         	</td>
			         	<td>
			         		<p>${ot.oname}</p>
			         		<p>${ot.ophone}</p>
			         		<p>${ot.oaddress}</p>
			         	</td>
						<td>
							<p>
								<c:if test="${ot.ostatus==2}">
								<span>已支付</span>
								</c:if>
								<c:if test="${ot.ostatus==3}">
									<span style="color:green;">配送中</span>
								</c:if>
								<c:if test="${ot.ostatus==4}">
									<span style="color:red;">待支付</span>
								</c:if>
								
								
							</p>
						</td>
						<td>
							<p>
								<c:if test="${ot.opaytype==1}">微信</c:if>
								<c:if test="${ot.opaytype==2}">支付宝</c:if>
								<c:if test="${ot.opaytype==3}">货到付款</c:if>

							</p>
						</td>
						<td><p>${ot.odatetime}</p></td>
						<td>
							
						</td>
			       	</tr>
				</c:forEach>
				
			     
			</table>
			
			
			
			
		</div>
	</div>
	<!--//cart-items-->	
	
	




	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>