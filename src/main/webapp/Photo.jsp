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
<div class="gallery" id="gallery">
	<div class="container">
		<h3 style="text-align: left;">领导关怀</h3>
		<div class="gallery-grids">
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="static/indexStatic/HomeImg/2.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/HomeImg/2.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/HomeImg/3.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/HomeImg/3.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/HomeImg/4.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/HomeImg/4.jpg" alt="" />
						</a>
					</li>
				</ul>
				<a href="javascript:;"><span style="float: right" id="1" onclick="photo(this)">更多</span></a>
				<div class="clearfix"> </div>
			</section>
		</div>
	</div>

	<div class="container">
		<h3 style="text-align: left;">线下服务</h3>
		<div class="gallery-grids">
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="static/indexStatic/images/offLineService1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/offLineService1.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/offLineService2.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/offLineService2.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/offLineService3.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/offLineService3.jpg" alt="" />
						</a>
					</li>
				</ul>
				<a href="javascript:;"><span style="float: right" id="2" onclick="photo(this)">更多</span></a>
				<div class="clearfix"> </div>
			</section>
		</div>
	</div>

	<div class="container">
		<h3 style="text-align: left;">社区讲座</h3>
		<div class="gallery-grids">
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="static/indexStatic/images/Community1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/CommunityService1.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/Community2.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/CommunityService2.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/Community3.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/CommunityService3.jpg" alt="" />
						</a>
					</li>
				</ul>
				<a href="javascript:;"><span style="float: right" id="3" onclick="photo(this)">更多</span></a>
				<div class="clearfix"> </div>
			</section>
		</div>
	</div>

	<div class="container">
		<h3 style="text-align: left;">社会服务</h3>
		<div class="gallery-grids">
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="static/indexStatic/images/SociologyService1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/SociologyService1.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/SociologyService2.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/SociologyService2.jpg" alt="" />
						</a>
					</li>
					<li>
						<a href="static/indexStatic/images/SociologyService3.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="static/indexStatic/images/SociologyService3.jpg" alt="" />
						</a>
					</li>
				</ul>
				<a href="javascript:;"><span style="float: right" id="4" onclick="photo(this)">更多</span></a>
				<div class="clearfix"></div>
			</section>
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
		});</script>
<!--script-->
<script>
	function photo(obj) {
        var thisObj=$(obj);
        var objId = thisObj.attr("id");
        location.href="/ShowPhoto.jsp?id="+objId;
    }
</script>
<!---->
</body>
</html>