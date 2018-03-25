<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>

    <style type="text/css">
        html, body {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        #map {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<input type="button" value="5555" style="z-index:999999"/>
   <div id="map"></div>
    <canvas id="canvas"></canvas>

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1XjLLEhZhQNUzd93EjU5nOGQ"></script>
    <script type="text/javascript" src="../public/build/mapv.js"></script>

    <script type="text/javascript">

        // 百度地图API功能
        var map = new BMap.Map("map", {
            enableMapClick: false
        });    // 创建Map实例
        map.centerAndZoom(new BMap.Point(105.403119, 38.028658), 5);  // 初始化地图,设置中心点坐标和地图级别
        map.enableScrollWheelZoom(true); // 开启鼠标滚轮缩放

      /*  map.setMapStyle({
            style: 'midnight'
        });*/

        //var randomCount = 2;

        var data = [];

        var citys = [["金华","天津","北京","郑州","乌鲁木齐"],["金华","杭州","北京","郑州","乌鲁木齐"],["金华","太原","北京","兰州","乌鲁木齐"],["金华","杭州","重庆","兰州","乌鲁木齐"]];

        // 构造数据
        for(var i=0;i<citys.length;i++)
			for(var j=0;j<citys[0].length -1;j++)
		{
            var cityCenter1 = mapv.utilCityCenter.getCenterByCityName(citys[i][j]);
            var cityCenter2 = mapv.utilCityCenter.getCenterByCityName(citys[i][j+1]);
            data.push({
                geometry: {
                    type: 'LineString',
                    coordinates: [[cityCenter1.lng-0.1+0.1* Math.random() , cityCenter1.lat-0.1+Math.random()*0.1], [cityCenter2.lng-0.1+Math.random()*0.1 , cityCenter2.lat-0.1+Math.random()*0.1]]
                },
				 count: 75* (i+1)
            });
        }

        var dataSet = new mapv.DataSet(data);

        var options = {
          
            lineWidth: 2,
            max: 300,
            draw: 'intensity'
        }

        var mapvLayer = new mapv.baiduMapLayer(map, dataSet, options);

        </script>
	
</body>
</html>
