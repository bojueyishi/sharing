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
<link rel="stylesheet" href="static/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="static/assets/css/amazeui.min.css" />

<link rel="stylesheet" href="static/assets/css/admin.css">
<link rel="stylesheet" href="static/assets/css/common.css">
<link rel="stylesheet" href="static/assets/css/flowwork.css">
<script src="static/assets/js/jquery.min.js"></script>
<script src="static/assets/js/amazeui.min.js"></script>
<!-- <script src="static/assets/js/bootstrap.min.js"></script> -->
<script src="static/assets/js/app.js"></script>
<script src="static/assets/js/common.js"></script>
<script src="static/assets/js/flowwork.js"></script>

</head>

<body>
	<div class="am-cf am-padding am-padding-bottom-0">
		<div class="am-fl am-cf">
			<strong class="am-text-primary am-text-lg">电子流 / FlowWork</strong>
		</div>
	</div>

	<hr>

	<div class="am-tabs mytabs" data-am-tabs="{noSwipe: 1}" id="my-tabs">
		<ul class="am-tabs-nav am-nav am-nav-tabs">
			<li><a inhand href="#tab1">流程中</a></li>
			<li><a finished href="#tab2">已结束</a></li>
			<li style="float: right"><button type="button" id="newWorkFlow"
					class="am-btn am-btn-success">新建流程</button></li>
		</ul>

		<div class="am-tabs-bd">
			<div class="am-tab-panel am-fade" id="tab1">
				<table class="am-table">
					<thead>
						<tr>
							<th>流程名称</th>
							<th>使用者</th>
							<th>所借机型</th>
							<th>始借时间</th>
							<th>归还时间</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>

			</div>

			<div class="am-tab-panel am-fade" id="tab2">
				<table class="am-table">
					<thead>
						<tr>
							<th>流程名称</th>
							<th>使用者</th>
							<th>所借机型</th>
							<th>始借时间</th>
							<th>归还时间</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="pageBar" id="pageBar"></div>

	<div class="am-modal am-modal-no-btn" tabindex="-1"
		id="newworkflow-modal">
		<div class="am-modal-dialog">
			<div class="am-modal-hd">
				<span style="font-size: 0.9em"><strong>新建电子流 / New
						WorkFlow</strong></span><a href="javascript: void(0)"
					class="am-close am-close-spin" data-am-modal-close>&times;</a>
			</div>
			<div class="am-modal-bd">
				<div class="newWorkFlowGroup">
					<label for="workFlowName">电子流类型</label>
					<select id="workFlowName">
						<option value="测试机借用">测试机借用</option>
					</select>
				</div>

				<div class="newWorkFlowGroup">
					<label for="equipmentName">可借机型</label> 
					<select id="equipmentName">
					</select>
				</div>

				<div class="newWorkFlowGroup" style="margin-top:2em;">
					<button class="am-btn am-btn-default">提交</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
