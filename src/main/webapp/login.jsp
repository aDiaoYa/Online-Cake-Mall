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
	<title>用户登录</title>
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
		<jsp:param name="flag" value="4"/>
	</jsp:include>

	
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty register_msg}">
					<div class="alert alert-success">${register_msg}</div>
				</c:if>
				<c:if test="${!empty fail_msg}">
					<div class="alert alert-danger">${fail_msg}</div>
				</c:if>
				<form action="${pageContext.request.contextPath}/userLoginServlet" method="post">
					<div class="register-top-grid">
						<h3>用户登录</h3>
						<div class="input">
							<span>用户名/邮箱 <label style="color:red;">*</label></span>
							<input type="text" name="ue" placeholder="请输入用户名或邮箱" required="required">
						</div>
						<div class="input">
							<span>密码 <label style="color:red;">*</label></span>
							<input type="text" name="upassword" placeholder="请输入密码" required="required">
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