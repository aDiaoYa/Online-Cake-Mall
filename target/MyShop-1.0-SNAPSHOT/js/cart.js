
/**
 * 加入购物车
 */
function buy(goodsid){
	$.post("goodsBuyServlet", {goodsid:goodsid}, function(data){
		if(data=="ok"){
			layer.msg("已成功添加到购物车!", {time:800}, function(){
				//重新加载==》刷新
				location.reload();
			});
		}else if(data=="login"){
			alert("请登录后购买!");
			location.href="login.jsp";
		}else if(data=="empty"){
			alert("添加失败，库存不足，请购买其他商品!");
			location.reload();
		}else{
			alert("请求失败!");
		}
	});
}
/**
 * 购物车减去
 */
function lessen(goodid){
	$.post("goodsLessBuyServlet", {goodsid:goodid}, function(data){
		if(data=="ok"){
			layer.msg("操作成功!", {time:800}, function(){
				location.reload();
			});
		}else if(data=="login"){
			alert("请登录后操作!");
			location.href="login.jsp";
		}else{
			alert("请求失败!");
		}
	});
}
/**
 * 购物车删除
 */
function deletes(goodid){
	$.post("goodsDeleteBuyServlet", {goodsid:goodid}, function(data){
		if(data=="ok"){
			layer.msg("删除成功!", {time:800}, function(){
				location.reload();
			});
		}else if(data=="login"){
			alert("请登录后操作!");
			location.href="login.jsp";
		}else{
			alert("请求失败!");
		}
	});
}