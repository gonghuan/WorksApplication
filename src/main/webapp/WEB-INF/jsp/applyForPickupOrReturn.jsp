<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.seu.gong.model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WAP</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="//cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.css" rel="stylesheet"/>
	<link href="css/bootstrap-table.min.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
	<script src="js/bootstrap-table-zh-CN.js"></script>
	<script src="js/bootstrap-table-filter-control.js"></script>
	<style>
		body{
			background-color:#eee;
		}
		div.contentDiv{
			padding:0 30px;
		}
		*{
			-webkit-font-smoothing: antialiased;
			font-family: "HanHei SC", PingHei, "PingFang SC", "Helvetica Neue", Helvetica, Arial, "Microsoft Yahei", "Hiragino Sans GB", "Heiti SC", "WenQuanYi Micro Hei", sans-serif;
		}
	</style>
</head>
<body>
	<%@ include file="head.jsp" %> 
	<div class="contentDiv" style="width:100%;margin-top:-10px; ">
		<%@ include file="asidebar.jsp"%>
		<div class="col-md-9" style="margin-left:20px;height:100%;overflow-x:auto; margin-top:10px;" >
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="storeInput" class="col-md-2 control-label">门店名:</label>
					<div class="col-md-10">
						<input type="text" id="storeInput" class="form-control col-md-4" placeholder="请输入门店名" value="${fn:substring(user.dept, 1, user.dept.length())}" disabled="disabled">
					</div>
				</div>
				<div class="form-group">
					<label for="warehouseInput" class="col-md-2 control-label">仓库名:</label>
					<div class="col-md-10">
						<input type="text" id="warehouseInput" class="form-control col-md-4" placeholder="请输入仓库名"">
					</div>
				</div>
				<div class="form-group">
					<label for="booknameInput" class="col-md-2 control-label">书名:</label>
					<div class="col-md-10">
						<input type="text" id="booknameInput" class="form-control col-md-4" placeholder="请输入书名">
					</div>
				</div>
				<div class="form-group">
					<label for="ISBN" class="col-md-2 control-label">ISBN:</label>
					<div class="col-md-10">
						<input type="text" id="ISBN" class="form-control col-md-4" placeholder="请输入ISBN">
					</div>
				</div>
				<div class="form-group">
					<label for="quantityInput" class="col-md-2 control-label">数量:</label>
					<div class="col-md-10">
						<input type="text" id="quantityInput" class="form-control col-md-4" placeholder="请输入书本数量">
					</div>
				</div>
				<div class="form-group">
					<label for="createDateInput" class="col-md-2 control-label">申请日期:</label>
					<div class="col-md-10">
						<input type="text" id="createDateInput" class="form-control col-md-4" placeholder="请输入申请日期" disabled="disabled">
					</div>
				</div>
				<div class="form-group col-md-6">
    				<div class="col-md-offset-2 col-md-4 pull-right">
      					<button type="button" class="btn btn-success" id="applyForPickupBtn">申请提货</button>
    				</div>
  				</div>
  				<div class="form-group col-md-6">
    				<div class="col-md-offset-2 col-md-4 pull-left">
      					<button type="button" class="btn btn-danger" id="applyForReturnBtn">申请退货</button>
    				</div>
  				</div>
			</form>
			
		</div>
	</div>
</body>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-table.min.js"></script>
<script src="js/bootstrap-table-filter-control.js"></script>
<script type="text/javascript">
	$(function(){
		$('#asidebar>ul>li').removeClass('active');
		$('#asidebar>ul>li:eq(0)').addClass('active');
		$('#createDateInput').val(getNowFormatDate());
	});
	
	function getNowFormatDate() {		//获取当天的时间
        var date = new Date();
        var seperator1 = "-";
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
      	if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        } 
        var currentdate = year + seperator1 + month + seperator1 + strDate;
        return currentdate;
    }
	
	$('#booknameInput').blur(function(){
		if($('#booknameInput').val() != null && $('#booknameInput').val() != ''	
				&& ($('#ISBN').val() == '' || $('#ISBN').val() == null)){
		$.ajax({
			url: '<%=request.getContextPath()%>' + '/applyForPickupOrReturn.do',
			data: {'bookname' : $('#booknameInput').val()},
			type: 'post',
			success: function(data){
				$('#ISBN').val(data);
			},
			error: function(data, status, error){
				alert('错误信息：' + error);
			}
		});
		}
	});
	
	$('#applyForPickupBtn').click(function(){
		var ok = confirm('确认发出提货申请吗？');
		if(ok){
			$.ajax({
				url: '<%=request.getContextPath()%>' + '/applyForPickup.do',
				data: {'store_name': $('#storeInput').val(), 'warehouse_name': $('#warehouseInput').val(),
					'book_name': $('#booknameInput').val(), 'ISBN':$('#ISBN').val(),
					'quantity': $('#quantityInput').val(), 'createDate': $('#createDateInput').val()},
				type: 'post',
				success: function(data){
					if(data){
						alert('添加成功');
						location.reload();
					}else{
						alert('添加失败');
					}
					
				},
				error: function(data, status, error){
					alert('错误信息：' + error);
				}
			});
		}
	});
</script>
</html>