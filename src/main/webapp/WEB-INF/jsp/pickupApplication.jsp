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
		<div id="toolbar" class="btn-group">
			<div class="col-md-2">
                <button type="button" class="btn btn-success" style="width: 60px" id="agreeBtn" data-toggle="modal" data-target="#setExchange" data-backdrop="static" data-keyboard="false" onclick="setTransportInfo()">同意</button>
            </div>
            <div class="modal fade" id="setExchange" tabindex="-1" role="dialog" aria-labelledby="exTitle" aria-hidden="true">
            	<div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关</span></button>
                            <h4 class="modal-title" id="exTitle">请输入物流信息</h4>
                        </div>
                        <form class="modal-body row" role="form">
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                 <label for="inputStoreName" class="col-sm-3 control-label">门店名：</label>
                                 <div class="col-sm-9">
                                     <input type="text" class="form-control" id="inputStoreName" disabled="disabled">
                                 </div>
                             </div>
                                        	
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                  <label for="inputWarehouseName" class="col-sm-3 control-label">仓库名：</label>
                                  <div class="col-sm-9">
                                      <input type="text" class="form-control" id="inputWarehouseName" disabled="disabled">
                                  </div>
                             </div>
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                  <label for="inputBookName" class="col-sm-3 control-label">书名：</label>
                                  <div class="col-sm-9">
                                       <input type="text" class="form-control" id="inputBookName" disabled="disabled">
                                  </div>
                             </div>
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                  <label for="inputISBN" class="col-sm-3 control-label">ISBN：</label>
                                  <div class="col-sm-9">
                                       <input type="text" class="form-control" id="inputISBN" disabled="disabled">
                                  </div>
                             </div>
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                  <label for="inputQuantity" class="col-sm-3 control-label">数量：</label>
                                  <div class="col-sm-9">
                                       <input type="text" class="form-control" id="inputQuantity" disabled="disabled">
                                  </div>
                             </div>
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                  <label for="inputTransport" class="col-sm-3 control-label">物流公司：</label>
                                  <div class="col-sm-9">
                                       <input type="text" class="form-control" id="inputTransport" placeholder="请输入物流公司">
                                  </div>
                             </div>
                             <!-- <div class="form-group col-sm-10 col-sm-offset-1">
                                  <label for="inputTransportId" class="col-sm-3 control-label">物流单号：</label>
                                  <div class="col-sm-9">
                                       <input type="text" class="form-control" id="inputTransportId">
                                  </div>
                             </div> -->
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                  <label for="inputTransportPrice" class="col-sm-3 control-label">物流费用：</label>
                                  <div class="col-sm-9">
                                       <input type="text" class="form-control" id="inputTransportPrice" placeholder="请输入物流费用">
                                  </div>
                             </div>
                        </form>
                        <div class="modal-footer">
                             <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                             <button type="button" class="btn btn-success" id="saveAgreeBtn" data-dismiss="modal">保存</button>
                        </div>
              		</div>
            	</div>
            </div>
            <div class="col-md-2 col-md-offset-3">
                <button type="button" class="btn btn-danger" style="width: 60px" id="disagreeBtn" data-toggle="modal" data-target="#setDisagree" data-backdrop="static" data-keyboard="false" onclick="setDisagree()">拒绝</button>
            </div>
             <div class="modal fade" id="setDisagree" tabindex="-1" role="dialog" aria-labelledby="exTitle" aria-hidden="true">
            	<div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关</span></button>
                            <h4 class="modal-title" id="exTitle">请输入拒绝原因</h4>
                        </div>
                        <form class="modal-body row" role="form">
                             <div class="form-group col-sm-10 col-sm-offset-1">
                                 <label for="inputDisagreeReason" class="col-sm-3 control-label">拒绝理由：</label>
                                 <div class="col-sm-9">
                                     <textarea class="form-control" id="saveDisagreeBtn" placeholder="请输入拒绝理由"></textarea>
                                 </div>
                             </div>
                        </form>
                        <div class="modal-footer">
                             <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                             <button type="submit" class="btn btn-success" id="exchangeSubmit" data-dismiss="modal">保存</button>
                        </div>
              		</div>
            	</div>
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
		$('#asidebar>ul>li:eq(1)').addClass('active');
		$('#table').bootstrapTable({
    		url: 'listAllPickupApplication.do',
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
    		showColumns: true,
    		queryParams: 'queryParams',
    		clickToSelect: true,
    		showExport: true,
    		columns: [{
    			
    		}]
    	});
		$('#table').bootstrapTable('hideColumn', 'id');
	});
	
	function setTransportInfo(){
		var rows = $('#table').bootstrapTable('getSelections');
    	if(rows == ''){
    		alert("请先选择一条申请记录！");
    		$('#agreeBtn').attr('data-target', '');
    	}else{
    		$('#agreeBtn').attr('data-target', '#setExchange');
    		row = rows[0];
    		$('#inputStoreName').val(row.store_name);
    		$('#inputWarehouseName').val(row.warehouse_name);
    		$('#inputBookName').val(row.bookname);
    		$('#inputISBN').val(row.isbn);
    		$('#inputQuantity').val(row.quantity);
    		$('#saveAgreeBtn').click(function(){
    			$.ajax({
    				url: 'updateTransportInfo.do',
    				type: 'post',
    				data: {'id': row.id, 'transport': $('#inputTransport').val(),
    					   'transportPrice':$('#inputTransportPrice').val()},
    				success: function(data){
    					if(data){
    						alert('保存成功！');
    						$('#table').bootstrapTable('refresh');
    					}else{
    						alert('保存失败！');
    					}
    				},
    				error: function(data, status, error){
    					alert('错误信息：' + error);
    				}
    			});
    		});
    	}
	}
	
	function setDisagree(){
		var rows = $('#table').bootstrapTable('getSelections');
    	if(rows == ''){
    		alert("请先选择一条申请记录！");
    		$('#disagreeBtn').attr('data-target', '');
    	}else{
    		$('#disagreeBtn').attr('data-target', '#setDisagree');
    		row = rows[0];
    	}
	}
</script>
</html>