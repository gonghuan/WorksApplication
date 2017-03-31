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
		<div class="col-md-9" style="margin-left:20px;height:100%;overflow-x:auto" >
			<table id="table" data-filter-control="true">
				<thead>
                    <tr>
                    	<th data-checkbox="true"></th>
                    	<th data-field="isbn" data-sortable="true">ISBN</th>
                    	<th data-field="book.name" data-sortable="true" data-filter-control="input">bookname</th>
                    	<th data-field="book.author"  data-sortable="true" data-filter-control="input">author</th>
                    	<th data-field="book.edition"  data-sortable="true" data-filter-control="select">edition</th>
                    	<th data-field="book.press"  data-sortable="true" data-filter-control="select">press</th>
                    	<th data-field="quantity"  data-sortable="true" data-filter-control="input">quantity</th>
                    	<th data-field="ceiling"  data-sortable="true">ceiling</th>
                    	<th data-field="floor"  data-sortable="true">floor</th>
                    	<th data-field="warehouse_name"  data-sortable="true" data-filter-control="select">warehouse_name</th>
                    	<th id="upOrDown" data-sortable="true" data-filter-control="select">upOrDown</th>
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
    		url: 'listAllWarning.do',
    		method: 'get',
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
    		queryParams: 'queryParams',
    		clickToSelect: true,
    		showExport: true,
    		columns: [{
    			
    		}]
    	});
	});
</script>
</html>