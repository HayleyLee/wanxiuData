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
    </div>
</div>
<div class="gallery" id="gallery">
    <div class="container">
        <h3 style="text-align: left;" id="${param.id}"></h3>
        <div class="gallery-grids">
            <section>
                <ul id="da-thumbs" class="da-thumbs">
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
</body>
<script>
    $(document).ready(function () {
        var id = $("h3").attr("id");
        $.ajax({
            type: "get",
            url: "/wzData/Img/findImgByTypeId",
            data:{"typeId":id},
            success: function (data) {
                if(data!=null){
                    for(var i=0;i<data.length;i++){
                        $("#da-thumbs").append("<li><a href=\"javascript:;\" class=\"b-link-stripe b-animate-go  thickbox\"><img src=\"static/indexStatic/HomeImg/"+data[i].imgName+"\" width='50%'/></a></li>");
                    }
                }else {
                    alert("出错");
                }
            }
        });
        $.ajax({
            type:"get",
            url:"/wzData/Img/findImgType",
            data:{"typeId":id},
            success:function (data2) {
                if(data2!=null){
                    $("h3").text(data2.type);
                }
            }
        });
    })
</script>
</html>