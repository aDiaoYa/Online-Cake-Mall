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
	<title>支付</title>
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
	<jsp:include page="header.jsp"></jsp:include>

	<div class="cart-items">
		<div class="container">
			<h2>确认收货信息</h2>
			<form class="form-horizontal" action="${pageContext.request.contextPath}/orderConfirmServlet" method="post" id="payform">
				<input type="hidden" name="order.id" value="4">
				<input type="hidden" name="order.paytype" id="paytype">
				<div class="row">
					<label class="control-label col-md-1">收货人</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="oname" value="${user.uname}" style="height:auto;padding:10px;" placeholder="输入收货人" required="required"><br>
					</div>
				</div>
				<div class="row">
					<label class="control-label col-md-1">收货电话</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="ophone" value="${user.uphone}" style="height:auto;padding:10px;" placeholder="输入收货电话" required="required"><br>
					</div>
				</div>
				<div class="row">
					<label class="control-label col-md-1">收货地址</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="oaddress" value="${user.uaddress}" style="height:auto;padding:10px;" placeholder="输入收货地址" required="required"><br>
					</div>
				</div>
			
			<br><hr><br>
			
			<h2>选择支付方式</h2>
			<h3>订单编号: ${orders.oid}  支付金额: ￥ ${orders.ototal}</h3><br><br>
			<div class="col-sm-6 col-md-4 col-lg-3 ">
				<label>
				<div class="thumbnail">
					<input type="radio" name="paytype" value="1" checked="checked" />
					<img src="images/wechat.jpg" alt="微信支付">
				</div>
				</label>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3 ">
				<label>
				<div class="thumbnail">
					<input type="radio" name="paytype" value="2" />
					<img src="images/alipay.jpg" alt="支付宝支付">
				</div>
				</label>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3 ">
				<label>
				<div class="thumbnail">
					<input type="radio" name="paytype" value="3" />
					<img src="images/offline.jpg" alt="货到付款">
				</div>
				</label>
			</div>
				<div class="clearfix"> </div>
				<div class="register-but text-center">
					<input type="submit" value="确认订单">
					<div class="clearfix"> </div>
				</div>
			</form>
		</div>
	</div>

	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>

	
	<script type="text/javascript">
		function dopay(paytype){
			$("#paytype").val(paytype);
			$("#payform").submit();
		}
		$('input:radio').click(function () {
			var $radio = $(this);
			if ($radio.data('checked')) {
				$radio.prop('checked',false);
				$radio.data('checked',false);
			} else {
				$radio.prop('checked',true);
				$radio.data('checked',true);
			}
		})
	</script>

</body>
</html>