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
							 <dd><a href="SmartHome.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">智慧微家</a></dd>
							 <dd><a href="CommunityLectures.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社区讲座</a></dd>
							 <dd><a href="SocialServices.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社会服务</a></dd>
							 <dd><a href="#" style="color:white;" onmouseenter="this.style.background='#5ACC42'">产品</a></dd>
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
	 </div>
</div>
<!---->
<div class="gallery" id="gallery">
	<div class="container">
		<h3>产品</h3>
		<div class="gallery-grids">
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="static/indexStatic/images/Check-up_machine1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/Check-up_machine.jpg" alt="" />
							<div>
								<h5>便携式健康体检一体机</h5>
								<span>设备由平板电脑，二代身份证阅读器及健康数据采集终端组成，体检项目包含血压、血糖、血氧、尿酸、总胆固醇、心电、体温等，体检数据与云家厅监护平台对接，为用户提供有效的健康管理，为医生临床决策提供支持，让居民足不出户即可在家完成体检。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/Blood_glucose_meter1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/Blood_glucose_meter.jpg" alt="" />
							<div>
								<h5>蓝牙云血糖仪</h5>
								<span>云血糖仪采用葡萄糖氧化酶技术，具有高度特异性，不会轻易受到麦芽糖等其他糖类物质干扰，能准确的反应您的真是血糖水平。微创无痛；零痛感一次性无菌血针，直径仅0.4mm。用血量少，只需1微升，避免采血不足，带来试条浪费及测量误差</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/location_phone1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/location_phone.jpg" alt="" />
							<div>
								<h5>智能定位云手机</h5>
								<span>大字体、大声音、大按键、让老人看得见、听得清、按得准。针对老年人专门设计的人机交互界面，让老人轻松上手操作。GPS卫星与LBS基站双重定位，不论室内还是户外都能定位到，永不失联通过云家庭平台远程查看老人当前位置、当天活动轨迹，不怕老人走失。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/Calling_device1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/Calling_device.jpg" alt="" />
							<div>
								<h5>云监护智能呼叫器</h5>
								<span>机身采用极简设计，产品简约而不简单。紧急呼救按红键，一键呼叫按绿健，简单又好用。GPS/LBS双重定位，可通过云家庭服务中心监护平台在全球范围进行实时远程定位，同时还可查看老人每天活动轨迹。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/watch1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/watch.jpg" alt="" />
							<div>
								<h5>健康云智能手表</h5>
								<span>全方位支持GPS+WIFI+LBS三维定位功能。不论老人走到哪里，都能通过云家庭服务中心监护平台进行远程定位，不用担心老人迷路走失后找不到。发生危险急速救援！只需长按SOS键3秒就会自动轮拨三个预设亲情号码，同时发送包含老人当前位置信息的短信。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/Sphygmomanometer1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/Sphygmomanometer.jpg" alt="" />
							<div>
								<h5>云血压计</h5>
								<span>轻轻一按，自动加压，自动测量，爸妈一看就会。在家轻松检测，简单方便。检测血压同时，心率同步检测，血压心脏齐呵护!独特的血压分区提醒，自动分析血压监测结果，血压一目了然。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/Combustible_alarm1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/Combustible_alarm.jpg" alt="" />
							<div>
								<h5>可燃气报警器</h5>
								<span>拥有比“搜救犬”更敏锐的嗅觉 ，能探测到CH4、液化气、天然气、沼气多种可燃气体。在探测到燃气泄漏时，能将报警消息立刻推送到云家庭监控平台与用户手机APP。用户可在APP上远程联动机械手自动关闭燃气阀门，无论家人在哪里都能时时获知险情，防止火灾发生</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/weighing_scale1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/weighing_scale.jpg" alt="" />
							<div>
								<h5>云人体称</h5>
								<span>云人体秤根据您的体重信息为您提供BMI指数及健康状态分析，让您保持健康体型。BMI指数，是用体重公斤数除以身高米数平方得出的数字，是目前常用的衡量胖瘦程度以及是否健康的一个标准。</span>
							</div>
						</a>
					</li>
				</ul>
				<div class="clearfix"> </div>
			</section>
			<script type="text/javascript" src="static/indexStatic/js/jquery.hoverdir.js"></script>
			<script type="text/javascript">
                $(function() {
                    $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );
                });
			</script>
		</div>
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