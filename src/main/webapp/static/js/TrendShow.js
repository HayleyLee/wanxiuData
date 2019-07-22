$(document).ready(function () {
    //残疾人年龄统计
    $.ajax({
        type:"get",
        url:"/Old/CountAllDisability",
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
                        formatter: "{a}<br/>{b}<br/>{c}人"
                    },
                    calculable : true,
                    yAxis : [
                        {
                            type : 'category',
                            data : ['0-9岁','10-19岁','20-29岁','30-39岁','40-49岁','50-59岁','60岁以上'],
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
                            name:'残疾年龄分析',
                            type:'bar',
                            barWidth : 20,
                            data:[data[0],data[1],data[2],data[3],data[4],data[5],data[6]]
                        }
                    ]
                });
            }
        },
        error:function () {
            alert("获取残疾人年龄数据失败，请联系管理员");
        }
    });
    //残疾人分布情况
    $.ajax({
        type:"get",
        url:"/Old/CountDisabilityByCountry",
        success:function (data) {
            if(data!=null){
                var pieChart2 = echarts.init(document.getElementById('pieChart2'));
                pieChart2.setOption({
                    color:["#32cd32","#ff7f50","#87cefa","#FD6C88","#4b5cc4","#faff72"],
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}人"
                    },
                    calculable : true,
                    series : [
                        {
                            name:'地区分布情况',
                            type:'pie',
                            radius : [30, 110],
                            center : ['50%', '50%'],
                            roseType : 'area',
                            x: '50%',
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
        },
        error:function () {
            alert("获取残疾人分布数据失败，请联系管理员");
        }
    });
    //重点帮扶对象
    $.ajax({
        type:"get",
        url:"/Old/CountGovernmentService",
        success:function (data) {
            if(data!=null){
                var histogramChart3 = echarts.init(document.getElementById('histogramChart3'));
                histogramChart3.setOption({
                    color:['#5ecd0c'],
                    grid:{
                        left: '5%',
                        right: '5%',
                        bottom: '10%',
                        containLabel: true
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}人"
                    },
                    calculable : true,
                    yAxis : [
                        {
                            type : 'category',
                            data : ['低保','三无','失独','残疾','重点优抚对象','高龄','失能','空巢','五保','困难老人'],
                            axisLine:{
                                lineStyle:{
                                    color: '#5ECD0C'
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
                                    color: '#5ECD0C'
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
                            name:'重点帮扶对象情况',
                            type:'bar',
                            barWidth : 20,
                            data:[data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8],data[9]]
                        }
                    ]
                });
            }
        },
        error:function () {
            alert("获取政府购买服务数据失败，请联系管理员");
        }
    });
    //老人疾病分析
    $.ajax({
        type:"get",
        url:"/Old/Disease",
        success:function (data) {
            if(data!=null){
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
                        formatter: "{a}<br/>{b}<br/>{c}人"
                    },
                    calculable : true,
                    xAxis : [
                        {
                            type : 'category',
                            data : ['高血压','心脏病','前列腺','糖尿病','肠胃病','精神病','皮肤病','类风湿','中风','帕金逊','老人痴呆','膀胱','气管炎','眼疾','腰椎','肾病','听视力','肿瘤'],
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
                            name:'老年人常见疾病',
                            type:'bar',
                            barWidth : 20,
                            data:[data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8],data[9],data[10],data[11],data[12],data[13],data[14],data[15],data[16],data[17]]
                        }
                    ]
                });
                $("#Disease1").html(data[0]);
                $("#Disease2").html(data[1]);
                $("#Disease3").html(data[2]);
                $("#Disease4").html(data[3]);
                $("#Disease5").html(data[4]);
                $("#Disease6").html(data[5]);
                $("#Disease7").html(data[6]);
                $("#Disease8").html(data[7]);
                $("#Disease9").html(data[8]);
                $("#Disease10").html(data[9]);
                $("#Disease11").html(data[10]);
                $("#Disease12").html(data[11]);
                $("#Disease13").html(data[12]);
                $("#Disease14").html(data[13]);
                $("#Disease15").html(data[14]);
                $("#Disease16").html(data[15]);
                $("#Disease17").html(data[16]);
                $("#Disease18").html(data[17]);
            }
        },
        error:function () {
            alert("获取老人疾病数据失败，请联系管理员");
        }
    });
    //残疾人情况分析
    $.ajax({
        type:"get",
        url:"Old/Disability",
        success:function (data) {
            if(data!=null){
                var body=data[0];  //肢体
                var vision=data[1];//视力
                var intellect=data[2];//智力
                var spirit=data[3];//精神
                var speech=data[4];//言语
                var hearing=data[5];//听力
                var lineChart2 = echarts.init(document.getElementById('lineChart2'));
                lineChart2.setOption({
                    color:["#bfbf0b"],
                    grid:{
                        left: '7%',
                        right: '5%',
                        bottom: '10%'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a}<br/>{b}<br/>{c}人"
                    },
                    calculable : true,
                    yAxis: [
                        {
                            type: 'value',
                            axisLine:{
                                lineStyle:{
                                    color: '#BFBF0B'
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
                            data : ["肢体一级","肢体二级","肢体三级","肢体四级","视力一级","视力二级","视力三级","视力四级","智力一级","智力二级","智力三级","智力四级","精神一级","精神二级","精神三级","精神四级","言语一级","言语二级","言语三级","言语四级","听力一级","听力二级","听力三级","听力四级"],
                            boundaryGap : false,
                            axisLine:{
                                lineStyle:{
                                    color: '#BFBF0B'
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
                            name:'残疾情况分析',
                            type:'line',
                            smooth:true,
                            itemStyle: {normal: {areaStyle: {type: 'default'}}},
                            data:[body[0],body[1],body[2],body[3],vision[0],vision[1],vision[2],vision[3],intellect[0],intellect[1],intellect[2],intellect[3],spirit[0],spirit[1],spirit[2],spirit[3],speech[0],speech[1],speech[2],speech[3],hearing[0],hearing[1],hearing[2],hearing[3]]
                        }
                    ]
                });
            }
        },
        error:function () {
            alert("获取残疾人数据失败，请联系管理员");
        }
    });
});