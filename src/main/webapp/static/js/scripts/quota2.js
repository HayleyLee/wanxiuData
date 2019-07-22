
$(function(){
  map();
})
function map(){
  //地图
  var mapChart = echarts.init(document.getElementById('mapChart'));
  mapChart.setOption({
      bmap: {
          center: [111.309485,23.476614],
          zoom: 12,
          roam: true,

      },
      tooltip : {
          trigger: 'item',
          formatter:function(params, ticket, callback){
              return params.value[2]
          }
      },
      series: [{
          type: 'scatter',
          coordinateSystem: 'bmap',
          data: [
            [111.275008,23.488608, '长洲区人民法院'] ,
            [111.271361,23.482613, '梧州中医院'] ,
            [111.319734,23.49643, '梧州市福利院'],
            [111.321899,23.47598, '万秀区财政局'],
            [111.297825,23.481946, '太阳广场'],
           ]
      }]
  });
  mapChart.on('click', function (params) {
      $("#el-dialog").removeClass('hide');
      $("#reportTitle").html(params.value[2]);
  });

  var bmap = mapChart.getModel().getComponent('bmap').getBMap()
  bmap.addControl(new BMap.MapTypeControl({mapTypes: [BMAP_NORMAL_MAP,BMAP_SATELLITE_MAP ]}));
  bmap.setMapStyle({style:'midnight'});
}
