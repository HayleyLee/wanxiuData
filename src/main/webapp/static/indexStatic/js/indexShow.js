var pageNumber=0;
var pageSize=20;
var tempID="";
function AppendID(val) {
    $("#content").append("<span name='id' style='display: none'>"+val+"</span>");
    tempID=val;
}
function AppendLastName(val) {
    $("#content").append("<h3 style='display: none' name='last' class=\"bloglist left\">"+val+"</h3>");
}
function Appendname(val) {
    $("#content").append("<h3 class=\"bloglist left\">"+val+"</h3>");
}
function Appendphoto(val) {
    $("#content").append("<img src=\"/static/indexStatic/HomeImg/"+val+"\" width='30%' style='float: left;margin-right: 3%'>");
}
function Appendvideo(val) {
    $("#content").append("<video width='700px' height='250px' class=\"bloglist left\" src=\"/static/indexStatic/HomeImg/"+val+"\" controls controlsList='nodownload'></video>");
}
function Appendarticle(val) {
    if(val.substring(val.length-3)=="..."){
        $("#content").append("<p style='margin-right: 3%'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+val+"<span id='"+tempID+"' onclick='jump(this.id)' style='color: #a2ff12'><a href='javascript:;'>【详情】</a></span></p>");
    }else {
        $("#content").append("<p style='margin-right: 3%'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+val+"</p>");
    }
}
function Appendcreate_time(val) {
    $("#content").append("<p class=\"dateview\"><span>"+val+"</span></p>");
}
function getIndex() {
    $.ajax({
        type:"get",
        data:{"pageNumber":pageNumber,"pageSize":pageSize},
        url:"/wzData/CompanyNews/findAll",
        success:function (json) {
            for(var i=0;i<json.length;i++){
                for(var key in json[i]){
                    if(key=="newsTitle"&&json[i][key]!=null&&json[i][key]!=""){
                        if(json.length==i+2){
                            AppendLastName(json[i][key]);
                        }
                        Appendname(json[i][key]);
                    }
                    if(key=="imgUrl"&&json[i][key]!=null&&json[i][key]!=""){
                        Appendphoto(json[i][key]);
                    }
                    if(key=="video"&&json[i][key]!=null&&json[i][key]!=""){
                        Appendvideo(json[i][key]);
                    }
                    if(key=="contents"&&json[i][key]!=null&&json[i][key]!=""){
                        Appendarticle(json[i][key]);
                    }
                    if(key=="createTime"&&json[i][key]!=null&&json[i][key]!=""){
                        console.log("time:"+json[i][key]);
                        Appendcreate_time(json[i][key]);
                    }
                    if(key=="newsId"&&json[i][key]!=null&&json[i][key]!=""){
                        AppendID(json[i][key]);
                    }
                }
            }
            pageNumber+=pageSize;
        },
        error:function () {
            layer.msg("数据获取异常，请稍后再试");
        }
    });
}
function jump(span) {
    var trueID=span-1;
    location.href="/NewsShow.jsp?id="+trueID;
}