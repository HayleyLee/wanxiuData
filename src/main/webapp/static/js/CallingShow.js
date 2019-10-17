function CallingTitle(){
    //线上服务总量
    $.ajax({
        type:"get",
        url:"/BigData/onlineService",
        success:function (data) {
            if(data>=0){
                bounty.default({ el:'#allCall',value:data.toString() })
            }
        },
        error:function () {
            alert("获取线上总服务量失败，请联系管理员");
        }
    });
    //总呼出数据
    $.ajax({
        type:"get",
        url:"/PBX/findOutCall",
        success:function (data) {
            if(data>=0){
                bounty.default({ el:'#OutCall',value:data.toString() })
            }
        },
        error:function () {
            alert("获取总呼出数据失败，请联系管理员");
        }
    });
    //总呼入数据
    $.ajax({
        type:"get",
        url:"/PBX/findInCall",
        success:function (data) {
            if(data>=0){
                bounty.default({ el:'#InCall',value:data.toString() })
            }
        },
        error:function () {
            alert("获取总呼出数据失败，请联系管理员");
        }
    });
    //今日呼出数据
    $.ajax({
        type:"get",
        url:"/PBX/findOutCallToDay",
        success:function (data) {
            if(data>=0){
                bounty.default({ el:'#OutCallToDay',value:data.toString() })
            }
        },
        error:function () {
            alert("获取呼出数据失败，请联系管理员");
        }
    });
    //今日呼入数据
    $.ajax({
        type:"get",
        url:"/PBX/findInCallToDay",
        success:function (data) {
            if(data>=0){
                bounty.default({ el:'#InCallToDay',value:data.toString() })
            }
        },
        error:function () {
            alert("获取呼入数据失败，请联系管理员");
        }
    });
    //同比昨日趋势
    $.ajax({
        type:"get",
        url:"/PBX/Percentage",
        success:function (data) {
            if (data!=null){
                bounty.default({ el:'#Percentage',value:data+"%" })
            }
        },
        error:function () {
            alert("获取百分比数据失败，请联系管理员");
        }
    });
}
$(document).ready(function () {
    CallingTitle();
    //坐席线上服务统计
    $.ajax({
        type:"get",
        url:"/PBX/findByWorkID",
        success:function (data) {
            if(data!=null||data.length>0){
                var histogramChart1 = echarts.init(document.getElementById('histogramChart1'));
                histogramChart1.setOption({
                    color:['#5bc0de'],
                    grid:{
                        left: '5%',
                        right: '5%',
                        bottom: '5%',
                        containLabel: true
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}次"
                    },
                    calculable : true,
                    xAxis : [
                        {
                            type : 'category',
                            data : ['李丽桢','周燕翘','郑少欣','李梅玲','苏佳亮','李静','于志杏','陈柳桦'],
                            axisLine:{
                                lineStyle:{
                                    color: '#5bc0de'
                                }
                            },
                            axisLabel : {
                                interval:0,
                                rotate:40,
                                textStyle: {
                                    color: '#fff'
                                }
                            }
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value',
                            axisLine:{
                                lineStyle:{
                                    color: '#5bc0de'
                                }
                            },
                            splitLine: {
                                "show": false
                            },
                            axisLabel: {
                                textStyle: {
                                    color: '#fff'
                                },
                                formatter: function (value) {
                                    return value + ""
                                }
                            }
                        }
                    ],
                    series : [
                        {
                            name:'坐席情况',
                            type:'bar',
                            barWidth : 20,
                            data:[data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7]]
                        }
                    ]
                });
            }
        },
        error:function () {
            alert("获取坐席数据失败，请联系管理员");
        }
    });
    //今日坐席数据统计
    $.ajax({
        type:"get",
        url:"/PBX/findCallByWorkIDToDay",
        success:function (data) {
            if(data!=null){
                var myColor = ['#1089E7', '#F57474', '#56D0E3', '#F8B448', '#8B78F6'];
                var histogramChart3 = echarts.init(document.getElementById('histogramChart3'));
                histogramChart3.setOption({
                    grid: {
                        top: '12%',
                        left: '30%'
                    },
                    xAxis: {
                        show: false
                    },
                    yAxis: [{
                        show: true,
                        data:  ['李丽桢','周燕翘','郑少欣','李梅玲','苏佳亮','李静','于志杏','陈柳桦'],
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
                    data: [data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7]],
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
                    name: '次',
                    type: 'bar',
                    yAxisIndex: 0,
                    data: [data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7]],
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
                            formatter: '{c}%'
                        }
                    },
                }, {
                    name: '框',
                    type: 'bar',
                    yAxisIndex: 1,
                    barGap: '-100%',
                    data: [100, 100, 100, 100,100, 100, 100, 100],
                    barWidth: 15,
                    itemStyle: {
                        normal: {
                            color: 'none',
                            borderColor: '#00c1de',
                            borderWidth: 1,
                            barBorderRadius: 15,
                        }
                    }
                }, ]
            })
            }
        },
        error:function () {
            alert("获取今日坐席数据失败，请联系管理员");
        }
    });
    //今日线上服务数据走势
    $.ajax({
        type:"get",
        url:"/PBX/findToDayByHour",
        success:function (data) {
            if(data!=null){
                var lineChart2 = echarts.init(document.getElementById('lineChart2'));
                lineChart2.setOption({
                    title: {
                        text: '今日线上服务数据走势',
                        textStyle:{
                            fontSize:16,
                            color:'#c87530'
                        },
                        x:"center"
                    },
                    color:["#c87530"],
                    grid:{
                        left: '15%',
                        right: '5%',
                        bottom: '25%'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}次"
                    },
                    calculable : true,
                    yAxis: [
                        {
                            type: 'value',
                            axisLine:{
                                lineStyle:{
                                    color: '#c87530'
                                }
                            },
                            splitLine: {
                                "show": false
                            },
                            axisLabel: {
                                textStyle: {
                                    color: '#fff'
                                },
                                formatter: function (value) {
                                    return value + ""
                                }
                            }
                        }
                    ],
                    xAxis: [
                        {
                            type: 'category',
                            data : ["08:00","10:00","12:00","14:00","16:00","18:00"],
                            boundaryGap : false,
                            axisLine:{
                                lineStyle:{
                                    color: '#c87530'
                                }
                            },
                            splitLine: {
                                "show": false
                            },
                            axisLabel: {
                                // interval:0,
                                // rotate:40,
                                textStyle: {
                                    color: '#fff'
                                },
                                formatter: function (value) {
                                    return value + ""
                                }
                            }
                        }
                    ],
                    series : [
                        {
                            name:'今日线上数据走势分析',
                            type:'line',
                            smooth:true,
                            itemStyle: {normal: {areaStyle: {type: 'default'}}},
                            data:[data[0],data[1],data[2],data[3],data[4],data[5]]
                        }
                    ]
                });
            }
        },
        error:function () {
            alert("获取今日线上服务数据走势，请联系管理员");
        }
    });
    //每周话务坐席通话统计
    $.ajax({
        type:"get",
        url:"/PBX/countWeekCall",
        success:function (rsl) {
            var timeArr = rsl[0];
            var data = rsl[1];
            var myChart = echarts.init(document.getElementById('PbxWeek'));
            var option = {
                tooltip: {
                    color: "#ffffff",
                    trigger: 'axis'
                },
                legend: {
                    data:['李丽桢','周燕翘','郑少欣','李梅玲','苏佳亮','李静','于志杏','陈柳桦']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    color:'#ffffff',
                    containLabel: true
                },
                xAxis: {
                    type: 'category',
                    boundaryGap: false,
                    axisLine: {
                        lineStyle: {
                            color: '#ffffff'
                        }
                    },
                    data: timeArr
                },
                yAxis: {
                    type: 'value',
                    axisLine: {
                        lineStyle: {
                            color: '#ffffff'
                        }
                    }
                },
                series: [
                    {
                        name:'李丽桢',
                        type:'line',
                        stack: '总量',
                        data:[data[0][0], data[0][1], data[0][2], data[0][3], data[0][4], data[0][5], data[0][6], data[0][7], data[0][8], data[0][9]]
                    },
                    {
                        name:'周燕翘',
                        type:'line',
                        stack: '总量',
                        data:[data[1][0], data[1][1], data[1][2], data[1][3], data[1][4], data[1][5], data[1][6], data[1][7], data[1][8], data[1][9]]
                    },
                    {
                        name:'郑少欣',
                        type:'line',
                        stack: '总量',
                        data:[data[2][0], data[2][1], data[2][2], data[2][3], data[2][4], data[2][5], data[2][6], data[2][7], data[2][8], data[2][9]]
                    },
                    {
                        name:'李梅玲',
                        type:'line',
                        stack: '总量',
                        data:[data[3][0], data[3][1], data[3][2], data[3][3], data[3][4], data[3][5], data[3][6], data[3][7], data[3][8], data[3][9]]
                    },
                    {
                        name:'苏佳亮',
                        type:'line',
                        stack: '总量',
                        data:[data[4][0], data[4][1], data[4][2], data[4][3], data[4][4], data[4][5], data[4][6], data[4][7], data[4][8], data[4][9]]
                    },
                    {
                        name:'李静',
                        type:'line',
                        stack: '总量',
                        data:[data[5][0], data[5][1], data[5][2], data[5][3], data[5][4], data[5][5], data[5][6], data[5][7], data[5][8], data[5][9]]
                    },
                    {
                        name:'于志杏',
                        type:'line',
                        stack: '总量',
                        data:[data[6][0], data[6][1], data[6][2], data[6][3], data[6][4], data[6][5], data[6][6], data[6][7], data[6][8], data[6][9]]
                    },
                    {
                        name:'陈柳桦',
                        type:'line',
                        stack: '总量',
                        data:[data[7][0], data[7][1], data[7][2], data[7][3], data[7][4], data[7][5], data[7][6], data[7][7], data[7][8], data[7][9]]
                    }
                ]
            };
            myChart.setOption(option);
        },
        error:function () {
            alert("获取每周坐席数据失败，请联系管理员");
        }
    });
    //历年线上服务数据统计
    // $.ajax({
    //     type:"get",
    //     url:"/PBX/findAllByTime",
    //     success:function (data) {
    //         if(data!=null){
    //             var histogramChart2 = echarts.init(document.getElementById('histogramChart2'));
    //             histogramChart2.setOption({
    //                 color:['#FD6C88'],
    //                 grid:{
    //                     left: '5%',
    //                     right: '5%',
    //                     bottom: '10%',
    //                     containLabel: true
    //                 },
    //                 tooltip : {
    //                     trigger: 'item',
    //                     formatter: "{a}<br/>{b}<br/>{c}次"
    //                 },
    //                 calculable : true,
    //                 yAxis : [
    //                     {
    //                         type : 'category',
    //                         data : data[0],
    //                         axisLine:{
    //                             lineStyle:{
    //                                 color: '#FD6C88'
    //                             }
    //                         },
    //                         axisLabel : {
    //                             textStyle: {
    //                                 color: '#fff'
    //                             }
    //                         }
    //                     }
    //                 ],
    //                 xAxis : [
    //                     {
    //                         type : 'value',
    //                         axisLine:{
    //                             lineStyle:{
    //                                 color: '#FD6C88'
    //                             }
    //                         },
    //                         splitLine: {
    //                             "show": false
    //                         },
    //                         axisLabel: {
    //                             textStyle: {
    //                                 color: '#fff'
    //                             },
    //                             formatter: function (value) {
    //                                 return value + ""
    //                             }
    //                         }
    //                     }
    //                 ],
    //                 series : [
    //                     {
    //                         name:'历年线上服务',
    //                         type:'bar',
    //                         barWidth : 20,
    //                         data:data[1]
    //                     }
    //                 ]
    //             })
    //         }
    //     },
    //     error:function () {
    //         alert("获取历年线上数据失败，请联系管理员");
    //     }
    // });
    setInterval(function(){CallingTitle();}, 40000);//轮询title6项数据  40秒
});