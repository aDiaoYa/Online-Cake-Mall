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
	<title>个人中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<!--header-->
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="3"/>
	</jsp:include>

	
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty update_msg}">
					<div class="alert alert-success">${update_msg}</div>
				</c:if>

					<div class="register-top-grid">
						<h3>个人中心</h3>
						<form action="${pageContext.request.contextPath}/userChangeReceiptServlet" method="post">
							<input type="hidden" name="uid" value="${user.uid}">
						<h4>收货信息</h4>
						<div class="input">
							<span>收货人<label></label></span>
							<input type="text" name="uname" value="${user.uname}" placeholder="请输入收货人">
						</div>
						<div class="input">
							<span>收货电话</span>
							<input type="text" name="uphone" value="${user.uphone}" placeholder="请输入收货电话">
						</div>
						<div class="input">
							<span>收货地址</span>
							<input type="text" name="uaddress" value="${user.uaddress}" placeholder="请输入收货地址">
						</div>
						<div class="register-but text-center">
						   <input type="submit" value="提交修改">
						</div>
						<hr>
						</form>
						<form action="${pageContext.request.contextPath}/userChangePasswordServlet" method="post">
							<input type="hidden" name="uid" value="${user.uid}">
							<c:if test="${!empty pass_msg}">
								<div class="alert alert-success">${pass_msg}</div>
							</c:if>
						<h4>安全信息</h4>
						<div class="input">
							<span>原密码</span>
							<input type="text" name="upassword" placeholder="请输入原密码">
						</div>
						<div class="input">
							<span>新密码</span>
							<input type="text" name="upasswordnew" placeholder="请输入新密码">
						</div>
						<div class="clearfix"> </div>
						<div class="register-but text-center">
						   <input type="submit" value="提交修改">
						</div>
						</form>
					</div>

				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	




	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>

	
</body>
</html>