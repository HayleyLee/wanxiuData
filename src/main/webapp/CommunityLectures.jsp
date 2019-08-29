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
	.talk{
		color: #5c5d5a;
	}
</style>
<!--banner-->
<jsp:include page="indexNav.jsp" flush="true"></jsp:include>
<div id="home" class="Sbanner" style="border-radius: 2%;">
	<div class="top-menu" style="width: 100%;margin-left: 0;margin-right: 0">
		<div class="container" style="width: 100%;margin-left: 0;margin-right: 0">
			<nav class="cl-effect-1">
				<span class="menu"><img src="static/indexStatic/images/nav-icon.png" alt=""/></span>
				<ul class="layui-nav" style="background-color:#5ACC42">
					<li class="layui-nav-item"><a href="./index.jsp">首页</a></li>
					<li class="layui-nav-item"><a href="./index.jsp">关于我们</a></li>
					<li class="layui-nav-item">
						<a href="javascript:;">产品与服务</a>
						<dl class="layui-nav-child" style="display: none;background-color:#5ACC42">
							<dd><a href="./SafeKey.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">平安键</a></dd>
							<dd><a href="./SmartHome.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">智慧微家</a></dd>
							<dd><a href="./CommunityLectures.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社区讲座</a></dd>
							<dd><a href="./SocialServices.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">社会服务</a></dd>
							<dd><a href="./Product.jsp" style="color:white;" onmouseenter="this.style.background='#5ACC42'">产品</a></dd>
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

	<div class="container" style="margin-bottom: 5%">
		<h3 class="abt">社区讲座</h3>
		<div class="about-top">
			<h4 style="font-size: 1.5em">关于云家庭社区讲座</h4>
			<p style="color: #5c5d5a; font-size: 1.3em">市云家庭服务列入梧州市为民办实事项目走进社区,组织市内各级医疗单位及相关专业机构的医生和专家为全市57个社区的老年人开展健康和心理讲座,进一步提高居民的健康理念，提高老年人的防病治病意识，倡导科学合理的生活方式，关爱老年人心理健康，讲座课程注重活跃生动，现场与老年人积极互动，让老年人身心健康,精神养老。目前已举办社区讲座250余场，累计参加讲座老人7000余人次。社区讲座深受老年人的欢迎，得到社会各界的广泛好评。</p>
		</div>
	</div>
<!---->
<div id="service" class="service">
	 <div class="container">
		 <h3 class="ser" style="font-size: 2.7em">心理讲座</h3>
		 <div class="service-grids">
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="static/indexStatic/images/xinli1.JPG" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3>2018年5月16日幸福社区心理讲座</h3>
					 <p style="color: #5c5d5a;font-size: 1.3em">为进一步提高居民健康理念，提高社区老年人防病治病的意识，
						 持续关爱老年人心理健康， 梧州市云家庭服务中心再次联同长洲区民政局，
						 走进幸福社区为老年人开展心理讲座。 2018年云家庭服务社区100场心理健康讲座正有序推进。云家庭讲师团队的韦英讲师是国家二级心理咨询师、经脉催眠师，她以轻松愉快的互动手操开场，并教会老人们几个简单易学还能让脑袋及肢体同时得到段炼的小游戏，使整个讲座过程气氛活跃、老人们热情高涨。</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
		 </div>
	 </div>
	<div class="container">
		<h3 class="ser" style="font-size: 2.7em">健康讲座</h3>
		<div class="service-grids">
			<div class="service-grid">
				<div class="col-md-4 service-pic">
					<img src="static/indexStatic/images/jiankang1.JPG" class="img-responsive" alt=""/>
				</div>
				<div class="col-md-8 service-info">
					<h3>2018年6月12日大塘社区健康讲座</h3>
					<p style="color: #5c5d5a;font-size: 1.3em">为进一步提高居民健康理念，提高社区老年人防病治病的意识，
						持续关爱老年人身体健康， 梧州市云家庭服务中心再次联同长洲区民政局，
						走进大塘社区为老年人开展健康讲座。蔡宗霖讲师是福利康复医院的中医师，他主讲《退行性膝关节的认识》，
						现场老人踊跃参与膝关节按摩演示，讲师分享的穴位按摩和中药处方，更是吸引不少老年朋友们，拿住纸和笔认真做笔记。
						活动结束，老人们纷纷表示感谢政府、感谢云家庭对老年人的关爱，还建议能举办关于预防心脑血管疾病、高血压防治等方面的讲座。 </p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<!---->
