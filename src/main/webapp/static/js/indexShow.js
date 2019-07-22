var temp=[];
var temp0=0;
var temp1=0;
var temp2=0;
var temp3=0;
var temp4=0;
var temp5=0;
var loading;

function IndexTitle(){
    //总服务人数
    $.ajax({
        type:"get",
        url:"/BigData/findOld",
        success:function (data) {
            $("#OldPeople").html(data);
        }
    });
    //总服务量
    $.ajax({
        type:"get",
        url:"/BigData/findAllService",
        success:function (data) {
            $("#Service").html(data);
        }
    });
    //线上服务量
    $.ajax({
        type:"get",
        url:"/BigData/onlineService",
        success:function (data) {
            $("#onlineService").html(data);
        }
    });
    //线下服务量
    $.ajax({
        type:"get",
        url:"/BigData/findService",
        success:function (data) {
            $("#offlineService").html(data);
        }
    });
    //今日服务量
    $.ajax({
        type:"get",
        url:"/BigData/toDayService",
        success:function (data) {
            $("#toDayService").html(data);
        }
    });
    //今日呼叫量
    $.ajax({
        type:"get",
        url:"/BigData/toDayCall",
        success:function (data) {
            $("#toDayCall").html(data);
        }
    });
}
$(document).ready(function () {
    IndexTitle();
    //用户年龄占比
    $.ajax({
        type:"get",
        url:"/Old/findOldByAge",
        success:function (data) {
            var pieChart1 = echarts.init(document.getElementById('pieChart1'));
            pieChart1.setOption({
                color:["#87cefa","#ff7f50","#32cd32","#da70d6","#da241e","#1611da","#FFFFFF","#dad30c","#0aff41"],
                legend: {
                    y : '260',
                    x : 'center',
                    textStyle : {
                        color : '#ffffff'
                    },
                    data : ['60-65','66-70','71-75','76-80',"81-85","86-90","91-95","96-100","100+"]
                },
                tooltip : {
                    trigger: 'item',
                    formatter: "{a}<br/>{b}<br/>{c}人({d}%)"
                },
                calculable : false,
                series : [
                    {
                        name:'用户年龄占比',
                        type:'pie',
                        radius : ['40%', '70%'],
                        center : ['50%', '45%'],
                        itemStyle : {
                            normal : {
                                label : {
                                    show : false
                                },
                                labelLine : {
                                    show : false
                                }
                            },
                            emphasis : {
                                label : {
                                    show : true,
                                    position : 'center',
                                    textStyle : {
                                        fontSize : '16',
                                        fontWeight : 'bold'
                                    }
                                }
                            }
                        },
                        data:[
                            {value:data[0], name:'60-65'},
                            {value:data[1], name:'66-70'},
                            {value:data[2], name:'71-75'},
                            {value:data[3], name:'76-80'},
                            {value:data[4], name:'81-85'},
                            {value:data[5], name:'86-90'},
                            {value:data[6], name:'91-95'},
                            {value:data[7], name:'96-100'},
                            {value:data[8], name:'100+'}
                        ]
                    }
                ]
            });
        }
    });
    //商家TOP5
    $.ajax({
        type:"get",
        url:"/Service/CountTOP5Service",
        async:true,
        success:function (data) {
            if(data!=null){
                var str = data.split('+');
                var name = str[0].split(',');
                var tempValue = str[1].split(',');
                var value=[];
                for(var i=0;i<tempValue.length;i++){
                    value[i]=Number(tempValue[i]);
                }
                var lineChart = echarts.init(document.getElementById('lineChart'));
                // option = {
                //     title: {
                //         textStyle: {
                //             color: '#FFFFFF'
                //         }
                //     },
                //     tooltip: {
                //         trigger: 'axis',
                //         axisPointer: {
                //             type: 'shadow'
                //         }
                //     },
                //     legend: {
                //         data: ['Top']
                //     },
                //     grid: {
                //         left: '3%',
                //         right: '4%',
                //         bottom: '3%',
                //         containLabel: true
                //     },
                //     xAxis: {
                //         type: 'value',
                //         boundaryGap: [0, 0.01],
                //         nameTextStyle: {
                //             color: '#FFFFFF'
                //         },
                //         axisLine: {
                //             lineStyle: {
                //                 color: '#FFFFFF'
                //             }
                //         }
                //     },
                //     yAxis: {
                //         type: 'category',
                //         data: [name[2],name[1],name[0]],
                //         nameTextStyle: {
                //             color: '#FFFFFF'
                //         },
                //         axisLine: {
                //             lineStyle: {
                //                 color: '#FFFFFF'
                //             }
                //         }
                //     },
                //     series: [
                //         {
                //             name: 'Top',
                //             type: 'bar',
                //             data: [value[2],value[1],value[0]]
                //         }
                //     ]
                // };
                option = {
                    title: {
                        textStyle: {
                            color: '#FFFFFF'
                        }
                    },
                    color: ['#3398DB'],
                    tooltip : {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : [name[0],name[1],name[2],name[3],name[4]],
                            axisTick: {
                                alignWithLabel: true
                            },
                            nameTextStyle: {
                                color: '#FFFFFF'
                            },
                            axisLine: {
                                lineStyle: {
                                    color: '#FFFFFF'
                                }
                            }
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value',
                            nameTextStyle: {
                                color: '#FFFFFF'
                            },
                            axisLine: {
                                lineStyle: {
                                    color: '#FFFFFF'
                                }
                            }
                        }
                    ],
                    series : [
                        {
                            name:'服务量',
                            type:'bar',
                            barWidth: '60%',
                            data:[value[0],value[1],value[2],value[3],value[4]]
                        }
                    ]
                };
                lineChart.setOption(option);
            }
        }
    });
    //今日服务数据
    $.ajax({
        type:"get",
        url:"/Service/ToDayServiceType",
        success:function (data) {
            if(data!==null){
                for(var i in data){
                    temp[i]=data[i].value;
                }
                temp0=Number(temp[0]);
                temp1=Number(temp[1]);
                temp2=Number(temp[2]);
                temp3=Number(temp[3]);
                temp4=Number(temp[4]);
                temp5=Number(temp[5]);
                var myChart=echarts.init(document.getElementById('lineChart2'));
                option = {
                    title: {
                        textStyle: {
                            color: '#FFFFFF'
                        }
                    },
                    color: ['#80b50d'],
                    tooltip : {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ["生活照料",'康复护理','快餐配送','社区医疗','社区服务','医疗服务'],
                            axisTick: {
                                alignWithLabel: true
                            },
                            nameTextStyle: {
                                color: '#FFFFFF'
                            },
                            axisLine: {
                                lineStyle: {
                                    color: '#FFFFFF'
                                }
                            }
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value',
                            nameTextStyle: {
                                color: '#FFFFFF'
                            },
                            axisLine: {
                                lineStyle: {
                                    color: '#FFFFFF'
                                }
                            }
                        }
                    ],
                    series : [
                        {
                            name:'服务量',
                            type:'bar',
                            barWidth: '60%',
                            data:[temp0,temp1,temp2,temp3,temp4,temp5]
                        }
                    ]
                };
                myChart.setOption(option);
            }
        }
    });
    //服务满意度统计
    $.ajax({
        type:"get",
        url:"/BigData/CountOrderEvaluate",
        success:function (data) {
            if(data!=null){
                var pieChart2 = echarts.init(document.getElementById('pieChart2'));
                pieChart2.setOption({
                    color:["#21FA2D","#FFF91A","#B90809","#B9CBFF","#AF81B6"],
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}次"
                    },
                    calculable : true,
                    series : [
                        {
                            name:'服务满意度',
                            type:'pie',
                            radius : [30, 110],
                            center : ['50%', '50%'],
                            roseType : 'area',
                            x: '50%',
                            max: 40,
                            sort : 'ascending',
                            data:[
                                {value:data[0], name:'5星(强烈推荐)'},
                                {value:data[1], name:'4星(非常满意)'},
                                {value:data[2], name:'3星(满意)'},
                                {value:data[3], name:'2星(一般)'},
                                {value:data[4], name:'1星(差评)'}
                            ]
                        }
                    ]
                });
            }
        },
        error:function () {
            alert("获取服务满意度数据失败，请联系管理员");
        }
    });
    //用户定位地图
    $.ajax({
        type:"get",
        url:"/Location/findAllOldLocation",
        success:function (data) {
            if(data!=null){
                var oldList = data[0];
                var locationList = data[1];
                var map = new BMap.Map('mapChart');
                var poi = new BMap.Point(111.306062,23.480344);
                map.setMapStyle({style:'midnight'});
                map.centerAndZoom(poi, 13);
                map.enableScrollWheelZoom();
                for(var i=0;i<oldList.length;i++){
                    temp(oldList[i],locationList[i][0],locationList[i][1]);
                }
                function temp(content,x,y){
                    console.log("老人信息："+content);
                    console.log("经度："+x);
                    console.log("纬度："+y);
                    var tempB = content.split("最后一次定位时间：");
                    var SQLtime = tempB[1].substring(0,10);
                    // 百度地图API功能
                    var marker;
                    //蓝色
                    var buleIcon = new BMap.Icon("./static/images/img/markers.png", new BMap.Size(23,25),{
                        offset: new BMap.Size(10, 25), // 指定定位位置
                        imageOffset: new BMap.Size(0, 0 - 10 * 25) // 设置图片偏移
                    });
                    //绿色标注
                    var greenIcon = new BMap.Icon("./static/images/img/green.png", new BMap.Size(23,25),{
                        offset: new BMap.Size(10, 25), // 指定定位位置
                        imageOffset: new BMap.Size(0, 0 - 10 * 25) // 设置图片偏移
                    });
                    var date = new Date();
                    var day;
                    var month;
                    if(date.getDate()<10){
                        day="0"+date.getDate();
                    }else {
                        day=date.getDate();
                    }
                    if(date.getMonth()+1<10){
                        month="0"+(date.getMonth()+1);
                    }else {
                        month=(date.getMonth()+1);
                    }
                    var strDate = date.getFullYear()+"-"+month+"-"+day;
                    if(strDate===SQLtime){
                        marker = new window.BMap.Marker(new BMap.Point(x,y),{icon:greenIcon}); //创建marker对象
                    }else{
                        marker = new window.BMap.Marker(new BMap.Point(x,y),{icon:buleIcon}); //创建marker对象
                    }
                    marker.addEventListener("click", function(e){
                        searchInfoWindow3.open(marker);
                    });
                    map.addOverlay(marker); //在地图中添加marker
                    //样式3
                    var searchInfoWindow3 = new BMapLib.SearchInfoWindow(map, content, {
                        title: "定位信息", //标题
                        width: 300, //宽度
                        height:180, //高度
                        panel : "panel", //检索结果面板
                        enableAutoPan : true, //自动平移
                        searchTypes :[
                        ]
                    });
                }
            }
        },
        error:function () {
            alert("获取老人定位数据失败，请联系管理员");
        }
    });
    setInterval(function(){IndexTitle();}, 40000);//轮询title6项数据  40秒
});
