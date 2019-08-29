var myColor = ['#1089E7', '#F57474', '#56D0E3', '#F8B448', '#8B78F6'];

$(document).ready(function () {
    //服务商家统计
    $.ajax({
        type:"get",
        url:"/Merchants/MerchantsCount",
        success:function (data) {
            if(data!=null){
                $("#Merchants").html(data);
            }
        },
        error:function () {
            alert("获取服务商家数据失败，请联系管理员");
        }
    });
    //服务护工统计
    $.ajax({
        type:"get",
        url:"/Merchants/NursingCount",
        success:function (data) {
            if(data!=null){
                $("#Nursing").html(data);
            }
        },
        error:function () {
            alert("获取服务护工数据失败，请联系管理员");
        }
    });
    //医疗团队统计
    $.ajax({
        type:"get",
        url:"/Merchants/DoctorCount",
        success:function (data) {
            if(data!=null){
                $("#Doctor").html(data);
            }
        },
        error:function () {
            alert("获取医疗团队数据失败，请联系管理员");
        }
    });
    //志愿者统计
    $.ajax({
        type:"get",
        url:"/Merchants/VolunteerCount",
        success:function (data) {
            if(data!=null){
                $("#Volunteer").html(data);
            }
        },
        error:function () {
            alert("获取志愿者数据失败，请联系管理员");
        }
    });
    //社工人数统计
    $.ajax({
        type:"get",
        url:"/Merchants/SocialCount",
        success:function (data) {
            if(data!=null){
                $("#Social").html(data);
            }
        },
        error:function () {
            alert("获取社工数据失败，请联系管理员");
        }
    });
    //合作机构统计
    $.ajax({
        type:"get",
        url:"/Merchants/InstituteCount",
        success:function (data) {
            if(data!=null){
                $("#Institute").html(data);
            }
        },
        error:function () {
            alert("获取机构信息数据失败，请联系管理员");
        }
    });
    //服务项目统计
    $.ajax({
        type:"get",
        url:"/Merchants/CountMerchantsOption",
        success:function (data) {
            if(data!=null){
                var histogramChart1 = echarts.init(document.getElementById('histogramChart1'));
                histogramChart1.setOption({
                    grid: {
                        x:'30%',
                        y:'10%',
                        x2:'15%',
                        y2:'10%'
                    },
                    xAxis: {
                        show: false
                    },
                    yAxis: [{
                        show: true,
                        data:  ['综合服务','家政服务','医疗服务','美食服务','维修服务','文娱服务','法律服务','社区服务','机构服务'],
                        inverse: true,
                        axisLine: {
                            show: false
                        },
                        splitLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        axisLabel: {
                            color: '#fff',
                            formatter: (value, index) => {
                            return [
                                `{lg|${index+1}}  ` + '{title|' + value + '} '
                            ].join('\n')
                        },
                        rich: {
                            lg: {
                                backgroundColor: '#339911',
                                color: '#fff',
                                borderRadius: 15,
                                // padding: 5,
                                align: 'center',
                                width: 15,
                                height: 15
                            },
                        }
                    },


                }, {
                    show: true,
                    inverse: true,
                    data: [data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8]],
                    axisLabel: {
                        textStyle: {
                            fontSize: 12,
                            color: '#fff',
                        },
                    },
                    axisLine: {
                        show: false
                    },
                    splitLine: {
                        show: false
                    },
                    axisTick: {
                        show: false
                    },

                }],
                series: [{
                    name: '条',
                    type: 'bar',
                    yAxisIndex: 0,
                    data:  [data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8]],
                    barWidth: 10,
                    itemStyle: {
                        normal: {
                            barBorderRadius: 20,
                            color: function(params) {
                                var num = myColor.length;
                                return myColor[params.dataIndex % num]
                            },
                        }
                    },
                    label: {
                        normal: {
                            show: true,
                            position: 'inside',
                            formatter: '{c}间'
                        }
                    },
                }, {
                    name: '框',
                    type: 'bar',
                    yAxisIndex: 1,
                    barGap: '-100%',
                    data: [data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8]],
                    barWidth: 15,
                    itemStyle: {
                        normal: {
                            color: 'none',
                            borderColor: '#00c1de',
                            borderWidth: 3,
                            barBorderRadius: 15,
                        }
                    }
                }, ]
            })
            }
        },
        error:function () {
            alert("获取服务项目数据失败，请联系管理员");
        }
    });
    //订单详情
    function order(){
        $.ajax({
            type:"get",
            url:"/Merchants/NewOrder",
            success:function (data) {
                if(data!=null){
                    var str="";
                    for(var i=0;i<data.length;i++){
                        var orderTime = data[i].createdate;
                        var year = orderTime.substring(0,4);
                        var month = orderTime.substring(4,6);
                        var day = orderTime.substring(6);
                        var finalTime = year+"-"+month+"-"+day;
                        str+="<tr><td>"+data[i].realName+"</td><td>"+data[i].merchantName+"</td><td>"+finalTime+"</td></tr>"
                    }
                    $("#NewOrder").html(str);
                }
            },
            error:function () {
                alert("获取最新订单数据失败，请联系管理员");
            }
        });
    }
    //商家地图
    $.ajax({
        type:"get",
        url:"/Merchants/MerchantsLocation",
        success:function (merchantsLocation) {
            if(merchantsLocation!=null){
                var map = new BMap.Map('mapChart');
                var poi = new BMap.Point(111.306062,23.480344);
                map.setMapStyle({style:'midnight'});
                map.centerAndZoom(poi, 13);
                map.enableScrollWheelZoom();
                for(var i=0;i<merchantsLocation.length;i++){
                    temp(merchantsLocation[i]);
                }
                function temp(merchantsLocation){
                    var lo = merchantsLocation.longitude;//经度
                    var la = merchantsLocation.latitude;//纬度
                    // 百度地图API功能
                    var marker;
                    //蓝色标注
                    var buleIcon = new BMap.Icon("./static/images/img/markers.png", new BMap.Size(23,25),{
                        offset: new BMap.Size(10, 25), // 指定定位位置
                        imageOffset: new BMap.Size(0, 0 - 10 * 25) // 设置图片偏移
                    });
                    //绿色标注
                    var greenIcon = new BMap.Icon("./static/images/img/green.png", new BMap.Size(23,25),{
                        offset: new BMap.Size(10, 25), // 指定定位位置
                        imageOffset: new BMap.Size(0, 0 - 10 * 25) // 设置图片偏移
                    });
                    if(merchantsLocation.order<1){
                        marker = new window.BMap.Marker(new BMap.Point(lo,la)); //无订单，创建红色marker对象
                    }
                    if(merchantsLocation.order>0){
                        marker = new window.BMap.Marker(new BMap.Point(lo,la),{icon:buleIcon}); //有订单，空闲，创建蓝色marker对象
                    }
                    if(merchantsLocation.typeId==8 && merchantsLocation.merchantType!=0){
                        marker = new window.BMap.Marker(new BMap.Point(lo,la),{icon:greenIcon}); //有订单且为服务机构，创建绿色marker对象
                    }
                    marker.addEventListener("click", function(e){
                        // searchInfoWindow3.open(marker);
                        layer.open({
                            type: 2,
                            title: '护工信息',
                            shadeClose: true,
                            shade: false,
                            maxmin: true, //开启最大化最小化按钮
                            area: ['830px', '460px'],
                            content: 'MerchantInfo.jsp?merchantId='+merchantsLocation.merchantId
                        });
                    });
                    map.addOverlay(marker); //在地图中添加marker
                }
            }else {
                alert("获取商家定位数据失败，请联系管理员");
            }
        }
    });
    order();
    setInterval(function(){order();}, 60000);//轮询订单详情数据  60秒
});