<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="这是一个 help 页面">
<meta name="keywords" content="help">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="static/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="static/assets/css/admin.css">
<link rel="stylesheet" href="static/assets/css/common.css">
<link rel="stylesheet" href="static/assets/css/schedule.css">
<script src="static/assets/js/jquery.min.js"></script>
<script src="static/assets/js/amazeui.min.js"></script>
<script src="static/assets/js/app.js"></script>
<script src="static/assets/js/echarts.min.js"></script>
<script src="static/assets/js/common.js"></script>
<script src="static/assets/js/schedule.js"></script>

</head>

<body>
	<div class="am-cf am-padding am-padding-bottom-0">
		<div class="am-fl am-cf">
			<strong class="am-text-primary am-text-lg">版本计划 / Schedule</strong>
		</div>
	</div>

	<hr>

	<div class="am-g" id="optionBar">
		<div class="am-u-sm-12 am-u-md-6">
			<div class="am-btn-toolbar">
				<shiro:hasRole name="admin">
				<div class="am-btn-group am-btn-group-xs">
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

		<div class="am-u-sm-12 am-u-md-3">
			<!-- <div class="am-input-group am-input-group-sm">
				<input type="text" class="am-form-field"> <span
					class="am-input-group-btn">
					<button class="am-btn am-btn-default" type="button">搜索</button>
				</span>
			</div> -->
			<div class="am-input-group am-input-group-primary">
				<input type="text" class="am-form-field">
				<span class="am-input-group-btn">
					<button class="am-btn am-btn-primary" type="button">
						<span class="am-icon-search"></span>
					</button>
				</span> 
			</div>
		</div>
	</div>

	<div class="am-g">
		<div class="am-u-sm-12" style="height: 315px">
			<table class="am-table am-table-striped am-table-hover table-main"
				id="tableSet">
				<thead>
					<tr>
						<th class="table-check"><label class="am-checkbox-inline">&nbsp;
								<input type="checkbox" value="" data-am-ucheck>
						</label></th>
						<th class="table-id">ID</th>
						<th class="table-title">版本号</th>
						<th class="table-author am-hide-sm-only">作者</th>
						<th class="table-author am-hide-sm-only">创建时间</th>
						<th class="table-date am-hide-sm-only">修改日期</th>
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
	</div>
	
	<%-- <shiro:hasRole name="user">  
    	<script>checkPermission()</script>
	</shiro:hasRole> --%>

	<div class="am-modal am-modal-confirm" tabindex="-1" id="del-confirm">
		<div class="am-modal-dialog">
			<div class="am-modal-bd">确定要删除这条记录吗？</div>
			<div class="am-modal-footer">
				<span class="am-modal-btn" data-am-modal-cancel>取消</span> <span
					class="am-modal-btn" data-am-modal-confirm>确定</span>
			</div>
		</div>
	</div>

	<div class="am-popup" id="editor-popup">
		<div class="am-popup-inner">
			<div class="am-popup-hd">
				<h4 class="am-popup-title"></h4>
				<span data-am-modal-close class="am-close">&times;</span>
			</div>

			<div class="am-popup-bd">
				<canvas id="showContainer" style="width: 100%; height: 300px;"></canvas>

				<div class="eidtor-area">
					<form action="">
						<section data-am-widget="accordion"
							class="am-accordion am-accordion-gapped" data-am-accordion='{  }'>
							<dl class="am-accordion-item">
								<dt class="am-accordion-title">需求串讲</dt>
								<dd class="am-accordion-bd am-collapse ">
									<div class="am-accordion-content">
										<ul class="am-list admin-content-file">
											<li>开始时间: <input type="text" startTime
												class="am-form-field" placeholder="开始时间" data-am-datepicker
												readonly required />
											</li>
											<li>结束时间: <input type="text" endTime
												class="am-form-field" placeholder="结束时间" data-am-datepicker
												readonly required />
											</li>
										</ul>
									</div>
								</dd>
							</dl>
							<dl class="am-accordion-item">
								<dt class="am-accordion-title">开发联调</dt>
								<dd class="am-accordion-bd am-collapse ">
									<div class="am-accordion-content">
										<ul class="am-list admin-content-file">
											<li>开始时间: <input type="text" startTime
												class="am-form-field" placeholder="开始时间" data-am-datepicker
												readonly required />
											</li>
											<li>结束时间: <input type="text" endTime
												class="am-form-field" placeholder="结束时间" data-am-datepicker
												readonly required />
											</li>
										</ul>
									</div>
								</dd>
							</dl>
							<dl class="am-accordion-item">
								<dt class="am-accordion-title">SDV1</dt>
								<dd class="am-accordion-bd am-collapse ">
									<div class="am-accordion-content">
										<ul class="am-list admin-content-file">
											<li>开始时间: <input type="text" startTime
												class="am-form-field" placeholder="开始时间" data-am-datepicker
												readonly required />
											</li>
											<li>结束时间: <input type="text" endTime
												class="am-form-field" placeholder="结束时间" data-am-datepicker
												readonly required />
											</li>
										</ul>
									</div>
								</dd>
							</dl>
							<dl class="am-accordion-item">
								<dt class="am-accordion-title">SDV2</dt>
								<dd class="am-accordion-bd am-collapse ">
									<div class="am-accordion-content">
										<ul class="am-list admin-content-file">
											<li>开始时间: <input type="text" startTime
												class="am-form-field" placeholder="开始时间" data-am-datepicker
												readonly required />
											</li>
											<li>结束时间: <input type="text" endTime
												class="am-form-field" placeholder="结束时间" data-am-datepicker
												readonly required />
											</li>
										</ul>
									</div>
								</dd>
							</dl>
							<dl class="am-accordion-item">
								<dt class="am-accordion-title">SDV3</dt>
								<dd class="am-accordion-bd am-collapse ">
									<div class="am-accordion-content">
										<ul class="am-list admin-content-file">
											<li>开始时间: <input type="text" startTime
												class="am-form-field" placeholder="开始时间" data-am-datepicker
												readonly required />
											</li>
											<li>结束时间: <input type="text" endTime
												class="am-form-field" placeholder="结束时间" data-am-datepicker
												readonly required />
											</li>
										</ul>
									</div>
								</dd>
							</dl>
							<dl class="am-accordion-item">
								<dt class="am-accordion-title">启动灰度</dt>
								<dd class="am-accordion-bd am-collapse ">
									<div class="am-accordion-content">
										<ul class="am-list admin-content-file">
											<li>开始时间: <input type="text" startTime
												class="am-form-field" placeholder="开始时间" data-am-datepicker
												readonly required />
											</li>
											<li>结束时间: <input type="text" endTime
												class="am-form-field" placeholder="结束时间" data-am-datepicker
												readonly required />
											</li>
										</ul>
									</div>
								</dd>
							</dl>
						</section>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>