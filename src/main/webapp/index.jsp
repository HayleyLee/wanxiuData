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
<script src="static/indexStatic/layui/layui.all.js"></script>
<!---->
<script type="text/javascript" src="static/indexStatic/js/move-top.js"></script>
<script type="text/javascript" src="static/indexStatic/js/easing.js"></script>
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
<div id="home" class="banner" style="border-radius: 2%;">
	 <div class="top-menu" style="width: 100%;margin-left: 0;margin-right: 0">
		 <div class="container" style="width: 100%;margin-left: 0;margin-right: 0">
			 <nav class="cl-effect-1">
				<span class="menu"><img src="static/indexStatic/images/nav-icon.png" alt=""/></span>
			 <ul class="layui-nav" style="background-color:#5ACC42">
				 <li class="layui-nav-item"><a class="scroll" href="#home">首页</a></li>
				 <li class="layui-nav-item"><a class="scroll" href="#about">关于我们</a></li>
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
				 <li class="layui-nav-item"><a class="scroll" href="#apkDownload">应用下载</a></li>
				 <li class="layui-nav-item"><a class="scroll" href="#testi">招贤纳士</a></li>
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
	 <div class="banner-info">
	 </div>
	 <div class="banner-form">
		 <div class="container" style="margin-top: 40%;margin-bottom: 0">
			 <p>智慧微家 = 移动互联网 + 智慧养老</p>
			 <form>
				<input type="text" value="" placeholder="请输入身份证号码">
				<input type="submit" value="查询老人信息">
			</form>
		 </div>
	 </div>
</div>
<!---->
<div id="about" class="about">
	 <div class="container">		 
		 <h3 class="abt">关于我们</h3>
		 <div class="about-top">
			 <h4>梧州市云家庭服务中心</h4>
             <p>梧州市云家庭服务中心成立于2015年12月，是梧州市民政局、武汉大学广东研究院、深圳市凡达讯科技有限公司联合共建的“互联网+”社区居家养老服务非盈利机构，中心采取公建民营的模式，由梧州市凡达讯云家庭服务中心运营，该项目的建立主要为辖区的空巢老人、孤寡老人、高龄老人、离退休老干部及行动不便的老人提供方便、快捷、贴心的社区居家养老和日常生活便民服务，中心致力于社区居家养老服务及互联网+社区健康养老平台建设运营，提供老年人“紧急救援、日常求助、位置监护、健康管理、生活照料、康复护理、精神慰藉”等基本服务和居民家庭生活服务，旨在打造“没有围墙的养老院”和为民智慧生活服务平台。该项目以“建设健康居家信息化、位置监护智能化、便民服务呼叫社区化、商家服务搜索订购精准化、健康管理社交化”为核心，以“建立家庭信息数据库”为基础，以提供“紧急救援、日常求助、位置监护、健康管理、生活照料、康复护理、便民服务、精神慰藉、儿女关爱”为基本服务内容，有效“整合社会服务资源”为服务主体，构建“区、街道、社区、家庭”四级服务体系、以“社工、义工、商家、子女”为基础建立立体服务机制，通过移动互联网技术建立完善的健康居家养老服务体系，打造真正意义上的“没有围墙的养老院”</p>
		 </div>
		 <div class="about-grids">
			 <div class="col-md-6 about-grid-info">
			     <h3>梧州市云家庭服务中心</h3>
				 <p>自中心成立以来，在梧州市委、市政府和上级民政部门的高度重视和大力支持，梧州市云家庭服务中心的工作与发展得到了社会充分肯定。2015年至今梧州市云家庭连续列入市、区（县）两级政府为民办实事项目，市政府把云家庭服务中心的建设列入了全市发展养老服务体系的惠民工程建设中。 2017年市政府将云家庭工作写入了向人大会报告的市政府工作报告中给予充公肯定； 入选三部委征集出版的养老服务典型案例一书，国家发改委和民政部、全国老龄办等部门联合征集的全国养老服务业发展典型案例，梧州市云家庭服务中心是广西三个入选案例之一</p>
				 <p>2017年在全区老龄办主任会议上，自治区老龄办将梧州市云家庭作为经验材料印发，并在会上作了“搭建互联网+社区居家养老服务信息平台打造没有围墙的虚拟养老院”作典型发言；</p>
                 <p>梧州市智慧城市建设的重要节点和展示窗口，国家发改委信息中心领导和专家到市云家庭服务中心调研时，对以云家庭服务为基础的智慧城市养老服务信息惠民工作给予了充分的肯定； 高质量完成自治区民政厅委托的课题研究项目，并上报民政部； 自治区政府办公厅将云家庭的创新做法以"广西梧州市推行“互联网+社区居家养老”模式，着力打造没有围墙的养老院"为信息标题报送国务院；</p>
             </div>
			 <div class="col-md-6 about-pic">
				 <img src="static/indexStatic/images/img_9718.jpg" class="img-responsive" alt=""/>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<jsp:include page="Photo.jsp" flush="true"></jsp:include>
