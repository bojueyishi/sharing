<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

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


<script src="static/assets/js/jquery.min.js"></script>
<script src="static/assets/js/amazeui.min.js"></script>
<script src="static/assets/js/app.js"></script>
<script src="static/assets/js/home.js"></script>

</head>
<body>
	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<img alt="" src="static/assets/img/logo_home.ico" width="35px" height="35px">
			<span class="homeTitle">欢迎来到 -- Sharing</span>
		</div>

		<!-- <button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button> -->

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li class="am-hide-sm-only"><a href="javascript:;"> <span
						class="admin-fullText">欢迎你: <shiro:principal />
					</span></a></li>
				<li class="am-hide-sm-only"><a href="logout"> <span
						class="am-icon-sign-out"> 退出</span></a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<div class="navbar-left am-fl">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a id="index" class="myActive" onclick="changNav(this)"><span
							class="am-icon-home"></span> 首页</a></li>
					<li><a id="schedule" onclick="changNav(this)"><span
							class="am-icon-calendar-check-o"></span> 版本计划</a></li>
					<li><a id="requirementlist" onclick="changNav(this)"><span
							class="am-icon-list-alt"></span> 需求清单</a></li>
					<li><a id="weeklyreport" onclick="changNav(this)"><span
							class="am-icon-edit"></span> 周报</a></li>
					<li><a id="flowwork" onclick="changNav(this)"><span
							class="am-icon-comments-o"></span> 电子流</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-cogs"></span> 设置 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub"
							id="collapse-nav">
							<li><a id="userinfo" onclick="changNav(this)"><span
									class="am-icon-users"></span> 个人资料</a></li>
							<li><a id="help" onclick="changNav(this)"><span
									class="am-icon-info-circle"></span> 关于</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

		<div class="admin-content navbar-content am-fr">
			<div class="admin-content-body" style="background-color:grey" id="mainContainer">
				<iframe id="iframepage" width="100%" scrolling="no"
					onload="changeFrameHeight()" src="schedule.jsp"></iframe>
			</div>
		</div>
	</div>
</body>
</html>
