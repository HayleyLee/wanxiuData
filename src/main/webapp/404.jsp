<%--
  Created by IntelliJ IDEA.
  User: lqh90
  Date: 2019/1/12
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="robots" content="noindex,nofollow">
    <title>404 - 页面找不到了</title>
    <style>
        body{font-size: 14px;font-family: 'helvetica neue',tahoma,arial,'hiragino sans gb','microsoft yahei','Simsun',sans-serif; background-color:#fff; color:#808080;}
        .wrap{margin:200px auto;width:510px;}
        td{text-align:left; padding:2px 10px;}
        td.header{font-size:22px; padding-bottom:10px; color:#000;}
        td.check-info{padding-top:20px;}
        a{color:#328ce5; text-decoration:none;}
        a:hover{text-decoration:underline;}
    </style>
</head>
<body style="min-width: 1600px">
<div class="wrap">
    <table>
        <tr>
            <td rowspan="5" style=""><img src="https://ws1.sinaimg.cn/large/a15b4afegy1fhsfdznep4j2020020web.jpg" alt="一个错误页面"></td>
            <td class="header">很抱歉！当前页面找不到了</td>
        </tr>
        <tr><td>原因一：您敲错了网址</td></tr>
        <tr><td>原因二：您的账号并非管理员权限</td></tr>
        <tr><td>原因三：登陆的账号密码有误，请<a href="login.jsp" >重新尝试</a></td></tr>
    </table>
</div>
</body>
</html>
