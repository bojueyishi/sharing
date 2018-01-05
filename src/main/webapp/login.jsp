<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<link rel="alternate icon" type="image/png"
	href="static/assets/i/favicon.png">
<link rel="stylesheet" type="text/css"
	href="static/assets/css/amazeui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/assets/css/login.css" />
	
<script>
	
</script>
</head>

<body class="bodycontainer">
	<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered msgcontainer">
		<span class="">${msg}</span>
	</div>
	
	<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered maincontainer">
		<form action="login.action" class="am-form formcontainer"
			method="post">
			<div class="am-form-group am-form-icon">
				<i class="am-icon-user"></i> <input type="text"
					class="am-form-field" name="username" placeholder="用户名">
			</div>

			<div class="am-form-group am-form-icon">
				<i class="am-icon-credit-card"></i> <input type="password"
					name="password" class="am-form-field" placeholder="密码">
			</div>

			<button type="submit" class="am-btn am-btn-secondary am-fr">登录</button>
		</form>
	</div>
</body>
</html>
