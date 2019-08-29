<%--
Created by IntelliJ IDEA.
User: lqh90
Date: 2018/10/30
Time: 10:00
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="static/indexStatic/css/applyDownload.css" type="text/css">
<link rel="stylesheet" href="static/indexStatic/css/Service.css" type="text/css">
<link rel="stylesheet" href="static/indexStatic/css/main.css" type="text/css">
<link rel="stylesheet" href="static/indexStatic/css/toolTip.css" type="text/css">
<link href="static/indexStatic/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="static/indexStatic/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="static/indexStatic/css/chocolat.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="static/indexStatic/layui/css/layui.css" type="text/css" media="all"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="static/indexStatic/js/modernizr.custom.97074.js"></script>
<script src="static/indexStatic/js/jquery-3.3.1.min.js"></script>
<script src="static/indexStatic/js/ToolTip.js"></script>
<!---->
<script type="text/javascript" src="static/indexStatic/js/move-top.js"></script>
<script type="text/javascript" src="static/indexStatic/js/easing.js"></script>
<script src="static/indexStatic/layui/layui.all.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---->
</head>
<body>
<style>
	.img1{
		width:115px;
		height: 115px;
		margin: 5px;
	}
</style>
<!--banner-->
<jsp:include page="indexNav.jsp" flush="true"></jsp:include>
<div id="home" class="Sbanner" style="border-radius: 2%;margin-bottom: 0">
	 <div class="top-menu">
		 <div class="container" style="width: 100%;margin-left: 0;margin-right: 0">
			 <nav class="cl-effect-1">
				 <span class="menu"><img src="static/indexStatic/images/nav-icon.png" alt=""/></span>
				 <ul class="layui-nav" style="background-color:#5ACC42">
					 <li class="layui-nav-item"><a href="./index.jsp">首页</a></li>
					 <li class="layui-nav-item"><a href="./index.jsp">关于我们</a></li>
					 <li class="layui-nav-item">
						 <a href="javascript:;">产品与服务</a>
						 <dl class="layui-nav-child" style="display: none;background-color:#5ACC42">
							 <dd><a href="SafeKey.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">平安键</a></dd>
							 <dd><a href="" style="color:white;" onmouseenter="this.style.background='#5ACC42'">智慧微家</a></dd>
							 <dd><a href="CommunityLectures.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社区讲座</a></dd>
							 <dd><a href="SocialServices.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社会服务</a></dd>
							 <dd><a href="Product.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">产品</a></dd>
						 </dl>
					 </li>
					 <li class="layui-nav-item"><a href="news.jsp">中心动态</a></li>
					 <li class="layui-nav-item"><a href="index.jsp">应用下载</a></li>
					 <li class="layui-nav-item"><a href="index.jsp">招贤纳士</a></li>
					 <li class="layui-nav-item"><a href="login.jsp">数据中心</a></li>
				 </ul>
			 </nav>
		 </div>
		 <!-- script-for-menu -->
		 <script>
					$("span.menu").click(function(){
						$(".top-menu ul").slideToggle("slow" , function(){
						});
					});
		 </script>
		 <script src="static/indexStatic/layui/layui.all.js">
             layui.use('element', function(){
                 var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块
                 //监听导航点击
                 element.on('nav(demo)', function(elem){
                     //console.log(elem)
                     layer.msg(elem.text());
                 });
             });
		 </script>
		 <!-- script-for-menu -->
		 <div class="container" style="margin-bottom: 2%;margin-top: 4%">
			 <h3 class="abt">智慧微家</h3>
			 <div class="about-top">
				 <p style="color: #5c5d5a; font-size: 1.3em">智慧微家主要通过政府购买服务，为居家老人（目前重点为60岁以上城市三无、低保、失独、居家失能、半失能、空巢等特殊困难的老人和重点优抚对象以及85岁以上的高龄老人）提供康复护理、生活照料、精神慰藉等上门服务。依托“智慧微家”社区养老服务平台开展派单服务，在上门服务和服务结束离开时要扫码老人二维码，接受平台的实时监督；并采取现场由老人当面评价、上传现场服务图片，平台话务员当天回访记录等整套服务体系突出实时互动和实用性的平台功能和特色，打造完整的老年人服务体系。</p>
			 </div>
		 </div>
		 <!---->
		 <div class="banner-form" style="margin-top: 0">
			 <img src="static/indexStatic/images/SmartHome.jpg" width="80%">
		 </div>
	 </div>
</div>
<div class="gallery" id="gallery">
	<div align="center" class="container">
		<%--<p style="color: #5c5d5a; font-size: 1.3em;margin-top: 5%;margin-bottom: 3%;margin-left: 1%"><img src="static/indexStatic/images/temp2.jpg" width="50%" style="margin-left: 3%;float: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;康复护理：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为老年人定期上门或定点提供测血压、血糖等健康体检，建立健康档案并实时更新老年人健康数据等健康管理服务；提供常见病的问诊和用药指导；提供身体局部按摩、PDF神灯、拔罐、艾灸、针灸等康复理疗服务。</p>--%>
		<img src="static/indexStatic/images/test.jpg" width="100%" style="border-radius: 3%">
	</div>
	<%--<div class="container">--%>
		<%--<p style="color: #5c5d5a; font-size: 1.3em;margin-top: 5%;margin-bottom: 3%;margin-left: 1%"><img src="static/indexStatic/images/temp1.jpg" width="50%" align=left style="margin-right: 3%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生活照料服务：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
			<%--由具备家政服务或养老护理资质的社会服务机构和个人，为老年人提供居家清洁、物品整理、衣物清洗等保洁服务；上门理发、助浴、剪脚指甲等个人清洁服务。<BR>&nbsp;<BR clear=left></p>--%>
	<%--</div>--%>
</div>
<!---->
<!--script-->
<script src="static/indexStatic/js/jquery.chocolat.js"></script>
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
<!--script-->
<jsp:include page="indexFoot.jsp" flush="true"></jsp:include>
<!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->
</body>
</html>