<%--
  Created by IntelliJ IDEA.
  User: lqh90
  Date: 2019/10/15
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="count"></div>
</body>
<script src="static/js/scripts/Plugin/jquery-3.3.1.min.js"></script>
<script>
    $(function(){
        $("#count").numberRock({
            lastNumber:666,		//终止数字
            duration:800,
            easing:'linear'  	//慢快慢
        });
    });
    (function($){
        $.fn.numberRock=function(options){
            var defaults={
                lastNumber:100,
                duration:2000,
                easing:'linear'  //swing(默认 : 缓冲 : 慢快慢)  linear(匀速的)
            };
            var opts=$.extend({}, defaults, options);
            $(this).animate({
                num : "numberRock"
            },{
                duration : opts.duration,
                easing : opts.easing,
                complete : function(){
                    console.log("success");
                },
                step : function(a,b){  //可以检测我们定时器的每一次变化
                    $(this).html(parseInt(b.pos * opts.lastNumber));
                }
            });
        }
    })(jQuery);
</script>
</html>