<!---->
<div id="apkDownload" class="maindiv">
	<div class="pricing-text" style="margin-bottom: 50px">
		<h3>应用下载</h3>
	</div>
	<div style="margin-top:10px;margin-bottom:10px;width: 1000px;height: 390px;">
		<div class="appbox" style="text-align:left;">
			<div id="appicon">
				<img src="static/indexStatic/images/jingwei.png" class="img1" alt="经纬度定位">
			</div>
			<div class="appinfo">
				<p class="app-name"><span class="title">经纬度定位</span></p>
				<p class="tagline">获取当前的经纬度值</p>
				<div>
					<a href="http://apps.wandoujia.com/apps/com.lu.getposition/download" class="install">下载</a>
				</div>
			</div>
			<div class="qr-info">
				<img style="width:100px;height: 100px;" src="static/indexStatic/images/erweima.png" onmouseover="toolTip('<img style=width:300px;height:300px; src=images/applyDownload/erweima.png>')" onmouseout="toolTip()">
				<p class="infotext">扫描二维码安装</p>
			</div>
		</div>
		<div class="appbox" style="text-align:left;">
			<div id="appicon">
				<img src="static/indexStatic/images/iHome.png" class="img1" alt="梧州Ihome">
			</div>
			<!-- <div class="appinfo">
				<p class="app-name"><span class="title">梧州Ihome</span></p>
				<p class="tagline">梧州Ihome客户端</p>
				<div>
					<a href="http://apps.wandoujia.com/apps/com.fdx.wz_ihome/download" class="install">下载</a>
				</div>
			</div>
			<div class="qr-info">
				<img style="width:100px;height: 100px;" src="images/applyDownload/qrr.png" alt="二维码">
				<p class="infotext">扫描二维码安装</p>
			</div> -->

			<div class="appinfo">
				<p class="app-name"><span class="title">梧州Ihome商家版</span></p>
				<p class="tagline">梧州Ihome商家版</p>
				<div>
					<a href="/app/MerchantIhome.apk" class="install">下载</a>
				</div>
			</div>
			<div class="qr-info">
				<img style="width:100px;height: 100px;" src="https://qr.api.cli.im/qr?data=http%253A%252F%252Fwww.wz-ihome.com%252Fapp%252FMerchantIhome.apk&amp;level=H&amp;transparent=false&amp;bgcolor=%23ffffff&amp;forecolor=%23000000&amp;blockpixel=12&amp;marginblock=1&amp;logourl=&amp;size=280&amp;kid=cliim&amp;key=7ebb5ef2c38ad34be43550396b43c812" onmouseover="toolTip('<img style=width:300px;height:300px; src=https://qr.api.cli.im/qr?data=http%253A%252F%252Fwww.wz-ihome.com%252Fapp%252FMerchantIhome.apk&amp;level=H&amp;transparent=false&amp;bgcolor=%23ffffff&amp;forecolor=%23000000&amp;blockpixel=12&amp;marginblock=1&amp;logourl=&amp;size=280&amp;kid=cliim&amp;key=7ebb5ef2c38ad34be43550396b43c812>')" onmouseout="toolTip()">
				<p class="infotext">扫描二维码安装</p>
			</div>
		</div>

		<div class="appbox" style="text-align:left;">
			<div id="appicon">
				<img src="static/indexStatic/images/iHome.png" class="img1" alt="梧州Ihome">
			</div>
			<div class="appinfo">
				<p class="app-name"><span class="title">梧州Ihome用户版</span></p>
				<p class="tagline">梧州Ihome用户版</p>
				<div>
					<a href="/app/WZIhome.apk" class="install">下载</a>
				</div>
			</div>
			<div class="qr-info">
				<img style="width:100px;height: 100px;" src="https://qr.api.cli.im/qr?data=http%253A%252F%252Fwww.wz-ihome.com%252Fapp%252FWZIhome.apk&amp;level=H&amp;transparent=false&amp;bgcolor=%23ffffff&amp;forecolor=%23000000&amp;blockpixel=12&amp;marginblock=1&amp;logourl=&amp;size=280&amp;kid=cliim&amp;key=a26d3f86abe7bb69ee40758500b4f0b3" onmouseover="toolTip('<img style=width:300px;height:300px; src=https://qr.api.cli.im/qr?data=http%253A%252F%252Fwww.wz-ihome.com%252Fapp%252FWZIhome.apk&amp;level=H&amp;transparent=false&amp;bgcolor=%23ffffff&amp;forecolor=%23000000&amp;blockpixel=12&amp;marginblock=1&amp;logourl=&amp;size=280&amp;kid=cliim&amp;key=a26d3f86abe7bb69ee40758500b4f0b3>')" onmouseout="toolTip()">
				<p class="infotext">扫描二维码安装</p>
			</div>
		</div>
	</div>
