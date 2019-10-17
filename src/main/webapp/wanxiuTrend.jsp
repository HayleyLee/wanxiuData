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
    <script src="static/js/TrendShow.js"></script>
    <script src="static/js/clientWidthSize.js"></script>
</head>
<body style="min-width: 1600px">
<!--顶部-->
<header class="header left">
  <div class="left nav">
      <ul>
          <li style="left: 3%"><i class="nav_1"></i><a href="indexData.jsp">大数据总览</a> </li>
          <li style="left: 3%"><i class="nav_2"></i><a href="wanxiuServer.jsp">服务大数据</a> </li>
          <li style="left: 3%" class="nav_active"><i class="nav_3"></i><a href="#">健康大数据</a> </li>

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
<div class="con left" style="width:50%;">
    <!--统计分析图-->
    <div class="div_any">
        <div class="left div_any01" style="width:100%;">
            <div class="div_any_child" style="width:98%;position:relative;height: 420px;">
                <div class="div_any_title"><img src="static/images/img/title_13.png">老人疾病分析</div>
                <div id="histogramChart1"  style="width: 100%;display: inline-block;height: 400px;margin-top: 15px;"></div>
            </div>
        </div>
        <div class="left div_any01" style="width:100%;">
            <div class="div_any_child" style="width:98%;position:relative;height: 420px;">
                <div class="div_any_title"><img src="static/images/img/title_13.png">残疾人情况分析</div>
                <div id="lineChart2"  style="width: 100%;height: 400px;display: inline-block;"></div>
                <div style="width: 40%;height: 27%;display: inline-block;color:red;position: absolute;right: 2%;top: 10%;margin-right: 3%;background-color: rgba(0,0,0,0.5)">
                    <div style="display: inline-block;width:46%;text-align:center;margin: 2% 1% 0 2%">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">一级伤残定义</div>
                        <div style="color:red;font-size: 15px;line-height: 25px;">生活完全不能自理</div>
                    </div>
                    <div style="display: inline-block;width:46%;text-align:center;margin: 2% 2% 0 1%">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">二级伤残定义</div>
                        <div style="color:#ff602a;font-size: 15px;line-height: 25px;">生活随时需要帮助</div>
                    </div>
                    <div style="display: inline-block;width:46%;text-align:center;margin: 0 1% 2% 2%">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">三级伤残定义</div>
                        <div style="color:#f6ff11;font-size: 15px;line-height: 25px;">不能完全独立生活</div>
                    </div>
                    <div style="display: inline-block;width:46%;text-align:center;margin: 0 2% 2% 1%">
                        <div style="color:#fff;font-size: 20px;line-height: 25px;">四级伤残定义</div>
                        <div style="color:#8afa07;font-size: 15px;line-height: 25px;">生活能力严重受限</div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>
</div>
<div class="con right" style="width:50%;">
  <div class="div_any">
      <div class="left div_any01" style="width:48%;">
          <div class="div_any_child" style="height: 420px;">
              <div class="div_any_title"><img src="static/images/img/title_19.png">老人疾病数据表</div>
              <div class="table_p">
                  <table style="margin: 0;padding: 0">
                      <thead><tr>
                          <th>序号</th>
                          <th>疾病</th>
                          <th>人数</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr><td>1</td><td>高血压</td><td id="Disease1"></td></tr>
                      <tr><td>2</td><td>心脏病</td><td id="Disease2"></td></tr>
                      <tr><td>3</td><td>前列腺</td><td id="Disease3"></td></tr>
                      <tr><td>4</td><td>糖尿病</td><td id="Disease4"></td></tr>
                      <tr><td>5</td><td>肠胃病</td><td id="Disease5"></td></tr>
                      <tr><td>6</td><td>精神病</td><td id="Disease6"></td></tr>
                      <tr><td>7</td><td>皮肤病</td><td id="Disease7"></td></tr>
                      <tr><td>8</td><td>类风湿</td><td id="Disease8"></td></tr>
                      <tr><td>9</td><td>中风</td><td id="Disease9"></td></tr>
                      <tr><td>10</td><td>帕金逊</td><td id="Disease10"></td></tr>
                      <tr><td>11</td><td>老人痴呆</td><td id="Disease11"></td></tr>
                      <tr><td>12</td><td>膀胱</td><td id="Disease12"></td></tr>
                      <tr><td>13</td><td>气管炎</td><td id="Disease13"></td></tr>
                      <tr><td>14</td><td>眼疾</td><td id="Disease14"></td></tr>
                      <tr><td>15</td><td>腰椎</td><td id="Disease15"></td></tr>
                      <tr><td>16</td><td>肾病</td><td id="Disease16"></td></tr>
                      <tr><td>17</td><td>听视力</td><td id="Disease17"></td></tr>
                      <tr><td>18</td><td>肿瘤</td><td id="Disease18"></td></tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
      <div class="right div_any01" style="width:48%;">
          <div class="div_any_child" style="height: 420px;">
              <div class="div_any_title"><img src="static/images/img/title_18.png">重点帮扶对象统计</div>
              <p id="histogramChart3" class="p_chart" style="height: 400px;"></p>
          </div>
      </div>
      <div class="left div_any01" style="width:48%;">
        <div class="div_any_child" style="height: 420px;">
            <div class="div_any_title"><img src="static/images/img/title_18.png">残疾人年龄统计</div>
            <p id="histogramChart2" class="p_chart" style="height: 400px;"></p>
        </div>
      </div>
      <div class="right div_any01" style="width:48%;">
          <div class="div_any_child" style="height: 420px;">
              <div class="div_any_title"><img src="static/images/img/title_19.png">残疾人地区分布</div>
              <p id="pieChart2" class="p_chart" style="height: 400px;"></p>
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
