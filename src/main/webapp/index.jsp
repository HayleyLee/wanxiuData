<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>登陆</title>
    <script src="./static/layui/layui.all.js"></script>
    <script src="./static/js/scripts/Plugin/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="./static/layui/css/layui.css">
    <link rel="stylesheet" href="./static/layui/css/layui.mobile.css">
    <link rel="stylesheet" href="./static/css/styles/style.css">
</head>
<body>
<div class="main" style="text-align: center;position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);">
    <form class="layui-form" action="/Old/login" method="post">
        <div class="layui-form-mid layui-word-aux"></div>
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-inline">
                <input id="name" style="width: 220px" type="text" name="name" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input id="pass" style="width: 220px" type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button formtarget="_top" style="width: 180px" class="layui-btn layui-btn-radius layui-btn-danger">登陆</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