<div class="gallery" id="gallery">
	<div class="container">
		<h3>讲师风范</h3>
		<div class="gallery-grids">
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="static/indexStatic/images/newxieqiong.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/newxieqiong.jpg" alt="" />
							<div>
								<h5>谢琼</h5>
								<span>国家二级心理咨询师;沙盘游戏治疗师;音乐治疗师;音乐团体导师;家庭教育指导师;北京盛心阳光咨询有限公司签约咨询师；北京清大厚德研究院特聘讲师;深圳市幸福家家庭研究院高级公益讲师;广西梧州市心茗心理咨询工作室首席咨询师;梧州市阳光青少年心理服务中心主任</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/newfangruifen.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/newfangruifen.jpg" alt="" />
							<div>
								<h5>方瑞芬</h5>
								<span>广西家庭教育研究会第五届理事;广西心理卫生协会第六届理事;梧州妇联家庭教育讲师团专家;国家注册执业高级心理咨询师;国家注册中级沙盘游戏治疗师;国家注册执业中级社会工作者;美国认证正面管教学校讲师;美国认证正面管教家长讲师</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/newweiying.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/newweiying.jpg" alt="" />
							<div>
								<h5>韦英</h5>
								<span>韦英老师国家二级心理咨询师;国家高级经络催眠师;培训师高级系统式家庭治疗师;督导师国际EAP协会认证DEAP专员;全国高效率学习考试心理训练师;高级公共营养师。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/newyuhangxing.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/newyuhangxing.jpg" alt="" />
							<div>
								<h5>余航兴</h5>
								<span>余航兴，本科学历，国家三级心理咨询师;加拿大埃德蒙顿华人宣道会青年团契小组负责人;埃德蒙顿华人社区服务中心优秀义工;埃德蒙顿华人文化交流中心教师;埃德蒙顿华人安老院义工</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/zouchunlan.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/zouchunlan.jpg" alt="" />
							<div>
								<h5>邹春兰</h5>
								<span>毕业于广西卫生管理干部学院临床医学专业，曾到广西梧州市工人医院、桂东医院进修，2010年到广西医科大学参加全科医师培训。擅长运用中西医结合方法诊治各种妇产科常见病，月经病，孕产期保健，产后康复，更年期保健及老年病、慢性病诊治。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/zhuoyicong.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/zhuoyicong.jpg" alt="" />
							<div>
								<h5>卓一聪</h5>
								<span>毕业于广西中医药大学中医学专业，本科学历。有扎实的理论基础和技能水平，曾到广州医科大学第二附属医院进修，擅长运用中西医结合方法诊治各种急慢性疼痛疾病及老年病，有较丰富的临床经验。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/liuxinxia.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/liuxinxia.jpg" alt="" />
							<div>
								<h5>刘燊霞</h5>
								<span>毕业于广西中医药大学《中西医结合专业》;2016年曾到广西南宁市第七人民医院进修学习针灸;并获得朱琏针灸学术传承弟子;2017年到广西南宁学习全科医师;运用全科医生理念以及中西医合参技术;善治各种慢性疾病;老年病;颈椎病;腰腿痛;中风后遗症等;有丰富的临床经验</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/huangfeifei.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/huangfeifei.jpg" alt="" />
							<div>
								<h5>黄菲菲</h5>
								<span>毕业于广西中医药大学中西医结合临床专业，曾到广西医科大学、广西妇幼保健院进修，擅长运用中西医结合方法诊治各种妇产科常见病，月经病，孕产期保健，产后康复，更年期保健及老年病、慢性病诊治。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/ganlingling.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/ganlingling.jpg" alt="" />
							<div>
								<h5>甘灵玲</h5>
								<span>毕业于广西医科大学临床医学专业，对中风后遗症、面瘫、高血压病、糖尿病、高脂血症、哮喘、慢性胃炎、溃疡病、眩晕症、慢性鼻炎、颈腰椎疾病等老年病、慢性病以及婴幼儿常见发育障碍。</span>
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