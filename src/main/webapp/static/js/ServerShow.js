var myColor = ['#1089E7', '#F57474', '#56D0E3', '#F8B448', '#8B78F6'];
var temp=[];
var temp0=0;
var temp1=0;
var temp2=0;
var temp3=0;
var temp4=0;
var temp5=0;
function TOP5(data) {
    var name = [];
    var str = data.split('+');
    var tempName = str[0].split(',');
    for(var i=0;i<tempName.length;i++){
        if(tempName[i]=="梧州市万秀区西门口诊所"){
            name[i]="西门口诊所"
        }else if(tempName[i]=="云家庭护工服务团队"){
            name[i]="云家庭服务团队"
        }else if(tempName[i]=="梧州市易家捷生活服务有限责任公司"){
            name[i]="易家捷生活服务"
        }else if(tempName[i]=="梧州市福利康复医院"){
            name[i]="梧州市康复医院"
        }else if(tempName[i]=="梧州市万秀区盈家旺城蒸品速食店"){
            name[i]="盈家蒸品速食店"
        }
    }
    var tempValue = str[1].split(',');
    var value = [];
    for (var i = 0; i < tempValue.length; i++) {
        value[i] = Number(tempValue[i]);
    }
    var histogramChart2 = echarts.init(document.getElementById('histogramChart2'));
    histogramChart2.setOption({
        grid: {
            x:'35%',
            y:'10%',
            x2:'15%',
            y2:'10%'
        },
        xAxis: {
            show: false
        },
        yAxis: [{
            show: true,
            data:  [name[0],name[1],name[2],name[3],name[4]],
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
        data: [value[0]+5000,value[0]+5000,value[0]+5000,value[0]+5000,value[0]+5000],
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
        data:  [value[0],value[1],value[2],value[3],value[4]],
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
                formatter: '{c}次'
            }
        },
    }, {
        name: '框',
        type: 'bar',
        yAxisIndex: 1,
        barGap: '-100%',
        data: [value[0]+5000,value[0]+5000,value[0]+5000,value[0]+5000,value[0]+5000],
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
function ServerTitle(){
    //万秀区用户数
    $.ajax({
        type:"post",
        url:"/Old/CountOldByLocation",
        data:{"location":1},
        success:function (data) {
            $("#wanxiuOld").html(data);
        }
    });
    //长洲区用户数
    $.ajax({
        type:"post",
        url:"/Old/CountOldByLocation",
        data:{"location":2},
        success:function (data) {
            $("#changzhouOld").html(data);
        }
    });
    //龙圩区用户数
    $.ajax({
        type:"post",
        url:"/Old/CountOldByLocation",
        data:{"location":3},
        success:function (data) {
            $("#longxuOld").html(data);
        }
    });
    //周边用户数
    $.ajax({
        type:"post",
        url:"/Old/CountOldByLocation",
        data:{"location":0},
        success:function (data) {
            $("#zhoubianOld").html(data);
        }
    });
    //阳光家园用户数
    $.ajax({
        type:"get",
        url:"/Old/countDisability",
        success:function (data) {
            $("#Disability").html(data)
        }
    });
    //总用户数
    $.ajax({
        type:"get",
        url:"/BigData/findOld",
        success:function (data) {
            $("#allOld").html(data)
        }
    });
}
$(document).ready(function () {
    ServerTitle();
    //地区服务量统计
    $.ajax({
        type:"get",
        url:"/Service/CountServiceByLocation",
        timeout:240000,
        beforeSend:function(){
            loading = layer.load(1, {
                shade: [0.1,'#fff'], //0.1透明度的白色背景
                offset:['50%','10%']
            });
        },
        complete:function(){
            layer.close(loading);
        },
        success:function (data) {
            var histogramChart1 = echarts.init(document.getElementById('histogramChart1'));
            histogramChart1.setOption({
                grid: {
                    top: '20%',
                    left: '23%'
                },
                xAxis: {
                    show: false
                },
                yAxis: [{
                    show: true,
                    data:  ['万秀区','长洲区','龙圩区'],
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
                        formatter: (value, index)=>{
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
                        }
                    }
                },
            }, {
                show: true,
                inverse: true,
                data: [data[0],data[1],data[2]],
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
                data: [data[0],data[1],data[2]],
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
                        formatter: '{c}次'
                    }
                },
            }, {
                name: '框',
                type: 'bar',
                yAxisIndex: 1,
                barGap: '-100%',
                data: [100, 100, 100],
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
    });
    //全区用户占比
    $.ajax({
        type:"post",
        url:"/Old/CountAllOldByLocation",
        success:function (data) {
            var pieChart1 = echarts.init(document.getElementById('pieChart1'));
            pieChart1.setOption({
                color:["#87cefa","#ff7f50","#32cd32","#da70d6"],
                tooltip : {
                    trigger: 'item',
                    formatter: "{a}<br/>{b}<br/>{c}人"
                },
                calculable : true,
                series : [
                    {
                        name:'用户分布',
                        type:'pie',
                        radius : [30, 110],
                        center : ['50%', '50%'],
                        roseType : 'area',
                        x: '50%',
                        max: 40,
                        sort : 'ascending',
                        data:[
                            {value:data[0], name:'万秀区'},
                            {value:data[1], name:'长洲区'},
                            {value:data[2], name:'龙圩区'},
                            {value:data[3], name:'周边区域'}
                        ]
                    }
                ]
            });
        }
    });
    //全区服务商TOP5统计
    $.ajax({
        type:"get",
        url:"/Service/CountTOP5Service",
        async:true,
        success:function (data) {
            if(data!=null) {
                TOP5(data);
            }
        }
    });
    //全区服务类型占比
    $.ajax({
        type:"get",
        url:"/Service/CountServiceType",
        async:true,
        success:function (data) {
            if(data!=null) {
                var name=[];
                for(var i in data){
                    temp[i]=data[i].value;
                    if(data[i].name=="医疗服务队"){
                        data[i].name="医疗服务"
                    }
                    name[i]=data[i].name;
                }
                temp0=Number(temp[0]);
                temp1=Number(temp[1]);
                temp2=Number(temp[2]);
                temp3=Number(temp[3]);
                temp4=Number(temp[4]);
                temp5=Number(temp[5]);
                var pieChart2 = echarts.init(document.getElementById('pieChart2'));
                pieChart2.setOption({
                    color:["#87cefa","#ff7f50","#32cd32","#da70d6","#1516da","#d52b0c"],
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}次"
                    },
                    calculable : true,
                    series : [
                        {
                            name:'全区服务量分析',
                            type:'pie',
                            radius : [30, 110],
                            center : ['45%', '50%'],
                            roseType : 'area',
                            x: '50%',
                            max: 40,
                            sort : 'ascending',
                            data:[
                                {value:temp0, name:name[0]},
                                {value:temp1, name:name[1]},
                                {value:temp2, name:name[2]},
                                {value:temp3, name:name[3]},
                                {value:temp4, name:name[4]},
                                {value:temp5, name:name[5]}
                            ]
                        }
                    ]
                })
            }
        }
    });
    //护工定位地图
    $.ajax({
        type:"get",
        url:"/Service/findAllNursingLocation",
        success:function (data) {
            if(data!=null){
                var map = new BMap.Map('mapChart');
                var poi = new BMap.Point(111.306062,23.480344);
                map.setMapStyle({style:'midnight'});
                map.centerAndZoom(poi, 13);
                map.enableScrollWheelZoom();
                $.getJSON("./static/nursingLocations.json", function (nursingLocations){
                    for(var i=0;i<nursingLocations.length;i++){
                        temp(nursingLocations[i],data[i]);
                    }
                });
                function temp(location,order){
                    var lo = location.longitude;//经度
                    var la = location.latitude;//纬度
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
                    if(order==0){
                        marker = new window.BMap.Marker(new BMap.Point(lo,la)); //无订单，创建红色marker对象
                    }
                    else if(location.status==1){
                        marker = new window.BMap.Marker(new BMap.Point(lo,la),{icon:greenIcon}); //正在服务，创建绿色marker对象
                    }else if(location.status==0){
                        marker = new window.BMap.Marker(new BMap.Point(lo,la),{icon:buleIcon}); //有订单，空闲，创建蓝色marker对象
                    }
                    marker.addEventListener("click", function(e){
                        // searchInfoWindow3.open(marker);
                        layer.open({
                            type: 2,
                            title: '护工信息',
                            shadeClose: true,
                            shade: false,
                            maxmin: true, //开启最大化最小化按钮
                            area: ['910px', '690px'],
                            content: 'nursingInfo.jsp?userId='+location.userId
                        });
                    });
                    map.addOverlay(marker); //在地图中添加marker
                }
            }else {
                alert("文件读取失败，请联系管理员");
            }
        }
    });
    setInterval(function(){ServerTitle();}, 40000);//轮询title6项数据  40秒
});