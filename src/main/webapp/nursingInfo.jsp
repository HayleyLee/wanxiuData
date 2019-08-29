<%--
  Created by IntelliJ IDEA.
  User: lqh90
  Date: 2019/6/5
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
    <title>Title</title>
    <script src="static/js/scripts/Plugin/jquery-3.3.1.min.js"></script>
    <script src="static/layui/layui.all.js"></script>
</head>
<body>
<div id="NursingInfo" style="display: inline-block"></div>
<div id="img" style="width:300px;display: inline-block;float: right;text-align: center;">
    <img id="headImg" width="220px" style="border-radius: 5%">
    <a href="javascript:void(0);" onclick="showImg()"><img id="Img1" width="80px" style="display: inline-block;margin-left: 5px;margin-top: 5px;border-radius: 5%"></a>
    <a href="javascript:void(0);" onclick="showImg()"><img id="Img2" width="80px" style="display: inline-block;margin-left: 5px;margin-top: 5px;border-radius: 5%"></a>
    <a href="javascript:void(0);" onclick="showImg()"><img id="Img3" width="80px" style="display: inline-block;margin-left: 5px;margin-top: 5px;border-radius: 5%"></a>
</div>
<div style="clear: both"></div>
<div id="OrderInfo" style="margin-top: 3%"></div><span id="userId" style="display: none;">${param.userId}</span>
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
<script>
    function showImg(){
        layer.photos({
            photos: '#img'
            ,anim: 5
        });
    }
    $(document).ready(function () {
        var userid = $("#userId").html();
        var nursing;
        var status;
        var headImgPath = "http://wz-ihome.com/merchantImages/merchantApprove/";
        $.getJSON("./static/nursingLocations.json", function (nursingLocations){
            for(var i=0;i<nursingLocations.length;i++){
                if(nursingLocations[i].userId==userid){
                    nursing=nursingLocations[i];
                }
            }
        });
        //获取护工的头像
        $.ajax({
            type:"post",
            data:{"userId":userid},
            url:"/wzData/Service/findNursingHead",
            success:function (data) {
                if(data!=null){
                    var img = headImgPath+data;
                    $("#headImg").attr("src",img);
                }
            },
            error:function () {
                alert("获取护工头像失败");
            }
        });
        //获取护工的相关数据
        $.ajax({
            type:"post",
            data:{"userId":userid},
            url:"/wzData/Service/findOrderByUserId",
            success:function (orderList) {
                if(nursing.status==0) status="空闲中"; else status="服务中";
                $("#NursingInfo").html("<h3>护工姓名：</h3><p>"+nursing.userName+"</p><h3>当前位置：</h3><p>"+nursing.address+"</p><h3>最后一次定位时间：</h3><p>"+nursing.gainTime+"</p><h3>当前状态：</h3><p>"+status+"</p>");
                if(orderList==null||orderList.length<1){
                    $("#OrderInfo").html("该护工暂无订单");
                }
                else {
                    var str = "";
                    for(var i=0;i<orderList.length;i++){
                        var oldName = orderList[i].realName; //老人姓名
                        var consignee = orderList[i].consignee; //联系方式
                        var merchantName = orderList[i].merchantName; //服务项目
                        var shippingAddress = orderList[i].shippingAddress; //服务地点
                        var createdate = orderList[i].createdate; //创建时间
                        var year = createdate.substring(0,4);
                        var month = createdate.substring(4,6);
                        var day = createdate.substring(6);
                        var date = year+"-"+month+"-"+day;
                        if(orderList[i].orderStatus==2){
                            str+="<tr style='background-color: greenyellow'><td>"+oldName+"</td><td>"+consignee+"</td><td>"+merchantName+"</td><td>"+shippingAddress+"</td><td>"+date+"</td></tr>"
                        }
                        else {
                            str+="<tr><td>"+oldName+"</td><td>"+consignee+"</td><td>"+merchantName+"</td><td>"+shippingAddress+"</td><td>"+date+"</td></tr>"
                        }
                    }
                    str+="</table>";
                    $("#OrderInfo").html("<table border='1'><tr><th>服务对象</th><th>联系方式</th><th>服务项目</th><th>服务地点</th><th>订单日期</th></tr>"+str);
                    var internet="http://www.wz-ihome.com/";
                    $.ajax({
                        type:"post",
                        data:{"userId":userid},
                        url:"/wzData/Service/findOrderImg",
                        success:function (data) {
                            if(data!=null||data.length>0){
                                $("#Img1").attr("src",internet+data[0].imagesPath+"/"+data[0].imageNewName);
                                $("#Img2").attr("src",internet+data[1].imagesPath+"/"+data[2].imageNewName);
                                $("#Img3").attr("src",internet+data[3].imagesPath+"/"+data[3].imageNewName);
                            }
                        },
                        error:function () {
                            alert("获取评论图片失败");
                        }
                    });
                }
            },
            error:function () {
                alert("数据访问异常，请联系管理员");
            }
        });
    });
</script>
</html>
