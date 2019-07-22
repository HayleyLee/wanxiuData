function CallingTitle(){
    //线上服务总量
    $.ajax({
        type:"get",
        url:"/BigData/onlineService",
        success:function (data) {
            if(data>=0){
                $("#allCall").html(data);
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
                $("#OutCall").html(data);
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
                $("#InCall").html(data);
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
                $("#OutCallToDay").html(data);
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
                $("#InCallToDay").html(data);
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
                $("#Percentage").html(data+"%");
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
    //历年线上服务数据统计
    $.ajax({
        type:"get",
        url:"/PBX/findAllByTime",
        success:function (data) {
            if(data!=null){
                var histogramChart2 = echarts.init(document.getElementById('histogramChart2'));
                histogramChart2.setOption({
                    color:['#FD6C88'],
                    grid:{
                        left: '5%',
                        right: '5%',
                        bottom: '10%',
                        containLabel: true
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}次"
                    },
                    calculable : true,
                    yAxis : [
                        {
                            type : 'category',
                            data : data[0],
                            axisLine:{
                                lineStyle:{
                                    color: '#FD6C88'
                                }
                            },
                            axisLabel : {
                                textStyle: {
                                    color: '#fff'
                                }
                            }
                        }
                    ],
                    xAxis : [
                        {
                            type : 'value',
                            axisLine:{
                                lineStyle:{
                                    color: '#FD6C88'
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
                            name:'历年线上服务',
                            type:'bar',
                            barWidth : 20,
                            data:data[1]
                        }
                    ]
                })
            }
        },
        error:function () {
            alert("获取历年线上数据失败，请联系管理员");
        }
    });
    setInterval(function(){CallingTitle();}, 40000);//轮询title6项数据  40秒
});