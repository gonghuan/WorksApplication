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
		<div id="toolbar" class="btn-group">
			<div class="col-md-2">
                <button type="button" class="btn btn-success" style="width: 60px" id="agreeBtn" onclick="agreeApplicationFromFinance()">审批</button>
            </div>
        </div>
		<div class="col-md-9" style="margin-left:20px;height:100%;overflow-x:auto;" >
			<table id="table" data-filter-control="true">
				<thead>
					<tr>
                    	<th data-checkbox="true"></th>
                    	<th data-field="id">id</th>
                    	<th data-field="store_name" data-sortable="select">storeName</th>
                    	<th data-field="warehouse_name" data-sortable="true" data-filter-control="select">warehouseName</th>
                    	<th data-field="bookname"  data-sortable="true" data-filter-control="input">bookName</th>
                    	<th data-field="isbn"  data-sortable="true" data-filter-control="input">ISBN</th>
                    	<th data-field="quantity"  data-sortable="true" data-filter-control="input">quantity</th>
                    	<th data-field="create_date"  data-sortable="true" data-filter-control="input">create_date</th>
                    	<th data-field="transport" data-sortable="true" data-filter-control="select">transport</th>
                    	<th data-field="transport_price" data-sortable="true">transportPrice</th>
                    </tr>
				</thead>
			</table>
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
		$('#table').bootstrapTable({
    		url: 'listPickupApplicationFromStores.do',
    		method: 'post',
    		toolbar: '#toolbar',
    		striped: true,
    		sidePagination: 'client',
    		pagination: true,
    		sortable: true,
    		cache: true,
    		pageNumber: 1,    		
    		pageSize: 20,
    		pageList: [10,15,25,50,100],
    		search: true,
    		showRefresh: true,
    		showToggle: true,
    		showColumns: true,
    		queryParams: 'queryParams',
    		clickToSelect: true,
    		showExport: true,
    		columns: [{
    			
    		}]
    	});
		$('#table').bootstrapTable('hideColumn', 'id');
	});
	
	function agreeApplicationFromFinance(){
		var rows = $('#table').bootstrapTable('getSelections');
		if(rows == ''){
    		alert("请先选择一条申请记录！");
    		$('#agreeBtn').attr('data-target', '');
    	}else{
    		var ids = new Array(rows.length);
    		for(var i = 0; i < rows.length; i++){
    			ids[i] = rows[i].id;
    		}
    		/* $.post() */
    		$.ajax({
    			url: 'agreePickupApplicationFromStores.do',
    			type: 'post',
    			dataType: 'json',
    			data: {'ids':ids} ,
    			success: function(data){
    				alert('审批成功');
    				$('#table').bootstrapTable('refresh');
    			},
    			error: function(data, status, error){
    				alert('错误信息:' + error);
    			}
    		});
    	}
	}
</script>
</html>
