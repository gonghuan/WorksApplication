<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
	<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body style="margin:0 auto; text-align:center">
	<div class="container col-md-8">
		<form role="form" action="login.do" class="form-horizontal" method='post'>
			<div class="form-group col-md-12">
				<label class="col-sm-4 control-label" for="nickNameInput">昵称</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="nickNameInput" name="nickName" placeHolder="请输入昵称" required="required">
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
					<button id="btnLogin" type="submit" class="btn btn-primary">登录</button>
				</div>
			</div>
		</form>
	</div>
	
</body>
<script type="text/javascript">
$(function(){
	/* $('#btnLogin').click(function(){
		var nickName = $('#nickNameInput').val();
		var password = $('#passwordInput').val();
		$.ajax({
			type: 'post',
			url:  "login.do",
			dataType: 'json',
			contentType: 'application/json; charset=utf-8',
			data:{nickName : nickName, password : password},
			success: function(data){
				alert(data);
				if(data != undefined && data != null){
					window.location.href = 'index.jsp';
				}else{
					alert("用户名或者密码错误");
				}
			},
			error: function(data, status, error){
				debugger;
				alert('错误信息：' + error);
			}
		});
	}); */
});
	
</script>
</html>