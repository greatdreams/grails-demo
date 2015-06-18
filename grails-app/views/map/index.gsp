<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>百度地图</title>
        <style type="text/css">
            html{
            height:100%;
            }

            body{
            height:100%;
            margin:0px;
            padding:0px
            }  
            #map{
            margin : 20px;
            width : 100%;
            height : 400px;
            }
        </style>

        <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ElSylz6GjVBeVK2hLX1vG7C2"></script>   
    </head>
    <body>
        <div class="container">
            <h3>百度地图</h3>
            <div id="map"></div>  
        </div>



        <script type="text/javascript">
            var map = new BMap.Map("map");
            var point = new BMap.Point(116.369, 39.967);
            map.centerAndZoom(point, 12);

            window.setTimeout(function(){  
            map.panTo(new BMap.Point(116.409, 39.918));    
            }, 2000);

            var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});  // 左上角，添加比例尺
            var top_left_navigation = new BMap.NavigationControl(); //左上角，添加默认缩放平移控件
            // 右上角， 仅包含平移和缩放按钮
            // 缩放的控件的类型有四种
            // BMAP_NAVIGATION_CONTROL_SAMLL 仅包含平移和缩放按钮
            // BMAP_NAVIGATION_CONTROL_PAN  仅包含平移按钮
            // BMAP_NAVIGATION_CONTROL_ZOOM 仅包含缩放按钮            
            var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL});
            map.addControl(top_left_control);
            map.addControl(top_left_navigation);
            map.addControl(top_right_navigation);

            map.enableScrollWheelZoom(); //启动滚轮放大缩小， 默认禁用
            map.enableContinuousZoom(); //启动地图惯性拖曳， 默认禁用

            var opts = {    
            width : 250,     // 信息窗口宽度    
            height: 100,     // 信息窗口高度    
            title : "Hello"  // 信息窗口标题   
            }                     
            
            var marker = new BMap.Marker(point);
            map.addOverlay(marker);

            function clickListener(e) {
                opts.title = '当前位置';
                var infoWindow = new BMap.InfoWindow("<table class='table'> <thead><tr><th>经度</th><th>纬度</th></tr></thead><tbody><tr><td>" + e.point.lng + "</td><td>" + e.point.lat + "</td></tr></tbody></table>", opts);  // 创建信息窗口对象
                map.openInfoWindow(infoWindow, e.point);      // 打开信息窗口
            }
            map.addEventListener("click", clickListener);
            marker.addEventListener("click", clickListener);

            marker = new BMap.Marker(new BMap.Point(116.404, 39.918));
            map.addOverlay(marker);

            function addMarker(point, index){  // 创建图标对象   
                var myIcon = new BMap.Icon("/assets/person-learning-img.jpeg", new BMap.Size(23, 25), {    
                    // 指定定位位置。   
                    // 当标注显示在地图上时，其所指向的地理位置距离图标左上    
                    // 角各偏移10像素和25像素。您可以看到在本例中该位置即是   
                    // 图标中央下端的尖角位置。    
                    offset: new BMap.Size(10, 25),    
                    // 设置图片偏移。   
                    // 当您需要从一幅较大的图片中截取某部分作为标注图标时，您   
                    // 需要指定大图的偏移位置，此做法与css sprites技术类似。    
                    imageOffset: new BMap.Size(0, 0 - index * 25)   // 设置图片偏移    
                });      
                // 创建标注对象并添加到地图   
                var marker = new BMap.Marker(point);    
                map.addOverlay(marker);    

                marker.enableDragging();  
                marker.addEventListener("click", clickListener);
            }
            // 随机向地图添加10个标注    
            for (var i = 0; i < 10; i ++) {    
                var point = new BMap.Point(116.404 + Math.random() * 0.07 + 0.01,     
                39.915 + Math.random() * 0.07 + 0.01);    
                addMarker(point, i);  
            }
        </script>

    </body>
</html>
