<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>梧州市云家庭大数据展示平台</title>
    <link href="static/css/styles/common.css" rel="stylesheet">
    <script src="static/js/scripts/Plugin/jquery-3.3.1.min.js"></script>
    <script src="static/js/scripts/Plugin/echarts.min.js"></script>
    <script src="static/js/scripts/Plugin/laydate/laydate.js"></script>
    <script src="static/layui/layui.all.js"></script>
    <script src="static/js/Government.js"></script>
</head>
<body style="height: 100%; margin: 0">
<!--顶部-->
<header class="header left">
    <div class="left nav">
        <ul>
            <li class="nav_active"><i class="nav_1"></i><a href="#">大数据总览</a> </li>
            <li><i class="nav_2"></i><a href="wanxiuServer.jsp">服务大数据</a> </li>
            <li><i class="nav_3"></i><a href="wanxiuTrend.jsp">健康大数据</a> </li>
            <li><i class="nav_4"></i><a href="wanxiuCalling.jsp">话务大数据</a> </li>
            <li><i class="nav_1"></i><a href="wanxiuMerchants.jsp">商家大数据</a> </li>
        </ul>
    </div>
    <div class="header_center left" style="position:relative">

        <h2><strong>梧州市云家庭大数据展示平台</strong></h2>

    </div>
    <div class="right nav text_right">
        <ul>

        </ul>
    </div>

</header>
<!--内容部分-->
<div class="con left">
    <!--数据总概-->
    <div class="con_div">
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="static/images/img/info_1.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>总人数</p>
                    <p id="OldPeople"></p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="static/images/img/info_2.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>总订单</p>
                    <p id="Order"></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="static/images/img/info_3.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>手机用户人数</p>
                    <p class="sky" id="Phone"></p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="static/images/img/info_4.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>手环用户人数</p>
                    <p class="sky" id="Ring"></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">

            <div class="con_div_text01 left">
                <img src="static/images/img/info_16.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>阳光用户人数</p>
                    <p class="org" id="SumHomeUser"></p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="static/images/img/info_6.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>阳光订单</p>
                    <p class="org" id="SumHomeOrder"></p>
                </div>
            </div>
        </div>
    </div>
    <!--统计分析图-->
    <div class="div_any">
        <div class="left div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_1.png">政府购买服务用户统计</div>
                <p id="pieChart1" class="p_chart" style="height: 100%;width: 100%">

                </p>
            </div>
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_2.png">政府购买服务分析</div>
                <p id="pieChart2" class="p_chart" style="height: 100%;width: 100%">
                </p>
            </div>
        </div>
        <div class="div_any02 left " style="z-index:9999">
            <div class="div_any_child div_height" style="z-index:9999">
                <div class="div_any_title any_title_width" style="z-index:9999"><img src="static/images/img/title_0.png" style="z-index:9999">历史订单走势</div>
                <div id="mapChart" style="width:94%;height:93%;display: inline-block;padding-left: 1.25%;padding-top:2.2%;margin-top:2.5%;margin-left:2.5%">
                    <div id="container" style="height: 100%"></div>
                </div>
            </div>
        </div>
        <div class="right div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_3.png">阳光家园用户统计</div>
                <p id="lineChart" class="p_chart"></p>
            </div>
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_4.png">阳光家园服务排行</div>
                <p id="lineChart2" class="p_chart"></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>