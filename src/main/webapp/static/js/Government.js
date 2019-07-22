function timeMark() {
    //总人数
    $.ajax({
        type:"get",
        url:"/Government/AllPeopleCount",
        success:function (data) {
            $("#OldPeople").html(data);
        }
    });
    //总订单
    $.ajax({
        type:"get",
        url:"/Government/AllOrderCount",
        success:function (data) {
            $("#Order").html(data);
        }
    });
    //手机用户人数
    $.ajax({
        type:"get",
        url:"/Government/CountAllPhoneUser",
        success:function (data) {
            $("#Phone").html(data);
        }
    });
    //蓝手环用户人数
    $.ajax({
        type:"get",
        url:"/Government/CountAllRingUser",
        success:function (data) {
            $("#Ring").html(data);
        }
    });
    //阳光用户人数
    $.ajax({
        type:"get",
        url:"/Government/CountSumHomeUser",
        success:function (data) {
            $("#SumHomeUser").html(data);
        }
    });
    //阳光订单
    $.ajax({
        type:"get",
        url:"/Government/CountSumHomeOrder",
        success:function (data) {
            $("#SumHomeOrder").html(data);
        }
    });
    //阳光3城区人数统计
    $.ajax({
        type:"get",
        url:"/Government/CountSumHomeUserByLocation",
        success:function (data) {
            var myColor = ['#1089E7', '#F57474', '#56D0E3', '#F8B448', '#8B78F6'];
            var histogramChart1 = echarts.init(document.getElementById('lineChart'));
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
                        formatter: '{c}人'
                    }
                },
            }]
        })
        }
    });
    //阳光商品排行
    $.ajax({
        type:"get",
        url:"/Government/CountSumHomeOrderByMerchants",
        success:function (data) {
            if(data!=null||data.length>0){
                var histogramChart1 = echarts.init(document.getElementById('lineChart2'));
                histogramChart1.setOption({
                    color:['#d7de7b'],
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
                            data : [data[0].key,data[1].key,data[2].key,data[3].key,data[4].key,data[5].key,data[6].key,data[7].key],
                            axisLine:{
                                lineStyle:{
                                    color: '#d7de7b'
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
                                    color: '#d7de7b'
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
                            name:'商品排行',
                            type:'bar',
                            barWidth : 20,
                            data:[data[0].value,data[1].value,data[2].value,data[3].value,data[4].value,data[5].value,data[6].value,data[7].value]
                        }
                    ]
                });
            }
        }
    });
    //政府购买服务用户统计
    $.ajax({
        type:"get",
        url:"/Government/CountGovernmentUser",
        success:function (data) {
            if (data!=null){
                var dom = document.getElementById("pieChart1");
                var myChart = echarts.init(dom);
                var app = {};
                option = null;
                var weatherIcons = {
                };
                var seriesLabel = {
                    normal: {
                        show: true,
                        textBorderColor: '#333',
                        textBorderWidth: 2
                    }
                };
                option = {
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'shadow'
                        }
                    },
                    grid: {
                        left: 40
                    },
                    toolbox: {
                        show: false,
                        feature: {
                            saveAsImage: {}
                        }
                    },
                    xAxis: {
                        type: 'value',
                        name: ' ',
                        axisLabel: {
                            formatter: '{value}',
                            textStyle: {
                                color: "#fff"
                            }
                        }
                    },
                    yAxis: {
                        type: 'category',
                        inverse: true,
                        data: ['万秀区', '长洲区', '龙圩区'],
                        axisLabel: {
                            formatter: function (value) {
                                return  value ;
                            },
                            rotate:40,
                            textStyle: {
                                color: "#fff"
                            },
                            margin: 5,
                            rich: {
                                value: {
                                    lineHeight: 30,
                                    align: 'center'
                                },
                                Sunny: {
                                    height: 4,
                                    align: 'center',
                                    backgroundColor: {
                                        image: weatherIcons.Sunny
                                    }
                                },
                                Cloudy: {
                                    height: 40,
                                    align: 'center',
                                    backgroundColor: {
                                        image: weatherIcons.Cloudy
                                    }
                                },
                                Showers: {
                                    height: 40,
                                    align: 'center',
                                    backgroundColor: {
                                        image: weatherIcons.Showers
                                    }
                                }
                            }
                        }
                    },
                    series: [
                        {
                            name: '正常',
                            type: 'bar',
                            data: [data[0].normal+data[0].substitutes+data[0].dead,data[1].normal+data[1].substitutes+data[1].dead,data[2].normal+data[2].substitutes+data[2].dead],
                            label: seriesLabel,
                            markPoint: {
                                symbolSize: 1,
                                symbolOffset: [0, '50%'],
                                label: {
                                    normal: {
                                        formatter: '{a|{a}\n}{b|{b} }{c|{c}}',
                                        backgroundColor: 'rgb(242,242,242)',
                                        borderColor: '#ffffff',
                                        borderWidth: 1,
                                        borderRadius: 4,
                                        padding: [4, 10],
                                        lineHeight: 26,
                                        // shadowBlur: 5,
                                        // shadowColor: '#000',
                                        // shadowOffsetX: 0,
                                        // shadowOffsetY: 1,
                                        position: 'right',
                                        distance: 20
                                    }
                                }
                            }
                        },
                        {
                            name: '后补',
                            type: 'bar',
                            label: seriesLabel,
                            data: [data[0].substitutes,data[1].substitutes,data[2].substitutes]
                        },
                        {
                            name: '死亡',
                            type: 'bar',
                            label: seriesLabel,
                            data: [data[0].dead,data[1].dead,data[2].dead]
                        }
                    ]
                };
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            }
        }
    });
    //政府购买订单统计
    $.ajax({
        type:"get",
        url:"/Government/CountGovernmentOrderByLocationAndMerchantName",
        success:function (data) {
            if (data!=null){
                var dom = document.getElementById("pieChart2");
                var myChart = echarts.init(dom);
                var app = {};
                option = null;
                var posList = [
                    'left', 'right', 'top', 'bottom',
                    'inside',
                    'insideTop', 'insideLeft', 'insideRight', 'insideBottom',
                    'insideTopLeft', 'insideTopRight', 'insideBottomLeft', 'insideBottomRight'
                ];

                app.configParameters = {
                    rotate: {
                        min: -90,
                        max: 90
                    },
                    align: {
                        options: {
                            left: 'left',
                            center: 'center',
                            right: 'right'
                        }
                    },
                    verticalAlign: {
                        options: {
                            top: 'top',
                            middle: 'middle',
                            bottom: 'bottom'
                        }
                    },
                    position: {
                        options: echarts.util.reduce(posList, function (map, pos) {
                            map[pos] = pos;
                            return map;
                        }, {})
                    },
                    distance: {
                        min: 0,
                        max: 100
                    }
                };

                app.config = {
                    rotate: 90,
                    align: 'left',
                    verticalAlign: 'middle',
                    position: 'insideBottom',
                    distance: 15,
                    onChange: function () {
                        var labelOption = {
                            normal: {
                                rotate: app.config.rotate,
                                align: app.config.align,
                                verticalAlign: app.config.verticalAlign,
                                position: app.config.position,
                                distance: app.config.distance
                            }
                        };
                        myChart.setOption({
                            series: [{
                                label: labelOption
                            }, {
                                label: labelOption
                            }, {
                                label: labelOption
                            }]
                        });
                    }
                };


                var labelOption = {
                    normal: {
                        show: true,
                        position: app.config.position,
                        distance: app.config.distance,
                        align: app.config.align,
                        verticalAlign: app.config.verticalAlign,
                        rotate: app.config.rotate,
                        formatter: '{c}  {name|{a}}',
                        fontSize: 12,
                        rich: {
                        }
                    }
                };

                option = {
                    color: ['#003366', '#006699', '#4cabce',],
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'shadow'
                        }
                    },
                    toolbox: {
                        show: false,
                        orient: 'vertical',
                        left: 'right',
                        top: 'center'
                    },
                    calculable: true,
                    xAxis: [
                        {
                            type: 'category',
                            axisTick: {show: false},
                            data: ['万秀区','长洲区', '龙圩区'],
                            axisLabel : {
                                interval:0,
                                textStyle: {
                                    color: '#fff'
                                }
                            }
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value',
                            axisLabel : {
                                interval:0,
                                rotate:40,
                                textStyle: {
                                    color: '#fff'
                                }
                            }
                        }
                    ],
                    series: [
                        {
                            name: '康复护理',
                            type: 'bar',
                            barGap: 0,
                            label: labelOption,
                            data: [data[0].recovery,data[1].recovery,data[2].recovery]
                        },
                        {
                            name: '生活照料',
                            type: 'bar',
                            label: labelOption,
                            data: [data[0].life,data[1].life,data[2].life]
                        },
                        {
                            name: '其他',
                            type: 'bar',
                            label: labelOption,
                            data: [data[0].other,data[1].other,data[2].other]
                        }
                    ]
                };
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            }
        }
    });
    //历年订单分析
    $.ajax({
        type:"get",
        url:"/Government/OrderAnalysis",
        success:function (data) {
            console.log(data);
            if(data!=null){
                console.log(data);
                var TimeLine = data[data.length-1];
                for(var i=0;i<TimeLine.length;i++){
                    var strTime = TimeLine[i].toString();
                    var TimeArr = strTime.split(".");
                    if(TimeArr[1].length===1){
                        TimeArr[1]=TimeArr[1]+"0";
                        strTime = TimeArr[0]+"."+TimeArr[1];
                        TimeLine[i]=strTime;
                    }
                }
                var City = data[data.length-2];

                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                option = null;
                var dataMap = {};var pList = TimeLine;
                var temp;
                var recovery = {
                    '1':  [data[0] [0].recovery+data[0] [1].recovery+data[0] [2].recovery+data[0] [3].recovery+data[0] [4].recovery+data[0] [5].recovery+data[0] [6].recovery+data[0] [7].recovery+data[0] [8].recovery,    data[0] [0].recovery, data[0] [1].recovery, data[0] [2].recovery,data[0] [3].recovery, data[0] [4].recovery, data[0] [5].recovery, data[0] [6].recovery, data[0] [7].recovery, data[0] [8].recovery],
                    '2':  [data[1] [0].recovery+data[1] [1].recovery+data[1] [2].recovery+data[1] [3].recovery+data[1] [4].recovery+data[1] [5].recovery+data[1] [6].recovery+data[1] [7].recovery+data[1] [8].recovery,    data[1] [0].recovery, data[1] [1].recovery, data[1] [2].recovery,data[1] [3].recovery, data[1] [4].recovery, data[1] [5].recovery, data[1] [6].recovery, data[1] [7].recovery, data[1] [8].recovery],
                    '3':  [data[2] [0].recovery+data[2] [1].recovery+data[2] [2].recovery+data[2] [3].recovery+data[2] [4].recovery+data[2] [5].recovery+data[2] [6].recovery+data[2] [7].recovery+data[2] [8].recovery,    data[2] [0].recovery, data[2] [1].recovery, data[2] [2].recovery,data[2] [3].recovery, data[2] [4].recovery, data[2] [5].recovery, data[2] [6].recovery, data[2] [7].recovery, data[2] [8].recovery],
                    '4':  [data[3] [0].recovery+data[3] [1].recovery+data[3] [2].recovery+data[3] [3].recovery+data[3] [4].recovery+data[3] [5].recovery+data[3] [6].recovery+data[3] [7].recovery+data[3] [8].recovery,    data[3] [0].recovery, data[3] [1].recovery, data[3] [2].recovery,data[3] [3].recovery, data[3] [4].recovery, data[3] [5].recovery, data[3] [6].recovery, data[3] [7].recovery, data[3] [8].recovery],
                    '5':  [data[4] [0].recovery+data[4] [1].recovery+data[4] [2].recovery+data[4] [3].recovery+data[4] [4].recovery+data[4] [5].recovery+data[4] [6].recovery+data[4] [7].recovery+data[4] [8].recovery,    data[4] [0].recovery, data[4] [1].recovery, data[4] [2].recovery,data[4] [3].recovery, data[4] [4].recovery, data[4] [5].recovery, data[4] [6].recovery, data[4] [7].recovery, data[4] [8].recovery],
                    '6':  [data[5] [0].recovery+data[5] [1].recovery+data[5] [2].recovery+data[5] [3].recovery+data[5] [4].recovery+data[5] [5].recovery+data[5] [6].recovery+data[5] [7].recovery+data[5] [8].recovery,    data[5] [0].recovery, data[5] [1].recovery, data[5] [2].recovery,data[5] [3].recovery, data[5] [4].recovery, data[5] [5].recovery, data[5] [6].recovery, data[5] [7].recovery, data[5] [8].recovery],
                    '7':  [data[6] [0].recovery+data[6] [1].recovery+data[6] [2].recovery+data[6] [3].recovery+data[6] [4].recovery+data[6] [5].recovery+data[6] [6].recovery+data[6] [7].recovery+data[6] [8].recovery,    data[6] [0].recovery, data[6] [1].recovery, data[6] [2].recovery,data[6] [3].recovery, data[6] [4].recovery, data[6] [5].recovery, data[6] [6].recovery, data[6] [7].recovery, data[6] [8].recovery],
                    '8':  [data[7] [0].recovery+data[7] [1].recovery+data[7] [2].recovery+data[7] [3].recovery+data[7] [4].recovery+data[7] [5].recovery+data[7] [6].recovery+data[7] [7].recovery+data[7] [8].recovery,    data[7] [0].recovery, data[7] [1].recovery, data[7] [2].recovery,data[7] [3].recovery, data[7] [4].recovery, data[7] [5].recovery, data[7] [6].recovery, data[7] [7].recovery, data[7] [8].recovery],
                    '9' : [data[8] [0].recovery+data[8] [1].recovery+data[8] [2].recovery+data[8] [3].recovery+data[8] [4].recovery+data[8] [5].recovery+data[8] [6].recovery+data[8] [7].recovery+data[8] [8].recovery,    data[8] [0].recovery, data[8] [1].recovery, data[8] [2].recovery,data[8] [3].recovery, data[8] [4].recovery, data[8] [5].recovery, data[8] [6].recovery, data[8] [7].recovery, data[8] [8].recovery],
                    '10': [data[9] [0].recovery+data[9] [1].recovery+data[9] [2].recovery+data[9] [3].recovery+data[9] [4].recovery+data[9] [5].recovery+data[9] [6].recovery+data[9] [7].recovery+data[9] [8].recovery,    data[9] [0].recovery, data[9] [1].recovery, data[9] [2].recovery,data[9] [3].recovery, data[9] [4].recovery, data[9] [5].recovery, data[9] [6].recovery, data[9] [7].recovery, data[9] [8].recovery],
                    '11': [data[10][0].recovery+data[10][1].recovery+data[10][2].recovery+data[10][3].recovery+data[10][4].recovery+data[10][5].recovery+data[10][6].recovery+data[10][7].recovery+data[10][8].recovery,    data[10][0].recovery, data[10][1].recovery, data[10][2].recovery,data[10][3].recovery, data[10][4].recovery, data[10][5].recovery, data[10][6].recovery, data[10][7].recovery, data[10][8].recovery],
                    '12': [data[11][0].recovery+data[11][1].recovery+data[11][2].recovery+data[11][3].recovery+data[11][4].recovery+data[11][5].recovery+data[11][6].recovery+data[11][7].recovery+data[11][8].recovery,    data[11][0].recovery, data[11][1].recovery, data[11][2].recovery,data[11][3].recovery, data[11][4].recovery, data[11][5].recovery, data[11][6].recovery, data[11][7].recovery, data[11][8].recovery],
                    '13': [data[12][0].recovery+data[12][1].recovery+data[12][2].recovery+data[12][3].recovery+data[12][4].recovery+data[12][5].recovery+data[12][6].recovery+data[12][7].recovery+data[12][8].recovery,    data[12][0].recovery, data[12][1].recovery, data[12][2].recovery,data[12][3].recovery, data[12][4].recovery, data[12][5].recovery, data[12][6].recovery, data[12][7].recovery, data[12][8].recovery],
                    '14': [data[13][0].recovery+data[13][1].recovery+data[13][2].recovery+data[13][3].recovery+data[13][4].recovery+data[13][5].recovery+data[13][6].recovery+data[13][7].recovery+data[13][8].recovery,    data[13][0].recovery, data[13][1].recovery, data[13][2].recovery,data[13][3].recovery, data[13][4].recovery, data[13][5].recovery, data[13][6].recovery, data[13][7].recovery, data[13][8].recovery],
                    '15': [data[14][0].recovery+data[14][1].recovery+data[14][2].recovery+data[14][3].recovery+data[14][4].recovery+data[14][5].recovery+data[14][6].recovery+data[14][7].recovery+data[14][8].recovery,    data[14][0].recovery, data[14][1].recovery, data[14][2].recovery,data[14][3].recovery, data[14][4].recovery, data[14][5].recovery, data[14][6].recovery, data[14][7].recovery, data[14][8].recovery],
                    '16': [data[15][0].recovery+data[15][1].recovery+data[15][2].recovery+data[15][3].recovery+data[15][4].recovery+data[15][5].recovery+data[15][6].recovery+data[15][7].recovery+data[15][8].recovery,    data[15][0].recovery, data[15][1].recovery, data[15][2].recovery,data[15][3].recovery, data[15][4].recovery, data[15][5].recovery, data[15][6].recovery, data[15][7].recovery, data[15][8].recovery],
                    '17': [data[16][0].recovery+data[16][1].recovery+data[16][2].recovery+data[16][3].recovery+data[16][4].recovery+data[16][5].recovery+data[16][6].recovery+data[16][7].recovery+data[16][8].recovery,    data[16][0].recovery, data[16][1].recovery, data[16][2].recovery,data[16][3].recovery, data[16][4].recovery, data[16][5].recovery, data[16][6].recovery, data[16][7].recovery, data[16][8].recovery],
                    '18': [data[17][0].recovery+data[17][1].recovery+data[17][2].recovery+data[17][3].recovery+data[17][4].recovery+data[17][5].recovery+data[17][6].recovery+data[17][7].recovery+data[17][8].recovery,    data[17][0].recovery, data[17][1].recovery, data[17][2].recovery,data[17][3].recovery, data[17][4].recovery, data[17][5].recovery, data[17][6].recovery, data[17][7].recovery, data[17][8].recovery],
                    '19': [data[18][0].recovery+data[18][1].recovery+data[18][2].recovery+data[18][3].recovery+data[18][4].recovery+data[18][5].recovery+data[18][6].recovery+data[18][7].recovery+data[18][8].recovery,    data[18][0].recovery, data[18][1].recovery, data[18][2].recovery,data[18][3].recovery, data[18][4].recovery, data[18][5].recovery, data[18][6].recovery, data[18][7].recovery, data[18][8].recovery],
                    '20': [data[19][0].recovery+data[19][1].recovery+data[19][2].recovery+data[19][3].recovery+data[19][4].recovery+data[19][5].recovery+data[19][6].recovery+data[19][7].recovery+data[19][8].recovery,    data[19][0].recovery, data[19][1].recovery, data[19][2].recovery,data[19][3].recovery, data[19][4].recovery, data[19][5].recovery, data[19][6].recovery, data[19][7].recovery, data[19][8].recovery],
                    '21': [data[20][0].recovery+data[20][1].recovery+data[20][2].recovery+data[20][3].recovery+data[20][4].recovery+data[20][5].recovery+data[20][6].recovery+data[20][7].recovery+data[20][8].recovery,    data[20][0].recovery, data[20][1].recovery, data[20][2].recovery,data[20][3].recovery, data[20][4].recovery, data[20][5].recovery, data[20][6].recovery, data[20][7].recovery, data[20][8].recovery],
                    '22': [data[21][0].recovery+data[21][1].recovery+data[21][2].recovery+data[21][3].recovery+data[21][4].recovery+data[21][5].recovery+data[21][6].recovery+data[21][7].recovery+data[21][8].recovery,    data[21][0].recovery, data[21][1].recovery, data[21][2].recovery,data[21][3].recovery, data[21][4].recovery, data[21][5].recovery, data[21][6].recovery, data[21][7].recovery, data[21][8].recovery],
                    '23': [data[22][0].recovery+data[22][1].recovery+data[22][2].recovery+data[22][3].recovery+data[22][4].recovery+data[22][5].recovery+data[22][6].recovery+data[22][7].recovery+data[22][8].recovery,    data[22][0].recovery, data[22][1].recovery, data[22][2].recovery,data[22][3].recovery, data[22][4].recovery, data[22][5].recovery, data[22][6].recovery, data[22][7].recovery, data[22][8].recovery],
                    '24': [data[23][0].recovery+data[23][1].recovery+data[23][2].recovery+data[23][3].recovery+data[23][4].recovery+data[23][5].recovery+data[23][6].recovery+data[23][7].recovery+data[23][8].recovery,    data[23][0].recovery, data[23][1].recovery, data[23][2].recovery,data[23][3].recovery, data[23][4].recovery, data[23][5].recovery, data[23][6].recovery, data[23][7].recovery, data[23][8].recovery]};
                var life = {
                    '1':  [data[0] [0].life+data[0] [1].life+data[0] [2].life+data[0] [3].life+data[0] [4].life+data[0] [5].life+data[0] [6].life+data[0] [7].life+data[0] [8].life,    data[0] [0].life, data[0] [1].life, data[0] [2].life,data[0] [3].life, data[0] [4].life, data[0] [5].life, data[0] [6].life, data[0] [7].life, data[0] [8].life],
                    '2':  [data[1] [0].life+data[1] [1].life+data[1] [2].life+data[1] [3].life+data[1] [4].life+data[1] [5].life+data[1] [6].life+data[1] [7].life+data[1] [8].life,    data[1] [0].life, data[1] [1].life, data[1] [2].life,data[1] [3].life, data[1] [4].life, data[1] [5].life, data[1] [6].life, data[1] [7].life, data[1] [8].life],
                    '3':  [data[2] [0].life+data[2] [1].life+data[2] [2].life+data[2] [3].life+data[2] [4].life+data[2] [5].life+data[2] [6].life+data[2] [7].life+data[2] [8].life,    data[2] [0].life, data[2] [1].life, data[2] [2].life,data[2] [3].life, data[2] [4].life, data[2] [5].life, data[2] [6].life, data[2] [7].life, data[2] [8].life],
                    '4':  [data[3] [0].life+data[3] [1].life+data[3] [2].life+data[3] [3].life+data[3] [4].life+data[3] [5].life+data[3] [6].life+data[3] [7].life+data[3] [8].life,    data[3] [0].life, data[3] [1].life, data[3] [2].life,data[3] [3].life, data[3] [4].life, data[3] [5].life, data[3] [6].life, data[3] [7].life, data[3] [8].life],
                    '5':  [data[4] [0].life+data[4] [1].life+data[4] [2].life+data[4] [3].life+data[4] [4].life+data[4] [5].life+data[4] [6].life+data[4] [7].life+data[4] [8].life,    data[4] [0].life, data[4] [1].life, data[4] [2].life,data[4] [3].life, data[4] [4].life, data[4] [5].life, data[4] [6].life, data[4] [7].life, data[4] [8].life],
                    '6':  [data[5] [0].life+data[5] [1].life+data[5] [2].life+data[5] [3].life+data[5] [4].life+data[5] [5].life+data[5] [6].life+data[5] [7].life+data[5] [8].life,    data[5] [0].life, data[5] [1].life, data[5] [2].life,data[5] [3].life, data[5] [4].life, data[5] [5].life, data[5] [6].life, data[5] [7].life, data[5] [8].life],
                    '7':  [data[6] [0].life+data[6] [1].life+data[6] [2].life+data[6] [3].life+data[6] [4].life+data[6] [5].life+data[6] [6].life+data[6] [7].life+data[6] [8].life,    data[6] [0].life, data[6] [1].life, data[6] [2].life,data[6] [3].life, data[6] [4].life, data[6] [5].life, data[6] [6].life, data[6] [7].life, data[6] [8].life],
                    '8':  [data[7] [0].life+data[7] [1].life+data[7] [2].life+data[7] [3].life+data[7] [4].life+data[7] [5].life+data[7] [6].life+data[7] [7].life+data[7] [8].life,    data[7] [0].life, data[7] [1].life, data[7] [2].life,data[7] [3].life, data[7] [4].life, data[7] [5].life, data[7] [6].life, data[7] [7].life, data[7] [8].life],
                    '9' : [data[8] [0].life+data[8] [1].life+data[8] [2].life+data[8] [3].life+data[8] [4].life+data[8] [5].life+data[8] [6].life+data[8] [7].life+data[8] [8].life,    data[8] [0].life, data[8] [1].life, data[8] [2].life,data[8] [3].life, data[8] [4].life, data[8] [5].life, data[8] [6].life, data[8] [7].life, data[8] [8].life],
                    '10': [data[9] [0].life+data[9] [1].life+data[9] [2].life+data[9] [3].life+data[9] [4].life+data[9] [5].life+data[9] [6].life+data[9] [7].life+data[9] [8].life,    data[9] [0].life, data[9] [1].life, data[9] [2].life,data[9] [3].life, data[9] [4].life, data[9] [5].life, data[9] [6].life, data[9] [7].life, data[9] [8].life],
                    '11': [data[10][0].life+data[10][1].life+data[10][2].life+data[10][3].life+data[10][4].life+data[10][5].life+data[10][6].life+data[10][7].life+data[10][8].life,    data[10][0].life, data[10][1].life, data[10][2].life,data[10][3].life, data[10][4].life, data[10][5].life, data[10][6].life, data[10][7].life, data[10][8].life],
                    '12': [data[11][0].life+data[11][1].life+data[11][2].life+data[11][3].life+data[11][4].life+data[11][5].life+data[11][6].life+data[11][7].life+data[11][8].life,    data[11][0].life, data[11][1].life, data[11][2].life,data[11][3].life, data[11][4].life, data[11][5].life, data[11][6].life, data[11][7].life, data[11][8].life],
                    '13': [data[12][0].life+data[12][1].life+data[12][2].life+data[12][3].life+data[12][4].life+data[12][5].life+data[12][6].life+data[12][7].life+data[12][8].life,    data[12][0].life, data[12][1].life, data[12][2].life,data[12][3].life, data[12][4].life, data[12][5].life, data[12][6].life, data[12][7].life, data[12][8].life],
                    '14': [data[13][0].life+data[13][1].life+data[13][2].life+data[13][3].life+data[13][4].life+data[13][5].life+data[13][6].life+data[13][7].life+data[13][8].life,    data[13][0].life, data[13][1].life, data[13][2].life,data[13][3].life, data[13][4].life, data[13][5].life, data[13][6].life, data[13][7].life, data[13][8].life],
                    '15': [data[14][0].life+data[14][1].life+data[14][2].life+data[14][3].life+data[14][4].life+data[14][5].life+data[14][6].life+data[14][7].life+data[14][8].life,    data[14][0].life, data[14][1].life, data[14][2].life,data[14][3].life, data[14][4].life, data[14][5].life, data[14][6].life, data[14][7].life, data[14][8].life],
                    '16': [data[15][0].life+data[15][1].life+data[15][2].life+data[15][3].life+data[15][4].life+data[15][5].life+data[15][6].life+data[15][7].life+data[15][8].life,    data[15][0].life, data[15][1].life, data[15][2].life,data[15][3].life, data[15][4].life, data[15][5].life, data[15][6].life, data[15][7].life, data[15][8].life],
                    '17': [data[16][0].life+data[16][1].life+data[16][2].life+data[16][3].life+data[16][4].life+data[16][5].life+data[16][6].life+data[16][7].life+data[16][8].life,    data[16][0].life, data[16][1].life, data[16][2].life,data[16][3].life, data[16][4].life, data[16][5].life, data[16][6].life, data[16][7].life, data[16][8].life],
                    '18': [data[17][0].life+data[17][1].life+data[17][2].life+data[17][3].life+data[17][4].life+data[17][5].life+data[17][6].life+data[17][7].life+data[17][8].life,    data[17][0].life, data[17][1].life, data[17][2].life,data[17][3].life, data[17][4].life, data[17][5].life, data[17][6].life, data[17][7].life, data[17][8].life],
                    '19': [data[18][0].life+data[18][1].life+data[18][2].life+data[18][3].life+data[18][4].life+data[18][5].life+data[18][6].life+data[18][7].life+data[18][8].life,    data[18][0].life, data[18][1].life, data[18][2].life,data[18][3].life, data[18][4].life, data[18][5].life, data[18][6].life, data[18][7].life, data[18][8].life],
                    '20': [data[19][0].life+data[19][1].life+data[19][2].life+data[19][3].life+data[19][4].life+data[19][5].life+data[19][6].life+data[19][7].life+data[19][8].life,    data[19][0].life, data[19][1].life, data[19][2].life,data[19][3].life, data[19][4].life, data[19][5].life, data[19][6].life, data[19][7].life, data[19][8].life],
                    '21': [data[20][0].life+data[20][1].life+data[20][2].life+data[20][3].life+data[20][4].life+data[20][5].life+data[20][6].life+data[20][7].life+data[20][8].life,    data[20][0].life, data[20][1].life, data[20][2].life,data[20][3].life, data[20][4].life, data[20][5].life, data[20][6].life, data[20][7].life, data[20][8].life],
                    '22': [data[21][0].life+data[21][1].life+data[21][2].life+data[21][3].life+data[21][4].life+data[21][5].life+data[21][6].life+data[21][7].life+data[21][8].life,    data[21][0].life, data[21][1].life, data[21][2].life,data[21][3].life, data[21][4].life, data[21][5].life, data[21][6].life, data[21][7].life, data[21][8].life],
                    '23': [data[22][0].life+data[22][1].life+data[22][2].life+data[22][3].life+data[22][4].life+data[22][5].life+data[22][6].life+data[22][7].life+data[22][8].life,    data[22][0].life, data[22][1].life, data[22][2].life,data[22][3].life, data[22][4].life, data[22][5].life, data[22][6].life, data[22][7].life, data[22][8].life],
                    '24': [data[23][0].life+data[23][1].life+data[23][2].life+data[23][3].life+data[23][4].life+data[23][5].life+data[23][6].life+data[23][7].life+data[23][8].life,    data[23][0].life, data[23][1].life, data[23][2].life,data[23][3].life, data[23][4].life, data[23][5].life, data[23][6].life, data[23][7].life, data[23][8].life]};
                var other = {
                    '1':  [data[0] [0].other+data[0] [1].other+data[0] [2].other+data[0] [3].other+data[0] [4].other+data[0] [5].other+data[0] [6].other+data[0] [7].other+data[0] [8].other,    data[0] [0].other, data[0] [1].other, data[0] [2].other,data[0] [3].other, data[0] [4].other, data[0] [5].other, data[0] [6].other, data[0] [7].other, data[0] [8].other],
                    '2':  [data[1] [0].other+data[1] [1].other+data[1] [2].other+data[1] [3].other+data[1] [4].other+data[1] [5].other+data[1] [6].other+data[1] [7].other+data[1] [8].other,    data[1] [0].other, data[1] [1].other, data[1] [2].other,data[1] [3].other, data[1] [4].other, data[1] [5].other, data[1] [6].other, data[1] [7].other, data[1] [8].other],
                    '3':  [data[2] [0].other+data[2] [1].other+data[2] [2].other+data[2] [3].other+data[2] [4].other+data[2] [5].other+data[2] [6].other+data[2] [7].other+data[2] [8].other,    data[2] [0].other, data[2] [1].other, data[2] [2].other,data[2] [3].other, data[2] [4].other, data[2] [5].other, data[2] [6].other, data[2] [7].other, data[2] [8].other],
                    '4':  [data[3] [0].other+data[3] [1].other+data[3] [2].other+data[3] [3].other+data[3] [4].other+data[3] [5].other+data[3] [6].other+data[3] [7].other+data[3] [8].other,    data[3] [0].other, data[3] [1].other, data[3] [2].other,data[3] [3].other, data[3] [4].other, data[3] [5].other, data[3] [6].other, data[3] [7].other, data[3] [8].other],
                    '5':  [data[4] [0].other+data[4] [1].other+data[4] [2].other+data[4] [3].other+data[4] [4].other+data[4] [5].other+data[4] [6].other+data[4] [7].other+data[4] [8].other,    data[4] [0].other, data[4] [1].other, data[4] [2].other,data[4] [3].other, data[4] [4].other, data[4] [5].other, data[4] [6].other, data[4] [7].other, data[4] [8].other],
                    '6':  [data[5] [0].other+data[5] [1].other+data[5] [2].other+data[5] [3].other+data[5] [4].other+data[5] [5].other+data[5] [6].other+data[5] [7].other+data[5] [8].other,    data[5] [0].other, data[5] [1].other, data[5] [2].other,data[5] [3].other, data[5] [4].other, data[5] [5].other, data[5] [6].other, data[5] [7].other, data[5] [8].other],
                    '7':  [data[6] [0].other+data[6] [1].other+data[6] [2].other+data[6] [3].other+data[6] [4].other+data[6] [5].other+data[6] [6].other+data[6] [7].other+data[6] [8].other,    data[6] [0].other, data[6] [1].other, data[6] [2].other,data[6] [3].other, data[6] [4].other, data[6] [5].other, data[6] [6].other, data[6] [7].other, data[6] [8].other],
                    '8':  [data[7] [0].other+data[7] [1].other+data[7] [2].other+data[7] [3].other+data[7] [4].other+data[7] [5].other+data[7] [6].other+data[7] [7].other+data[7] [8].other,    data[7] [0].other, data[7] [1].other, data[7] [2].other,data[7] [3].other, data[7] [4].other, data[7] [5].other, data[7] [6].other, data[7] [7].other, data[7] [8].other],
                    '9' : [data[8] [0].other+data[8] [1].other+data[8] [2].other+data[8] [3].other+data[8] [4].other+data[8] [5].other+data[8] [6].other+data[8] [7].other+data[8] [8].other,    data[8] [0].other, data[8] [1].other, data[8] [2].other,data[8] [3].other, data[8] [4].other, data[8] [5].other, data[8] [6].other, data[8] [7].other, data[8] [8].other],
                    '10': [data[9] [0].other+data[9] [1].other+data[9] [2].other+data[9] [3].other+data[9] [4].other+data[9] [5].other+data[9] [6].other+data[9] [7].other+data[9] [8].other,    data[9] [0].other, data[9] [1].other, data[9] [2].other,data[9] [3].other, data[9] [4].other, data[9] [5].other, data[9] [6].other, data[9] [7].other, data[9] [8].other],
                    '11': [data[10][0].other+data[10][1].other+data[10][2].other+data[10][3].other+data[10][4].other+data[10][5].other+data[10][6].other+data[10][7].other+data[10][8].other,    data[10][0].other, data[10][1].other, data[10][2].other,data[10][3].other, data[10][4].other, data[10][5].other, data[10][6].other, data[10][7].other, data[10][8].other],
                    '12': [data[11][0].other+data[11][1].other+data[11][2].other+data[11][3].other+data[11][4].other+data[11][5].other+data[11][6].other+data[11][7].other+data[11][8].other,    data[11][0].other, data[11][1].other, data[11][2].other,data[11][3].other, data[11][4].other, data[11][5].other, data[11][6].other, data[11][7].other, data[11][8].other],
                    '13': [data[12][0].other+data[12][1].other+data[12][2].other+data[12][3].other+data[12][4].other+data[12][5].other+data[12][6].other+data[12][7].other+data[12][8].other,    data[12][0].other, data[12][1].other, data[12][2].other,data[12][3].other, data[12][4].other, data[12][5].other, data[12][6].other, data[12][7].other, data[12][8].other],
                    '14': [data[13][0].other+data[13][1].other+data[13][2].other+data[13][3].other+data[13][4].other+data[13][5].other+data[13][6].other+data[13][7].other+data[13][8].other,    data[13][0].other, data[13][1].other, data[13][2].other,data[13][3].other, data[13][4].other, data[13][5].other, data[13][6].other, data[13][7].other, data[13][8].other],
                    '15': [data[14][0].other+data[14][1].other+data[14][2].other+data[14][3].other+data[14][4].other+data[14][5].other+data[14][6].other+data[14][7].other+data[14][8].other,    data[14][0].other, data[14][1].other, data[14][2].other,data[14][3].other, data[14][4].other, data[14][5].other, data[14][6].other, data[14][7].other, data[14][8].other],
                    '16': [data[15][0].other+data[15][1].other+data[15][2].other+data[15][3].other+data[15][4].other+data[15][5].other+data[15][6].other+data[15][7].other+data[15][8].other,    data[15][0].other, data[15][1].other, data[15][2].other,data[15][3].other, data[15][4].other, data[15][5].other, data[15][6].other, data[15][7].other, data[15][8].other],
                    '17': [data[16][0].other+data[16][1].other+data[16][2].other+data[16][3].other+data[16][4].other+data[16][5].other+data[16][6].other+data[16][7].other+data[16][8].other,    data[16][0].other, data[16][1].other, data[16][2].other,data[16][3].other, data[16][4].other, data[16][5].other, data[16][6].other, data[16][7].other, data[16][8].other],
                    '18': [data[17][0].other+data[17][1].other+data[17][2].other+data[17][3].other+data[17][4].other+data[17][5].other+data[17][6].other+data[17][7].other+data[17][8].other,    data[17][0].other, data[17][1].other, data[17][2].other,data[17][3].other, data[17][4].other, data[17][5].other, data[17][6].other, data[17][7].other, data[17][8].other],
                    '19': [data[18][0].other+data[18][1].other+data[18][2].other+data[18][3].other+data[18][4].other+data[18][5].other+data[18][6].other+data[18][7].other+data[18][8].other,    data[18][0].other, data[18][1].other, data[18][2].other,data[18][3].other, data[18][4].other, data[18][5].other, data[18][6].other, data[18][7].other, data[18][8].other],
                    '20': [data[19][0].other+data[19][1].other+data[19][2].other+data[19][3].other+data[19][4].other+data[19][5].other+data[19][6].other+data[19][7].other+data[19][8].other,    data[19][0].other, data[19][1].other, data[19][2].other,data[19][3].other, data[19][4].other, data[19][5].other, data[19][6].other, data[19][7].other, data[19][8].other],
                    '21': [data[20][0].other+data[20][1].other+data[20][2].other+data[20][3].other+data[20][4].other+data[20][5].other+data[20][6].other+data[20][7].other+data[20][8].other,    data[20][0].other, data[20][1].other, data[20][2].other,data[20][3].other, data[20][4].other, data[20][5].other, data[20][6].other, data[20][7].other, data[20][8].other],
                    '22': [data[21][0].other+data[21][1].other+data[21][2].other+data[21][3].other+data[21][4].other+data[21][5].other+data[21][6].other+data[21][7].other+data[21][8].other,    data[21][0].other, data[21][1].other, data[21][2].other,data[21][3].other, data[21][4].other, data[21][5].other, data[21][6].other, data[21][7].other, data[21][8].other],
                    '23': [data[22][0].other+data[22][1].other+data[22][2].other+data[22][3].other+data[22][4].other+data[22][5].other+data[22][6].other+data[22][7].other+data[22][8].other,    data[22][0].other, data[22][1].other, data[22][2].other,data[22][3].other, data[22][4].other, data[22][5].other, data[22][6].other, data[22][7].other, data[22][8].other],
                    '24': [data[23][0].other+data[23][1].other+data[23][2].other+data[23][3].other+data[23][4].other+data[23][5].other+data[23][6].other+data[23][7].other+data[23][8].other,    data[23][0].other, data[23][1].other, data[23][2].other,data[23][3].other, data[23][4].other, data[23][5].other, data[23][6].other, data[23][7].other, data[23][8].other]};
                for (var month = 1; month <= 24; month++) {
                    temp = recovery[month.toString()];
                    recovery[month + 'sum'] = temp[0];
                    for (var i = 1, len = temp.length; i < len; i++) {
                        recovery[month.toString()][i] = {
                            name : pList[i],
                            value : temp[i]
                        }
                    }
                    recovery[month.toString()].shift()
                }
                for (var month = 1; month <= 24; month++) {
                    temp = life[month.toString()];
                    life[month + 'sum'] = temp[0];
                    for (var i = 1, len = temp.length; i < len; i++) {
                        life[month.toString()][i] = {
                            name : pList[i],
                            value : temp[i]
                        }
                    }
                    life[month.toString()].shift()
                }
                for (var month = 1; month <= 24; month++) {
                    temp = other[month.toString()];
                    other[month + 'sum'] = temp[0];
                    for (var i = 1, len = temp.length; i < len; i++) {
                        other[month.toString()][i] = {
                            name : pList[i],
                            value : temp[i]
                        }
                    }
                    other[month.toString()].shift()
                }
                dataMap.dataRecovery = recovery;
                dataMap.dataLife = life;
                dataMap.dataOther = other;

                option = {
                    baseOption: {
                        timeline: {
                            // y: 0,
                            axisType: 'category',
                            // realtime: false,
                            // loop: false,
                            autoPlay: true,
                            // currentIndex: 2,
                            playInterval: 1000,
                            // controlStyle: {
                            //     position: 'left'
                            // },
                            data: TimeLine,
                            label: {
                                formatter : function(s) {
                                    return (new Date(s)).getFullYear();
                                },
                                color: '#fff'
                            }
                        },
                        title: {
                            subtext: '数据来自云家庭数据中心'
                        },
                        tooltip: {
                        },
                        legend: {
                            x: 'right',
                            data: [ '康复护理', '生活照料', '其他服务'],
                            textStyle: {
                                color: '#fff'
                            }
                        },
                        calculable : true,
                        grid: {
                            top: 80,
                            bottom: 100,
                            tooltip: {
                                trigger: 'axis',
                                axisPointer: {
                                    type: 'shadow',
                                    label: {
                                        show: true,
                                        formatter: function (params) {
                                            return params.value.replace('\n', '');
                                        }
                                    }
                                }
                            }
                        },
                        xAxis: [
                            {
                                'type':'category',
                                'axisLabel':{'interval':0,textStyle: {
                                        color: '#fff'
                                    }},
                                'data':City.reverse(),
                                splitLine: {show: false}
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                name: '服务量',
                                axisLine:{
                                    lineStyle:{
                                        color:"#fff"
                                    }
                                }
                            }
                        ],
                        series: [
                            {name: '康复护理', type: 'bar'},
                            {name: '生活照料', type: 'bar'},
                            {name: '其他服务', type: 'bar'},
                            {
                                name: '服务类型',
                                type: 'pie',
                                center: ['75%', '35%'],
                                radius: '28%',
                                z: 100
                            }
                        ]
                    },
                    options: [
                        {
                            series: [
                                {data: dataMap.dataRecovery['1']},
                                {data: dataMap.dataLife['1']},
                                {data: dataMap.dataOther['1']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['1sum']},
                                        {name: '生活照料', value: dataMap.dataLife['1sum']},
                                        {name: '其他服务', value: dataMap.dataOther['1sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['2']},
                                {data: dataMap.dataLife['2']},
                                {data: dataMap.dataOther['2']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['2sum']},
                                        {name: '生活照料', value: dataMap.dataLife['2sum']},
                                        {name: '其他服务', value: dataMap.dataOther['2sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['3']},
                                {data: dataMap.dataLife['3']},
                                {data: dataMap.dataOther['3']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['3sum']},
                                        {name: '生活照料', value: dataMap.dataLife['3sum']},
                                        {name: '其他服务', value: dataMap.dataOther['3sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['4']},
                                {data: dataMap.dataLife['4']},
                                {data: dataMap.dataOther['4']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['4sum']},
                                        {name: '生活照料', value: dataMap.dataLife['4sum']},
                                        {name: '其他服务', value: dataMap.dataOther['4sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['5']},
                                {data: dataMap.dataLife['5']},
                                {data: dataMap.dataOther['5']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['5sum']},
                                        {name: '生活照料', value: dataMap.dataLife['5sum']},
                                        {name: '其他服务', value: dataMap.dataOther['5sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['6']},
                                {data: dataMap.dataLife['6']},
                                {data: dataMap.dataOther['6']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['6sum']},
                                        {name: '生活照料', value: dataMap.dataLife['6sum']},
                                        {name: '其他服务', value: dataMap.dataOther['6sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['7']},
                                {data: dataMap.dataLife['7']},
                                {data: dataMap.dataOther['7']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['7sum']},
                                        {name: '生活照料', value: dataMap.dataLife['7sum']},
                                        {name: '其他服务', value: dataMap.dataOther['7sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['8']},
                                {data: dataMap.dataLife['8']},
                                {data: dataMap.dataOther['8']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['8sum']},
                                        {name: '生活照料', value: dataMap.dataLife['8sum']},
                                        {name: '其他服务', value: dataMap.dataOther['8sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['9']},
                                {data: dataMap.dataLife['9']},
                                {data: dataMap.dataOther['9']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['9sum']},
                                        {name: '生活照料', value: dataMap.dataLife['9sum']},
                                        {name: '其他服务', value: dataMap.dataOther['9sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['10']},
                                {data: dataMap.dataLife['10']},
                                {data: dataMap.dataOther['10']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['10sum']},
                                        {name: '生活照料', value: dataMap.dataLife['10sum']},
                                        {name: '其他服务', value: dataMap.dataOther['10sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['11']},
                                {data: dataMap.dataLife['11']},
                                {data: dataMap.dataOther['11']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['11sum']},
                                        {name: '生活照料', value: dataMap.dataLife['11sum']},
                                        {name: '其他服务', value: dataMap.dataOther['11sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['12']},
                                {data: dataMap.dataLife['12']},
                                {data: dataMap.dataOther['12']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['12sum']},
                                        {name: '生活照料', value: dataMap.dataLife['12sum']},
                                        {name: '其他服务', value: dataMap.dataOther['12sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['13']},
                                {data: dataMap.dataLife['13']},
                                {data: dataMap.dataOther['13']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['13sum']},
                                        {name: '生活照料', value: dataMap.dataLife['13sum']},
                                        {name: '其他服务', value: dataMap.dataOther['13sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['14']},
                                {data: dataMap.dataLife['14']},
                                {data: dataMap.dataOther['14']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['14sum']},
                                        {name: '生活照料', value: dataMap.dataLife['14sum']},
                                        {name: '其他服务', value: dataMap.dataOther['14sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['15']},
                                {data: dataMap.dataLife['15']},
                                {data: dataMap.dataOther['15']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['15sum']},
                                        {name: '生活照料', value: dataMap.dataLife['15sum']},
                                        {name: '其他服务', value: dataMap.dataOther['15sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['16']},
                                {data: dataMap.dataLife['16']},
                                {data: dataMap.dataOther['16']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['16sum']},
                                        {name: '生活照料', value: dataMap.dataLife['16sum']},
                                        {name: '其他服务', value: dataMap.dataOther['16sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['17']},
                                {data: dataMap.dataLife['17']},
                                {data: dataMap.dataOther['17']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['17sum']},
                                        {name: '生活照料', value: dataMap.dataLife['17sum']},
                                        {name: '其他服务', value: dataMap.dataOther['17sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['18']},
                                {data: dataMap.dataLife['18']},
                                {data: dataMap.dataOther['18']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['18sum']},
                                        {name: '生活照料', value: dataMap.dataLife['18sum']},
                                        {name: '其他服务', value: dataMap.dataOther['18sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['19']},
                                {data: dataMap.dataLife['19']},
                                {data: dataMap.dataOther['19']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['19sum']},
                                        {name: '生活照料', value: dataMap.dataLife['19sum']},
                                        {name: '其他服务', value: dataMap.dataOther['19sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['20']},
                                {data: dataMap.dataLife['20']},
                                {data: dataMap.dataOther['20']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['20sum']},
                                        {name: '生活照料', value: dataMap.dataLife['20sum']},
                                        {name: '其他服务', value: dataMap.dataOther['20sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['21']},
                                {data: dataMap.dataLife['21']},
                                {data: dataMap.dataOther['21']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['21sum']},
                                        {name: '生活照料', value: dataMap.dataLife['21sum']},
                                        {name: '其他服务', value: dataMap.dataOther['21sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['22']},
                                {data: dataMap.dataLife['22']},
                                {data: dataMap.dataOther['22']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['22sum']},
                                        {name: '生活照料', value: dataMap.dataLife['22sum']},
                                        {name: '其他服务', value: dataMap.dataOther['22sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['23']},
                                {data: dataMap.dataLife['23']},
                                {data: dataMap.dataOther['23']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['23sum']},
                                        {name: '生活照料', value: dataMap.dataLife['23sum']},
                                        {name: '其他服务', value: dataMap.dataOther['23sum']}
                                    ]}
                            ]
                        },
                        {
                            series: [
                                {data: dataMap.dataRecovery['24']},
                                {data: dataMap.dataLife['24']},
                                {data: dataMap.dataOther['24']},
                                {data: [
                                        {name: '康复护理', value: dataMap.dataRecovery['24sum']},
                                        {name: '生活照料', value: dataMap.dataLife['24sum']},
                                        {name: '其他服务', value: dataMap.dataOther['24sum']}
                                    ]}
                            ]
                        }
                    ]
                };
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            }
            else {
                alert("获取数据失败");
            }
        }
    });
}
$(document).ready(function () {
    timeMark();
    setInterval(function(){timeMark();}, 86400000);//轮询全部数据  24h
});