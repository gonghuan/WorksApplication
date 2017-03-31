<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.seu.gong.model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%User user = (User)session.getAttribute("user"); %>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
	<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body style="margin:0 auto; text-align:center">
	<div class="container col-md-8">
		<form role="form" action="login.do" class="form-horizontal">
			<div class="form-group col-md-12">
				<label class="col-sm-4 control-label" for="idInput">职工号</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="idInput" name="id" placeHolder="请输入职工号" required="required">
				</div>
			</div>
			<div class="form-group col-md-12">
				<label class="col-sm-4 control-label" for="passwordInput">密码</label>
				<div class="col-sm-8">
					<input type="password" class="form-control" id="passwordInput" name="password" placeHolder="请输入密码" required="required">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-8">
					<button id="btnLogin" type="button" class="btn btn-primary">登录</button>
				</div>
			</div>
		</form>
	</div>
	
</body>
<script type="text/javascript">
$(function(){
	$('#btnLogin').click(function(){
		var id = $('#idInput').val();
		var password = $('#passwordInput').val();
		$.ajax({
			type: 'post',
			url:  '<%=request.getContextPath()%>' + '/login.do',
			data:{id : id, password : password},
			success: function(data){
				if(data == 1){
					var dept = "${user.getDept()}";		//EL表达式 
					if(dept.toLocaleLowerCase().indexOf("w") != -1)
						window.location.href = "<%=request.getContextPath() %>" + '/warehouseWarning.do';
					else if(dept.toLocaleLowerCase().indexOf("b") != -1)
						window.location.href = "<%=request.getContextPath() %>" + '/applyForPickupOrReturn.do';
					else if(dept.toLocaleLowerCase().indexOf("f") != -1)
						window.location.href = 'applyForPickupFromStores.do';
					else if(dept.toLocaleLowerCase().indexOf("s") != -1)
						window.location.href = 'salesReport.do';
					else window.location.href = 'index.do'; 
				}else{
					alert("用户名或者密码错误");
				}
			},
			error: function(data, status, error){
				alert('错误信息：' + error);
			}
		});
	});
});
	
</script>
</html>