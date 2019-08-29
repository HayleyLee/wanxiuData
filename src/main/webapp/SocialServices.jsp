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
							 <dd><a href="SmartHome.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">智慧微家</a></dd>
							 <dd><a href="CommunityLectures.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社区讲座</a></dd>
							 <dd><a href="" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社会服务</a></dd>
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
	 </div>
</div>
<!---->
<div class="gallery" id="gallery">
	<div class="container">
		<%--<h3>社会服务</h3>--%>
		<%--<p style="color: #5c5d5a; font-size: 1.3em;margin-top: 5%;margin-bottom: 3%;margin-left: 1%"><img src="static/indexStatic/images/Social1.jpg" width="50%" align=left style="margin-right: 3%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为帮助残疾人增强生活信心、提升社会参与能力、提高服务对象生活质量，把党和政府关心残疾的情怀落到实处。受市残联委托，2017年“阳光家园计划”由梧州市云家庭服务中心负责实施。自“阳光家园计划”开展以来，梧州市云家庭服务中心工作人员在党员干部的带领下深入万秀、长洲、龙圩三城区为473位残疾人送去关爱服务。该项服务内容主要包括“基本生活照料”、“康复护理”“精神慰藉”“送餐服务”等。同时梧州市云家庭服务中心通过智慧微家信息服务平台为473名服务对象实施电子数据库的动态管理并开展包括紧急救援、位置监护、便民服务、日常求助、定期电话回访关爱慰问、节日慰问、天气变化提醒等上线关爱服务！<BR>&nbsp;<BR clear=left></p>--%>
		<img src="static/indexStatic/images/ServiceSupervision.jpg" width="100%" align=center>
	</div>
	<%--<div class="container">--%>
		<%--<p style="color: #5c5d5a; font-size: 1.3em;margin-top: 5%;margin-bottom: 3%;margin-left: 1%"><img src="static/indexStatic/images/Social1.jpg" width="50%" style="margin-left: 3%;float: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年9月21日下午17点左右，市云家庭接到热心市民的求助电话，有一位高龄老人在华洋花园小区门口迷路了。老人走进小区对面的中国建设银行，在银行工作人员的询问下，老人说自己找不到回家的路，脖子上挂的蓝手环可以联系到家里人。随后银行工作人员拨打了市云家庭服务热线5812345，市云家庭工作人员接到求助电话后第一时间派工作人员抵达现场，并通过蓝手环的编号及时通知老人的女儿。据悉，老人名叫劳洪斌(化名)，是家住恒祥花园的90岁以上高龄老人，老人退休前是建设银行的工作人员，女儿劳静(化名)是梧州学院的教授。老人走失的前一天，女儿劳静刚从恒祥社区免费领取了市云家庭的蓝手环，回家嘱咐老人出门要随身携带</p>--%>
	<%--</div>--%>
</div>
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