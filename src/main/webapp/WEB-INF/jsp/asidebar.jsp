<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="edu.seu.gong.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%User user = (User)session.getAttribute("user"); %>
	<div class="col-md-2" id="asidebar" style="margin-top:10px; text-align:center; padding:15px 0;background-color:#333333; border-radius:5px;">
		<div style="padding-bottom:15px;"><span style="color:white; font-size:24px;">功能列表</span></div>
		<ul class="nav nav-pills nav-stacked col-md-12" style="padding-right:0px;">
			<c:if  test = "${user.dept.indexOf('W') != -1 && user != null}">
				<li><a href="warehouseWarning.do">仓库预警</a></li>
				<li><a href="pickupApplication.do">门店提货申请</a></li>
				<li><a href="returnApplication.do">门店退货申请</a></li>
				<li><a href="#">申请采购</a></li>
				<li><a href="#">申请退书</a></li>
				<li><a href="#">库存详情</a></li>
				<li><a href="#">入库记录</a></li>
				<li><a href="#">出库记录</a></li>
			</c:if>
			
			<c:if  test = "${user.dept.indexOf('WM') != -1 && user != null}">
				<li><a href="#">申请调配</a></li>
			</c:if>
			
			<c:if  test = "${user.dept.indexOf('B') != -1 && user != null}">
				<li><a href="applyForPickupOrReturn.do">申请提货/退货</a></li>
				<li><a href="#">门店预警</a></li>
				<li><a href="#">添加订单</a></li>
				<li><a href="#">设置优惠活动</a></li>
				<li><a href="#">门店报表</a></li>
				<li><a href="#">入库记录</a></li>
				<li><a href="#">库存详情</a></li>
			</c:if>
			
			<c:if  test = "${user.dept.indexOf('F') != -1 && user != null}">
				<li><a href="applyForPickupFromStores.do">门店提货申请</a></li>
				<li><a href="#">门店退货申请</a></li>
				<li><a href="#">仓库调配申请</a></li>
				<li><a href="#">采购申请</a></li>
				<li><a href="#">退购申请</a></li>
			</c:if>
			
			<c:if  test = "${user.dept.indexOf('S') != -1 && user != null}">
				<li><a href="salesReport.do">报表</a></li>
			</c:if>
		</ul>
	</div>

