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
			 <h3 class="abt">平安键</h3>
			 <div class="about-top">
				 <p style="color: #5c5d5a; font-size: 1.3em">为应对我市人口老龄化的迅速增长，满足广大老年人不断增长的养老服务需求，梧州市发挥政府主导作用，破解社区养老难题，联合武汉大学深圳研究院建立了一个居家养老信息化平台 - 云家庭服务中心，老人在家里就可以享受到居家养老的服务。2015年12月，云家庭服务中心正式启动，服务平台以居家养老信息化为支点，以"5812345"服务热线以及"平安键"智能手机为纽带，整合社会各类服务资源为支撑，在老年人和服务商以及志愿者义工组织之间搭建了一个安全、快捷的桥梁，为老年人提供包括"紧急救援、定位查询、便民服务、心理慰籍、日常信息咨询"在内的综合性便民服务项目，构建一个"没有围墙的养老院"。此外，中心还将用到这个平台进一步拓展家庭服务的内容，让更多的居民群众能享受到更加便捷、周到的服务。</p>
			 </div>
		 </div>
		 <!---->
		 <div class="banner-form" style="margin-top: 0">
			 <img src="static/indexStatic/images/flow1.jpg" width="100%" height="100%">
			 <img src="static/indexStatic/images/flow2.jpg" width="100%" height="100%">
			 <img src="static/indexStatic/images/flow3.jpg" width="100%" height="100%">
		 </div>
	 </div>
</div>
<!---->
<div class="gallery" id="gallery" style="margin-top: -10%;">
	<div class="container">
		<h3>平安键-位置监护</h3>
		<img src="static/indexStatic/images/SafeKeyByWechat.jpg" width="100%" height="100%" style="margin-top: 5%;margin-bottom: 3%">
		<p style="color: #5c5d5a; font-size: 1.3em">子女在外，牵挂在家的年迈老人，想知道老人的身体情况，具体位置怎么办？关注梧州市云家庭服务中心微信公众号帮到您！注册监护人帐号，并登录。点击公众号下方的关爱家人，就可以查看到对应老人的详细信息。其中包括位置监护、健康管理、老人信息三个功能。点击“位置监护“可实时查看到老人的具体位置。点击“健康管理”可随时随地了解老人的身体健康状况！</p>
    </div>
</div>
<div class="gallery" id="gallery">
	<div class="container">
		<h3>让老人找到回家的路</h3>
		<p style="color: #5c5d5a; font-size: 1.3em;margin-top: 5%;margin-bottom: 3%;margin-left: 1%"><img src="static/indexStatic/images/loaction.jpg" width="60%" height="55%" align=left style="margin-right: 3%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年9月21日下午17点左右，市云家庭接到热心市民的求助电话，有一位高龄老人在华洋花园小区门口迷路了。老人走进小区对面的中国建设银行，在银行工作人员的询问下，老人说自己找不到回家的路，脖子上挂的蓝手环可以联系到家里人。随后银行工作人员拨打了市云家庭服务热线5812345，市云家庭工作人员接到求助电话后第一时间派工作人员抵达现场，并通过蓝手环的编号及时通知老人的女儿。据悉，老人名叫劳洪斌(化名)，是家住恒祥花园的90岁以上高龄老人，老人退休前是建设银行的工作人员，女儿劳静(化名)是梧州学院的教授。老人走失的前一天，女儿劳静刚从恒祥社区免费领取了市云家庭的蓝手环，回家嘱咐老人出门要随身携带。劳女士说，云家庭的蓝手环紧急求助服务非常周到和快速，且蓝手环无需充电、对身体无害，对老年人朋友是大大的帮助，并对云家庭工作人员表示感谢。当老人遇到走失或者意外时蓝手环帮到您。蓝手环采取硅胶压制而成，具有柔软、对人体无副作用等优点；蓝手环内侧刻有每位老人固定的一个代码，对应老人的信息，佩戴蓝手环的老人遇到走失或意外时，市民可随时拨打梧州市云家庭服务中心5812345服务热线报出环内侧的代码，中心工作人员即可与其家人取得联系，让老人得到及时有效的紧急救助。对有需要的60岁以上老人免费提供;蓝手环紧急求助服务。从中心投入运营以来我们通过蓝手环、“平安健“配套定位设备协助找回走丢老人5人，紧急求援服务2人，查询定位213人次。<BR>&nbsp;<BR clear=left></p>
	</div>
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