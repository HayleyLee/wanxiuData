<%--
Created by IntelliJ IDEA.
User: lqh90
Date: 2018/10/30
Time: 10:00
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="static/indexStatic/css/base.css" rel="stylesheet">
<link href="static/indexStatic/css/index.css" rel="stylesheet">
<link rel="stylesheet" href="static/indexStatic/layui/css/layui.css" type="text/css" media="all"/>
<link rel="stylesheet" href="static/indexStatic/css/applyDownload.css" type="text/css">
<link rel="stylesheet" href="static/indexStatic/css/Service.css" type="text/css">
<link rel="stylesheet" href="static/indexStatic/css/main.css" type="text/css">
<link rel="stylesheet" href="static/indexStatic/css/toolTip.css" type="text/css">
<link href="static/indexStatic/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="static/indexStatic/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="static/indexStatic/css/chocolat.css" type="text/css" media="screen"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="static/indexStatic/js/modernizr.custom.97074.js"></script>
<script src="static/indexStatic/js/jquery-3.3.1.min.js"></script>
<script src="static/indexStatic/js/ToolTip.js"></script>
<script src="static/indexStatic/js/indexShow.js"></script>
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
<article>
	<h2 class="title_tj">
		<p>文章<span>推荐</span></p>
	</h2>
	<div class="bloglist left" id="content">
		<span name="id" style="display: none" id="${param.id}"></span>
	</div>
	<aside class="right">
		<div class="weather"><iframe width="250" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe></div>
		<div class="news">
			<input id="serach" type="text" placeholder="输入关键字搜索" class="layui-input"/>
			<button id="goSerach" type="button" class="layui-btn layui-btn-fluid">戳我搜索</button>
			<h3>
				<p>最新<span>推送</span></p>
			</h3>
			<ul class="rank" id="rank">
			</ul>
			<h3 class="ph">
				<p>今日<span>最Top</span></p>
			</h3>
			<ul class="paih" id="top">
			</ul>
			<h3 class="links">
				<p>友情<span>链接</span></p>
			</h3>
			<ul class="website">
				<li><a href="http://www.zqmzw.gov.cn/">广东肇庆民政局</a></li>
				<li><a href="http://wuzhou.gxmzt.gov.cn/gxmz/index.lp">广西梧州民政局</a></li>
				<li><a href="http://www.zqtbu.com/">广东工商职业学院</a></li>
				<li><a href="http://www.whunmi.com/">武汉大学</a></li>
				<li><a href="http://www.whunf.com/">武汉大学广东研究院</a></li>
				<li><a href="http://www.whunmi.com/">武汉大学深圳研究院移动互联网学院</a></li>
				<li><a href="http://www.miihc.com/">深圳市凡达讯科技有限公司</a></li>
			</ul>
			<h3 class="returnIt">
				<p>意见<span>反馈</span></p>
			</h3>
			<a href="" onclick="admin();return false">网站管理员：QuinnLee</a>
		</div><br>
		<!-- Baidu Button BEGIN -->
		<div class="bdsharebuttonbox">
			<a href="#" class="bds_more" data-cmd="more"></a>
			<a href="#" class="bds_qzone" data-cmd="qzone"></a>
			<a href="#" class="bds_tsina" data-cmd="tsina"></a>
			<a href="#" class="bds_tqq" data-cmd="tqq"></a>
			<a href="#" class="bds_renren" data-cmd="renren"></a>
			<a href="#" class="bds_weixin" data-cmd="weixin"></a>
		</div>
		<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/indexStatic/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
		<!-- Baidu Button END -->
	</aside>
</article>
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
		$().UItoTop({ easingType: 'easeOutQuart' });
	});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->
<script>
    function Appendphoto(val) {
        $("#content").append("<img src=\"/static/indexStatic/HomeImg/"+val+"\" width='90%' style='margin: 4% 4% 4% 1%'>");
    }
    function Appendvideo(val) {
        $("#content").append("<video width='700px' height='250px' class=\"bloglist left\" src=\"/static/indexStatic/HomeImg/"+val+"\" controls controlsList='nodownload'></video>");
    }
    function Appendarticle(val) {
		$("#content").append("<p style='margin: 2% 2% 1% 1%'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+val+"</p>");
    }
    $(document).ready(function () {
        var id = $("span[name='id']").attr("id");
        $.ajax({
			type:"get",
			data:{"newsId":id},
			url:"wzData/CompanyNews/findById",
			success:function (json) {
                for(var i=0;i<json.length;i++){
                	for(var key in json[i]){
						if(key=="newsTitle"&&json[i][key]!=null&&json[i][key]!=""){
							if(json.length==i+2){
								AppendLastName(json[i][key]);
							}
							Appendname(json[i][key]);
						}
						if(key=="imgUrl"&&json[i][key]!=null&&json[i][key]!=""){
							Appendphoto(json[i][key]);
						}
						if(key=="video"&&json[i][key]!=null&&json[i][key]!=""){
							Appendvideo(json[i][key]);
						}
						if(key=="contents"&&json[i][key]!=null&&json[i][key]!=""){
							Appendarticle(json[i][key]);
						}
						if(key=="createTime"&&json[i][key]!=null&&json[i][key]!=""){
							console.log("time:"+json[i][key]);
							Appendcreate_time(json[i][key]);
						}
                	}
                }
            }
		});
    });
</script>
</body>
</html>