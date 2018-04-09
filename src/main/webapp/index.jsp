<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<script src="static/assets/js/jquery.min.js"></script>
<script src="static/assets/js/amazeui.min.js"></script>
<script src="static/assets/js/app.js"></script>
</head>
<body>
	<div class="am-cf am-padding am-padding-bottom-0">
		<div class="am-fl am-cf">
			<strong class="am-text-primary am-text-lg">首页 / Index</strong>
		</div>
	</div>

	<hr>


	<div style="width:100%;">
		<ul
			class="am-avg-sm-1 am-avg-md-3 am-margin am-padding am-text-center admin-content-list ">
			<li><a href="#" class="am-text-success"><span
					class="am-icon-btn am-icon-file-text"></span><br />新增页面<br />2300</a></li>
			<!-- <li><a href="#" class="am-text-warning"><span
				class="am-icon-btn am-icon-briefcase"></span><br />成交订单<br />308</a></li> -->
			<li><a href="#" class="am-text-danger"><span
					class="am-icon-btn am-icon-recycle"></span><br />昨日访问<br />80082</a></li>
			<li><a href="#" class="am-text-secondary"><span
					class="am-icon-btn am-icon-user-md"></span><br />在线用户<br />3000</a></li>
		</ul>
	</div>

	<div style="width:100%;">
		<section data-am-widget="accordion"
			class="am-accordion am-accordion-gapped" data-am-accordion='{}'>
			<dl class="am-accordion-item am-active">
				<dt class="am-accordion-title">
					<span class="am-icon-bullhorn"></span> 公告
					<!-- <div class="am-fr">
					<span class="am-icon-arrow-left"></span>
					<span class="am-icon-arrow-right"></span>
				</div> -->
				</dt>
				<dd class="am-accordion-bd am-collapse am-in">
					<!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
					<div class="am-accordion-content">
						<ul class="am-list am-list-static">
							<li><a href="#">每个人都有一个死角， 自己走不出来，别人也闯不进去。</a></li>
							<li><a href="#">我把最深沉的秘密放在那里。</a></li>
						</ul>
					</div>
				</dd>
			</dl>

			<!-- <dl class="am-accordion-item">
			<dt class="am-accordion-title">待扩展</dt>
			<dd class="am-accordion-bd am-collapse ">
				规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器
				<div class="am-accordion-content">
					走在忠孝东路 <br /> 徘徊在茫然中 <br /> 在我的人生旅途 <br /> 选择了多少错误 <br />
					我在睡梦中惊醒 <br /> 感叹悔言无尽 <br /> 恨我不能说服自己 <br /> 接受一切教训 <br />
					让生命去等候 <br /> 等候下一个漂流 <br /> 让生命去等候 <br />等候下一个伤口
				</div>
			</dd>
		</dl> -->
		</section>
	</div>


</body>
</html>
