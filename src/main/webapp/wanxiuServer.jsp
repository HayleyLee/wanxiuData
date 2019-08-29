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
    <script src="static/js/ServerShow.js"></script>
</head>
<body>
<!--顶部-->
<header class="header left">
  <div class="left nav">
      <ul>
          <li style="left:3%"><i class="nav_1"></i><a href="indexData.jsp">大数据总览</a> </li>
          <li style="left:3%" class="nav_active"><i class="nav_2"></i><a href="#">服务大数据</a> </li>
          <li style="left:3%"><i class="nav_3"></i><a href="wanxiuTrend.jsp">健康大数据</a> </li>
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
              <img src="static/images/img/info_15.png" class="left text01_img"/>
              <div class="left text01_div">
                  <p>万秀区用户数</p>
                  <p id="wanxiuOld"></p>
              </div>
          </div>
          <div class="con_div_text01 right">
              <img src="static/images/img/info_15.png" class="left text01_img"/>
              <div class="left text01_div">
                  <p>长洲区用户数</p>
                  <p id="changzhouOld"></p>
              </div>
          </div>
      </div>
      <div class="con_div_text left">
          <div class="con_div_text01 left">
              <img src="static/images/img/info_10.png" class="left text01_img"/>
              <div class="left text01_div">
                  <p>龙圩区用户数</p>
                  <p class="sky" id="longxuOld"></p>
              </div>
          </div>
          <div class="con_div_text01 right">
              <img src="static/images/img/info_10.png" class="left text01_img"/>
              <div class="left text01_div">
                  <p>藤县用户数</p>
                  <p class="sky" id="zhoubianOld"></p>
              </div>
          </div>
      </div>
      <div class="con_div_text left">

          <div class="con_div_text01 left">
              <img src="static/images/img/info_14.png" class="left text01_img"/>
              <div class="left text01_div">
                  <p>阳光家园用户数</p>
                  <p class="org" id="Disability"></p>
              </div>
          </div>
          <div class="con_div_text01 right">
              <img src="static/images/img/info_14.png" class="left text01_img"/>
              <div class="left text01_div">
                  <p>总用户数</p>
                  <p class="org" id="allOld"></p>
              </div>
          </div>
      </div>
  </div>
    <!--统计分析图-->
    <div class="div_any">
        <div class="left div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_5.png">城区服务量统计</div>
                <p id="histogramChart1" class="p_chart"></p>
            </div>
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_6.png">全市服务商TOP5统计</div>
                <p id="histogramChart2" class="p_chart"></p>
            </div>
        </div>
        <div class="div_any02 left " style="z-index:9999">
            <div class="div_any_child div_height" style="z-index:9999">
                <div class="div_any_title any_title_width" style="z-index:9999"><img src="static/images/img/title_0.png" style="z-index:9999">护工服务监督地图 </div>
                <div id="mapChart" style="width:94%;height:93%;display: inline-block;padding-left: 1.25%;padding-top:2.2%;margin-top:2.5%;margin-left:2.5%"></div>
                <div style="width: 42%;height: 13%;display: inline-block;color:red;position: absolute;right: 2%;top: 6%;margin-right: 3%;background-color: rgba(0,0,0,0.5)">
                    <div style="display: inline-block;width:31%;text-align:center;margin: 2% 0 2% 2%">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">红色定位</div>
                        <div style="color:#ff602a;font-size: 15px;line-height: 25px;">无订单且不在服务状态</div>
                    </div>
                    <div style="display: inline-block;width:31%;text-align:center;margin: 2% 0 2% 0">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">蓝色定位</div>
                        <div style="color:#3476ff;font-size: 15px;line-height: 25px;">有订单但不在服务状态</div>
                    </div>
                    <div style="display: inline-block;width:31%;text-align:center;margin: 2% 2% 2% 0">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">绿色定位</div>
                        <div style="color:#8afa07;font-size: 15px;line-height: 25px;">正在为用户服务</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="left div_any01">
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_11.png">城区用户量占比</div>
                <p id="pieChart1" class="p_chart"></p>
            </div>
            <div class="div_any_child">
                <div class="div_any_title"><img src="static/images/img/title_12.png">全市服务类型占比</div>
                <p id="pieChart2" class="p_chart"></p>
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
