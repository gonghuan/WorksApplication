<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WAP</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="//cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.css" rel="stylesheet"/>
	<link href="css/bootstrap-table.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css"/>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js"></script>
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
		<div class="col-md-9" style="margin-left:20px;margin-top:10px;height:100%;overflow-x:auto;" >
			<div class="row">
				<div class="col-md-4">
					<label class="control-label col-md-4" for="inputStartDate">起始日：</label>
					<div class="date col-md-8" id="datetimepicker" data-date="" data-date-format="yyyy-mm-dd"  data-link-field="inputStartDate" data-link-format="yyyy-mm-dd">
						<input class="form-control" size="16" type="text">
    					<span class="input-group-addon"><i class="glyphicon glyphicon-remove"></i></span>
    					<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
					</div>
					<input type="hidden" id="inputStartDate" value=""/><br/>
				</div>
			</div>
			
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$('#asidebar>ul>li').removeClass('active');
		$('#asidebar>ul>li:eq(0)').addClass('active');
		
	});
	
	$('.date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
</script>
</html>
