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
</head>
<body>
	<div class="container">
		 <div class="row">
		 	<div class="col-md-12">
		 		<div class="panel panel-default">
		 			<div class="panel-heading">
                        <div class="row">
                            <h3 class="panel-title">warehouse in stock warning</h3>
                        </div>
                    </div>
                    <div class="panel-body">
                    	<table id="table1">
							<thead>
								<th data-checkbox="true"></th>
								<th data-field="book_name" data-sortable="true">bookName</th>
								<th data-field="author" data-sortable="true">author</th>
								<th data-field="press" data-sortable="true">press</th>
								<th data-field="quantity" data-sortable="true">quantity</th>
								<th data-field="warehouse_name" data-sortable="true">warehouse</th>
								<th data-field="upOrDown" data-sortable="true">upOrDown</th>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td>计算机网络</td>
									<td>谢希仁</td>
									<td>电子工业出版社</td>
									<td>30</td>
									<td>上海仓库1</td>
									<td><span style="color:blue">down</span></td>
								</tr>
								<tr>
									<td></td>
									<td>Hadoop权威指南</td>
									<td>Tom Wbite</td>
									<td>清华大学出版社</td>
									<td>5000</td>
									<td>杭州仓库1</td>
									<td><span style="color:red">up</span></td>
								</tr>
							</tbody>
						</table>
                    </div>
		 		</div>
		 	</div>
		 </div>
	</div>
	
</body>
<script type="text/javascript">
	 $(function(){
		$('#table1').bootstrapTable({
			url: '#',
			striped: true,
    		pagination: true,
    		sortable: true,
    		pageSize: 20,
    		pageList: [10, 25, 50, 100],
    		search: true,
    		//showColumns: true, // 开启自定义列显示功能
    		showRefresh: true,
    		//showToggle: true,
    		queryParams: 'queryParams',
    		clickToSelect: true,
    		columns:[]
		});
	}); 
</script>
</html>