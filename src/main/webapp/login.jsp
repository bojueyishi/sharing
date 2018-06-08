<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>Sharing Platform</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="alternate icon" type="image/png" href="static/assets/i/favicon.png">
<link rel="stylesheet" type="text/css" href="static/assets/css/amazeui.min.css" />
<link rel="stylesheet" type="text/css" href="static/assets/css/common.css" />
<link rel="stylesheet" type="text/css" href="static/assets/css/login.css" />

<script src="static/assets/js/jquery.min.js"></script>
<script src="static/assets/js/amazeui.min.js"></script>
<script src="static/assets/js/common.js"></script>
<script src="static/assets/js/app.js"></script>
<script src="static/assets/js/login.js"></script>
	
</head>

<body class="bodycontainer">
	<%
		if(pageContext.findAttribute("message") != null) {
		    String msg = (String)pageContext.findAttribute("message");
		    out.println("<script>generateMsg('" + msg +"');</script>");
		}
	%>
	
	<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered logoContainer">
		<img src="static/assets/img/logo_login.ico" width="80px" height="80px"/>
	</div>
	
	<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered loginTitleContainer">
		<span><i>Welcome to Sharing !</i></span>
	</div>
	
	<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered maincontainer loginFormRadius">
		<form action="login.action" class="am-form formcontainer"
			method="post" onsubmit="return checkLoginParam()">
			<div class="am-form-group am-form-icon loginFormItem">
				<i class="am-icon-user"></i> <input type="text" id="username"
					class="am-form-field" style="border-radius:5px;" name="username" placeholder="用户名">
			</div>

			<div class="am-form-group am-form-icon loginFormItem">
				<i class="am-icon-credit-card"></i> <input type="password" id="password"
					name="password" class="am-form-field loginFormRadius" style="border-radius:5px;" placeholder="密码">
			</div>

			<div class="loginFormItem">
				<button type="submit" class="am-btn am-btn-success loginButton" style="border-radius:5px;">登录</button>
			</div>
			
		</form>
	</div>
	
	<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered bottomContainer">
		<div style="margin:0 2em">
			<button forget class="am-btn">忘记密码？</button>
			<button register class="am-btn">注册</button>
		</div>
	</div>
</body>
</html>
