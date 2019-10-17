function getClientWidthSize() {
    var size = document.body.clientWidth;
    if(size<1600) layer.alert('您好！检测到您当前的设备分辨率过低，为了您的使用体验，请使用1600*900以上的设备进行访问',{offset:'200px',area: ['400px', '22%']});
}
$(document).ready(function () {
   getClientWidthSize();
});