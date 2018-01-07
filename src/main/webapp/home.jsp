<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js fixed-layout">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sharing Platform</title>
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="static/assets/i/favicon.png">
<link rel="static/apple-touch-icon-precomposed"
	href="static/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="static/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="static/assets/css/admin.css">
<link rel="stylesheet" href="static/assets/css/home.css">
</head>
<body>
	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<!-- <img class="am-header-icon-custom" src="static/assets/img/logo.png" alt="" width="30px" height="30px"/> -->
			<span style="margin-left:5px"><strong>欢迎来到 -- Sharing Platform</strong></span>
		</div>

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
			<ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li class="am-hide-sm-only"><a href="javascript:;"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">你好，jwx373864</span></a></li>
				<li class="am-hide-sm-only"><a href="javascript:;"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">退出</span></a></li>
				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">全屏</span></a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a id="index" onclick="changNav(this)"><span class="am-icon-home"></span>
							首页</a></li>
					<li><a id="schedule" onclick="changNav(this)"><span class="am-icon-calendar-o"></span>
							版本计划</a></li>
					<li><a id="requirementlist" onclick="changNav(this)"><span
							class="am-icon-list-alt"></span> 需求清单</a></li>
					<li><a id="weeklyreport" onclick="changNav(this)"><span
							class="am-icon-edit"></span> 周报</a></li>		
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-cogs"></span> 设置 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub"
							id="collapse-nav">
							<li><a id="userinfo" onclick="changNav(this)"><span class="am-icon-users"></span> 个人资料</a></li>
							<li><a id="help" onclick="changNav(this)"><span class="am-icon-info-circle"></span> 关于</a></li>
						</ul>
					</li>
				</ul>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd notice">
						<p>
							<span class="am-icon-bookmark"></span> 公告
						</p>
						<p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
					</div>
				</div>

				<!-- <div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-tag"></span> wiki
						</p>
						<p>Welcome to the Amaze UI wiki!</p>
					</div>
				</div> -->
			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<iframe id="iframepage" width="100%" scrolling="no" onload="changeFrameHeight()" src="schedule.jsp"></iframe>
			</div>
		</div>
		<!-- content end -->

	</div>

	<script src="static/assets/js/jquery.min.js"></script>
	<script src="static/assets/js/amazeui.min.js"></script>
	<script src="static/assets/js/app.js"></script>
	<script src="static/assets/js/home.js"></script>
</body>
</html>
