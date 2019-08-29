<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="static/css/styles/normalize.css" />
<link rel="stylesheet" type="text/css" href="static/css/styles/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="static/css/styles/component.css" />
	<script src="static/js/scripts/Plugin/jquery-3.3.1.min.js"></script>
<!--[if IE]-->
<script src="static/js/html5.js"></script>
<![endif]-->
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>欢迎你</h3>
						<form method="post" action="/Old/login" id="formId">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="name" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div class="mb2">
								<a onclick="document:formId.submit()" class="act-but submit" style="color: #FFFFFF">登录</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="static/js/TweenLite.min.js"></script>
		<script src="static/js/EasePack.min.js"></script>
		<script src="static/js/rAF.js"></script>
		<script src="static/js/demo-1.js"></script>
	</body>
<script>
	$(document).on("keydown",function (event) {
		var e=event || window.event || arguments.callee.caller.arguments[0];
		if(e && e.keyCode==13){
		    document:formId.submit();
		}
    });
</script>
</html>