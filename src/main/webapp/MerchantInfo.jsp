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
<div id="MerchantInfo" style="width: 47%;display: inline-block"></div>
<div id="img" style="width:50%;display: inline-block;float:right;">
    <img id="merchantsImages" width="47%" style="border-radius: 5%">
    <img id="businessLicenseImage" width="47%" style="border-radius: 5%">
</div>
<div id="clear" style="clear: both"></div>
<span id="merchantId" style="display: none">${param.merchantId}</span>
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
    $(document).ready(function () {
        var merchantId = $("#merchantId").html();
        var headImgPath = "http://wz-ihome.com/merchantImages/merchantApprove/";
        //获取护工的头像
        $.ajax({
            type:"post",
            data:{"merchantId":merchantId},
            url:"/wzData/Merchants/findMerchantByMerchantId",
            success:function (merchant) {
                if(merchant!=null){
                    var merchantsImages = headImgPath+merchant.merchantsImages;
                    var businessLicenseImage = headImgPath+merchant.businessLicenseImage;
                    $("#merchantsImages").attr("src",merchantsImages);
                    $("#businessLicenseImage").attr("src",businessLicenseImage);
                    $("#MerchantInfo").html("<h3 style='line-height:1%;color: #081832;'>商家：</h3><p style='color:#1f4c79'>"+merchant.merchantName+"</p><h3 style='line-height:1%;color: #081832;'>负责人：</h3><p style='color:#1f4c79'>"+merchant.responsiblePerson+"</p><h3 style='line-height:1%;color: #081832;'>联系方式：</h3><p style='color:#1f4c79'>"+merchant.phone+"</p><h3 style='line-height:1%;color: #081832;'>门店地址：</h3><p style='color:#1f4c79'>"+merchant.address+"</p><h3 style='line-height:1%;color: #081832;'>门店介绍：</h3>");
                    $("#clear").after("<p style='color:#1f4c79'>"+merchant.introductionStores+"</p>");
                }
            },
            error:function () {
                alert("获取商家信息失败");
            }
        });
    });
</script>
</html>