</div>
<!---->
  <script src="static/indexStatic/js/responsiveslides.min.js"></script>
  <script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider2").responsiveSlides({
        auto: true,
        pager: true,
        speed: 300,
        namespace: "callbacks"
      });
    });
  </script>
<!---->
<div id="testi" class="pricing">
	 <div class="container">
		 <div class="pricing-text" style="margin-top: 50px">
			<h3>招贤纳士</h3>
		 </div>
		 <!-- start slider -->	
		 <div class="pricing-grids">
			 <div class="slider">
				 <ul class="rslides" id="slider2">
					 <li>						 
					     <div class="col-md-6 pricing-plans">
							 <div class="pic1">
								 <img src="static/indexStatic/images/m1.jpg" alt=""/>
							 </div>
							 <div class="pic-info">
								 <h5>Java软件工程师(2人)</h5>
								 <a href="#">职位职能:高级软件工程师 软件工程师</a>
							 </div>
							  <p>岗位职责：<br>
								  1. 第三方支付行业的新产品、新技术研究；<br>
								  2. 立项产品的需求分析、方案设计、代码编写、集成测试；<br>
								  3. 对已上线产品的运营情况跟踪、支持、升级、维护；<br>
								  4. 独立带领团队成员，完成产品从需求分析到上线的整个过程<br>
								  任职要求：<br>
								  1. 大学本科学历，计算机、数学、电子及相关专业；<br>
								  2. 精通Java语言、Struts、SQL语言，熟悉Spring、Hibernate或ibatis等主流开发框架之一;<br>
								  3. 精通主流的数据库之一（如：SQL、Oracle、DB2）、主流的Web服务器之一（如：Tomcat、Weblogic、Websphere），至少有三年以上的开发或项目管理经验；<br>
								  4.有银行、基金、支付等相关行业的软件开发经验优先考虑</p>
							  <div class="clearfix"></div>
						 </div>
						 <div class="col-md-6 pricing-plans">
							 <div class="pic1">
								 <img src="static/indexStatic/images/m2.jpg" alt=""/>
							 </div>
							 <div class="pic-info">
								 <h5>Android软件工程师(1人)</h5>
								 <a href="#">职位职能:手机软件开发工程师 移动应用开发工程师</a>
							 </div>
							  <p>任职要求：<br>
								  1、熟练掌握Java开发语言，具有较好的Java软件开发经验；<br>
								  2、一年以上Android开发经验，至少参加过一个完整的商业级手机应用开发项目；<br>
								  3. 对已上线产品的运营情况跟踪、支持、升级、维护；<br>
								  4、熟练掌握面向对象设计思想，熟悉常见设计模式，具备一定架构能力者优先；<br>
								  5、熟悉socket,HTTP,XML,JSOM；<br>
								  6、有开发HTML5前端的经验，擅长JS和Jquery<br>
								  工作职责：<br>
								  1、负责Android安卓手机软件的设计开发及测试;<br>
								  2、撰写模块设计说明书及相关技术文档 ;<br>
								  3. 根据需要进行安卓系统端的APP设计和开发</p>
							  <div class="clearfix"></div>
						 </div>
					      <div class="clearfix"></div>
					  </li>
				  </ul>
			   </div>
			   <!-- end slider -->
		  </div>  	
	 </div>
</div>
<!---->
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