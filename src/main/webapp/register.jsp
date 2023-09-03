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
	<title>用户注册</title>
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
				<c:if test="${!empty register_msg}">
					<div class="alert alert-danger">${register_msg}</div>
				</c:if>
				<form action="${pageContext.request.contextPath}/userRegisterServlet" method="post">
					<div class="register-top-grid">
						<h3>注册新用户</h3>
						<div class="input">
							<span>用户名 <label style="color:red;">*</label></span>
							<input type="text" id="username" name="username" placeholder="请输入用户名" required="required">
						</div>
						<div class="input">
							<span>邮箱 <label style="color:red;">*</label></span>
							<input type="text" name="uemail" placeholder="请输入邮箱" required="required">
						</div>
						<div class="input">
							<span>密码 <label style="color:red;">*</label></span>
							<input type="text" name="upassword" placeholder="请输入密码" required="required">
						</div>
						<div class="input">
							<span>收货人<label></label></span>
							<input type="text" name="uname" placeholder="请输入收货人姓名">
						</div>
						<div class="input">
							<span>收货电话<label></label></span>
							<input type="text" name="uphone" placeholder="请输入收货电话">
						</div>
						<div class="input">
							<span>收货地址<label></label></span>
							<input type="text" name="uaddress" placeholder="请输入收货地址">
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>
					</div>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->


	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>

	
</body>
</html>