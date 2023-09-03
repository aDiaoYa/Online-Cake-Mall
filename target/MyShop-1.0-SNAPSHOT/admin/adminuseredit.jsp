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
<title>客户修改</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<jsp:include page="adminheader.jsp"></jsp:include>

	<br><br>
	<c:if test="${!empty msg}">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	<form class="form-horizontal" action="${pageContext.request.contextPath}/adminUserUpdateServlet" method="post">

		<input type="hidden" name="uid" value="${user.uid}">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">用户名</label>
			<div class="col-sm-5">${user.username}</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">电话</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="uphone" value="${user.uphone}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">地址</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_address" name="uaddress" value="${user.uaddress}">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">提交修改</button>
			</div>
		</div>
	</form>
	
	<span style="color:red;"></span>
	
</div>	
</body>
</html>