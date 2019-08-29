<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>梧州市云家庭大数据展示平台</title>
    <link href="static/css/styles/common.css" rel="stylesheet">
    <script src="static/js/scripts/Plugin/jquery-3.3.1.min.js"></script>
    <script src="static/js/scripts/Plugin/echarts.min.js"></script>
    <%--<script src="static/js/scripts/Plugin/bmap.min.js"></script>--%>
    <script type="text/javascript" src="http://api.map.baidu.com/getscript?v=2.0&ak=UmWseGTqqRpMZLKvGGnBve94A8bK3COP"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
    <link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
    <script src="static/js/scripts/Plugin/laydate/laydate.js"></script>
    <script src="static/layui/layui.all.js"></script>
    <script src="static/js/indexShow.js"></script>
</head>
<body>
<!--顶部-->
<header class="header left">
    <div class="left nav">
        <ul>
          <li style="left:3%" class="nav_active"><i class="nav_1"></i><a href="#">大数据总览</a> </li>
          <li style="left:3%" ><i class="nav_2"></i><a href="wanxiuServer.jsp">服务大数据</a> </li>
          <li style="left:3%" ><i class="nav_3"></i><a href="wanxiuTrend.jsp">健康大数据</a> </li>
        </ul>
    </div>
    <div class="header_center left" style="position:relative">

        <h2><strong>梧州市云家庭大数据展示平台</strong></h2>

    </div>
    <div class="right nav text_right">
        <ul>
            <li style="right: 3%"><i class="nav_4"></i><a href="wanxiuCalling.jsp">话务大数据</a> </li>
            <li style="right: 3%"><i class="nav_1"></i><a href="wanxiuMerchants.jsp">商家大数据</a> </li>
            <li style="right: 3%"><i class="nav_1"></i><a href="government.jsp">项目统计</a> </li>
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
                    <p>服务人数</p>
                    <p id="OldPeople"></p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="static/images/img/info_2.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>总服务量</p>
                    <p id="Service"></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">
            <div class="con_div_text01 left">
                <img src="static/images/img/info_3.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>线上服务</p>
                    <p class="sky" id="onlineService"></p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="static/images/img/info_4.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>线下服务</p>
                    <p class="sky" id="offlineService"></p>
                </div>
            </div>
        </div>
        <div class="con_div_text left">

            <div class="con_div_text01 left">
                <img src="static/images/img/info_16.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>今日服务量</p>
                    <p class="org" id="toDayService"></p>
                </div>
            </div>
            <div class="con_div_text01 right">
                <img src="static/images/img/info_6.png" class="left text01_img"/>
                <div class="left text01_div">
                    <p>今日呼叫量</p>
                    <p class="org" id="toDayCall"></p>
                </div>
            </div>
        </div>
    </div>
    <!--统计分析图-->
    <div class="div_any">
        <div class="left div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_1.png">云家庭用户年龄占比</div>
                <p id="pieChart1" class="p_chart"></p>
            </div>
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_2.png">服务满意度统计</div>
                <p id="pieChart2" class="p_chart"></p>
            </div>
        </div>
        <div class="div_any02 left " style="z-index:9999">
            <div class="div_any_child div_height" style="z-index:9999">
                <div class="div_any_title any_title_width" style="z-index:9999"><img src="static/images/img/title_0.png" style="z-index:9999">用户实时监护地图 </div>
                <div id="mapChart" style="width:94%;height:93%;display: inline-block;padding-left: 1.25%;padding-top:2.2%;margin-top:2.5%;margin-left:2.5%"></div>
                <div style="width: 38%;height: 13%;display: inline-block;color:red;position: absolute;right: 2%;top: 5%;margin-right: 3%;background-color: rgba(0,0,0,0.5);">
                    <div style="display: inline-block;width:46%;text-align:center;margin: 2% 1% 2% 2%">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">蓝色定位</div>
                        <div style="color:#3476ff;font-size: 15px;line-height: 25px;">最新一次定位数据不在当天内</div>
                    </div>
                    <div style="display: inline-block;width:46%;text-align:center;margin: 2% 2% 2% 1%">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">绿色定位</div>
                        <div style="color:#2eff0f;font-size: 15px;line-height: 25px;">最新一次定位数据在当天内</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="right div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_3.png">全市服务商TOP5</div>
                <p id="lineChart" class="p_chart"></p>
            </div>
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_4.png">当日服务数据</div>
                <p id="lineChart2" class="p_chart"></p>
            </div>
        </div>
    </div>
</div>
<span id="username" style="display: none">${user.loginName}</span>
<script type="text/javascript">
    $(document).ready(function () {
        var name=$("#username").text();
        if(name==null||name==""){
            location.href="/404.jsp";
        }
    })
</script>
</body>
</html>