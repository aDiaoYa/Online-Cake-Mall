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
<title>客户列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	
<jsp:include page="adminheader.jsp"></jsp:include>

	<c:if test="${!empty delete_msg}">
		<div class="alert alert-success">${delete_msg}</div>
	</c:if>
	<c:if test="${!empty add_msg}">
		<div class="alert alert-success">${add_msg}</div>
	</c:if>
	
	<div class="text-right"><a class="btn btn-warning" href="${pageContext.request.contextPath}/admin/adminuseradd.jsp">添加客户</a></div>
		
	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">用户名</th>
		<th width="10%">电话</th>
		<th width="10%">地址</th>
		<th width="10%">操作</th>
	</tr>
	
	<c:forEach items="${page.list}" var="pu">
         <tr>
         	<td><p>${pu.uid}</p></td>
         	<td><p>${pu.username}</p></td>
         	<td><p>${pu.uphone}</p></td>
         	<td><p>${pu.uaddress}</p></td>
			<td>
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/adminUserSelectServlet?username=${pu.username}">修改</a>
				<a class="btn btn-danger" href="${pageContext.request.contextPath}/adminUserDeleteServlet?username=${pu.username}">删除</a>
			</td>
       	</tr>
	</c:forEach>

</table>

<br><div style='text-align:center;'>
	<a class='btn btn-info' <c:if test="${page.pageNumber==1}">disabled</c:if> <c:if test="${page.pageNumber!=1}">href="${pageContext.request.contextPath}/adminUserListServlet?pageNumber=1"</c:if> >首页</a>
	<a class='btn btn-info' <c:if test="${page.pageNumber==1}">disabled</c:if> <c:if test="${page.pageNumber!=1}">href="${pageContext.request.contextPath}/adminUserListServlet?pageNumber=${page.pageNumber-1}"</c:if> >上一页</a>
	<h3 style='display:inline;'>[${page.pageNumber}/${page.totalPage}]</h3>
	<h3 style='display:inline;'>[${page.totalCount}]</h3>
	<a class='btn btn-info' <c:if test="${page.totalPage==0 || page.pageNumber==page.totalPage}">disabled</c:if> <c:if test="${page.pageNumber!=page.totalPage}">href="${pageContext.request.contextPath}/adminUserListServlet?pageNumber=${page.pageNumber+1}"</c:if>>下一页</a>
	<a class='btn btn-info' <c:if test="${page.totalPage==0 || page.pageNumber==page.totalPage}">disabled</c:if> <c:if test="${page.pageNumber!=page.totalPage}">href="${pageContext.request.contextPath}/adminUserListServlet?pageNumber=${page.totalPage}"</c:if>>尾页</a>
	<input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="${pageContext.request.contextPath}/adminUserListServlet?pageNumber="+(this.previousSibling.value)'>GO</a>
</div>
<br>
</div>
</body>
</html>