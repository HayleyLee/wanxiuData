<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>梧州市云家庭大数据展示平台</title>
    <link href="static/css/styles/common.css" rel="stylesheet">
    <script src="static/js/scripts/Plugin/jquery-3.3.1.min.js"></script>
    <script src="static/js/scripts/Plugin/echarts.min.js"></script>
    <script src="static/js/CallingShow.js"></script>
</head>
<body>
<!--顶部-->
<header class="header left">
  <div class="left nav">
      <ul>
          <li style="left:3%"><i class="nav_1"></i><a href="indexData.jsp">大数据总览</a> </li>
          <li style="left:3%"><i class="nav_2"></i><a href="wanxiuServer.jsp">服务大数据</a> </li>
          <li style="left:3%"><i class="nav_3"></i><a href="wanxiuTrend.jsp">健康大数据</a> </li>
      </ul>
  </div>
    <div class="header_center left" style="position:relative">
  
        <h2><strong>梧州市云家庭大数据展示平台</strong></h2>

    </div>
    <div class="right nav text_right">
        <ul>
            <li style="right: 3%" class="nav_active"><i class="nav_4"></i><a href="#">话务大数据</a> </li>
            <li style="right: 3%"><i class="nav_1"></i><a href="wanxiuMerchants.jsp">商家大数据</a> </li>
            <li style="right: 3%"><i class="nav_1"></i><a href="government.jsp">项目统计</a> </li>

        </ul>
    </div>

</header>
<!--数据总概-->
<div class="con_div">
    <div class="con_div_text left">
        <div class="con_div_text01 left">
            <img src="static/images/img/info_1.png" class="left text01_img"/>
            <div class="left text01_div">
                <p>线上服务总量</p>
                <p id="allCall"></p>
            </div>
        </div>
        <div class="con_div_text01 right">
            <img src="static/images/img/info_2.png" class="left text01_img"/>
            <div class="left text01_div">
                <p>线上呼出量</p>
                <p id="OutCall"></p>
            </div>
        </div>
    </div>
    <div class="con_div_text left">
        <div class="con_div_text01 left">
            <img src="static/images/img/info_3.png" class="left text01_img"/>
            <div class="left text01_div">
                <p>线上呼入量</p>
                <p class="sky" id="InCall"></p>
            </div>
        </div>
        <div class="con_div_text01 right">
            <img src="static/images/img/info_3.png" class="left text01_img"/>
            <div class="left text01_div">
                <p>今日呼出量</p>
                <p class="sky" id="OutCallToDay"></p>
            </div>
        </div>
    </div>
    <div class="con_div_text left">

        <div class="con_div_text01 left">
            <img src="static/images/img/info_6.png" class="left text01_img"/>
            <div class="left text01_div">
                <p>今日呼入量</p>
                <p class="org" id="InCallToDay"></p>
            </div>
        </div>
        <div class="con_div_text01 right">
            <img src="static/images/img/info_13.png" class="left text01_img"/>
            <div class="left text01_div">
                <p>同比昨日趋势</p>
                <p class="org" id="Percentage"></p>
            </div>
        </div>
    </div>
</div>
<!--内容部分-->
<div class="con left" style="width:50%;">
    <!--统计分析图-->
    <div class="div_any">
        <div class="div_any_child" style="width:98%;position:relative;height: 420px;">
            <div class="div_any_title"><img src="static/images/img/title_13.png">实时话务坐席状态</div>
            <div id="PbxPage"  style="width: 100%;display: inline-block;height: 400px;margin-top: 15px;">
                <iframe id="frame" width="98%" height="100%" allowTransparency="true" frameborder="no" style="margin: 1%" scrolling="no" src="http://124.227.230.82:8888/extenmonitor2.jsp"></iframe>
            </div>
        </div>
        <div class="left div_any01" style="width:48%;">
          <div class="div_any_child" style="height: 420px;">
              <div class="div_any_title"><img src="static/images/img/title_14.png">历年线上服务统计</div>
              <p id="histogramChart2" class="p_chart" style="height: 400px;"></p>
          </div>
        </div>
          <div class="left div_table_box" style="width: 48%;">
              <div class="div_any_child" style="height: 420px;">
                  <div class="div_any_title"><img src="static/images/img/title_16.png">WebIM通信(开发中)</div>
                  <div class="table_p">
                      <table>
                          <thead><tr>
                              <th>序号</th>
                              <th>内容</th>
                              <th>发布时间</th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr><td>1</td><td>等待后台webIM功能实现</td><td>1970-01-01</td></tr>
                          </tbody>
                      </table>
                  </div>
              </div>
          </div>
      </div>
    </div>
</div>
<div class="con right" style="width:50%;">
  <div class="div_any">
      <div class="left div_any01" style="width:100%;">
          <div class="div_any_child" style="width:98%;position:relative;height: 420px;">
              <div class="div_any_title"><img src="static/images/img/title_17.png">今日坐席线上服务情况分析</div>
              <div id="histogramChart3"  style="width: 45%;display: inline-block;height: 400px;margin-top: 15px;"></div>
              <div id="lineChart2"  style="width: 52%;height: 90%;display: inline-block;"></div>
          </div>
      </div>
      <div class="left div_any01" style="width:100%;">
          <div class="left div_any01" style="width:100%;">
                  <div class="div_any_child" style="width:98%;position:relative;height: 420px;">
                      <div class="div_any_title"><img src="static/images/img/title_13.png">坐席线上服务数据统计</div>
                      <div id="histogramChart1"  style="width: 100%;display: inline-block;height: 400px;margin-top: 15px;"></div>
                      <div id="lineChart1"  style="width: 52%;height: 66%;display: inline-block;"></div>
                  </div>
              </div>
      </div>
  </div>
</div>
</body>
<span id="username" style="display: none">${user.loginName}</span>
<script type="text/javascript">
    $(document).ready(function () {
        var name=$("#username").text();
        if(name==null||name==""){
            location.href="/404.jsp";
        }
    })
</script>
</html>
