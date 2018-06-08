<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<link rel="stylesheet" href="static/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="static/assets/css/admin.css">
<link rel="stylesheet" href="static/assets/css/productproblem.css">

</head>
<body>
	<div class="am-cf am-padding am-padding-bottom-0">
		<div class="am-fl am-cf">
			<strong class="am-text-primary am-text-lg">现网问题 /
				ProductProblem</strong>
		</div>
	</div>

	<hr>

	<div class="changeView">
		<ul>
			<li>
				<a class="am-icon-table"></a>
			</li>
			<li>
				<a class="am-icon-bar-chart"></a>
			</li>
		</ul>
	</div>

	<div class="am-g">
		<div class="am-u-sm-12 am-u-md-12">
			<div class="am-btn-toolbar">
				<div class="am-u-md-10 topbarquery">
					<div class="queryGroup datePickContent">
						<input class="startTime" type="text" placeholder="选择开始时间"
							data-am-datepicker="{theme: 'success'}" readonly /> 
						<input class="endTime" type="text" placeholder="选择结束时间"
							data-am-datepicker="{theme: 'success'}" readonly />
					</div>

					<div class="queryGroup groupPickContent">
						<select>
							<option value="" disabled selected style='display:none;'>选择模块</option>  
							<option value="volvo">成就</option>
							<option value="saab">活动</option>
							<option value="opel">消息中心</option>
							<option value="audi">运动建议</option>
						</select> 
						
						<select>
							<option value="" disabled selected style='display:none;'>选择版本</option>  
							<option value="volvo">2.1.10</option>
							<option value="saab">2.1.9</option>
							<option value="opel">2.1.8</option>
							<option value="audi">2.1.7</option>
						</select>
					</div>
					
					<div class="queryGroup queryButtonContent">
						<span class="am-icon-search"></span> 查询
					</div>
				</div>

				<shiro:hasRole name="admin">
					<div class="am-u-md-2 am-btn-group am-btn-group-xs topbarop">
						<button type="button" new class="am-btn am-btn-success">
							<span class="am-icon-plus"></span> 新增
						</button>

						<button type="button" delete class="am-btn am-btn-danger">
							<span class="am-icon-trash-o"></span> 删除
						</button>
					</div>
				</shiro:hasRole>
			</div>
		</div>
	</div>

	<div class="am-g main">
		<div class="am-u-sm-12" style="height: 315px">
			<table class="am-table am-table-striped am-table-hover table-main"
				id="tableSet">
				<thead>
					<tr>
						<th class="table-check"><label class="am-checkbox-inline">&nbsp;
								<input type="checkbox" value="" data-am-ucheck>
						</label></th>
						<th class="table-title">版本号</th>
						<th class="table-author am-hide-sm-only">模块名称</th>
						<th class="table-author am-hide-sm-only">问题归属</th>
						<th class="table-date am-hide-sm-only">问题级别</th>
						<th class="table-date am-hide-sm-only">问题级别</th>
						<th class="table-date am-hide-sm-only">问题状态</th>
						<th class="table-date am-hide-sm-only">问题描述</th>
						<th class="table-set">操作</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
		<div class="am-u-sm-12">
			<div class="am-cf" id="pageBar"></div>
		</div>
		
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		<p>xxxxx</p>
		
	</div>
	<script src="static/assets/js/jquery.min.js"></script>
	<script src="static/assets/js/amazeui.min.js"></script>
	<script src="static/assets/js/app.js"></script>
	<script src="static/assets/js/echarts.min.js"></script>
	<script src="static/assets/js/common.js"></script>
	<script src="static/assets/js/productproblem.js"></script>
</body>
</html>
