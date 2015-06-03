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
            #container{
                margin : 20px;
                width: 70%;
                height: 60%;
            }
        </style>
        
        <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ElSylz6GjVBeVK2hLX1vG7C2"></script>   
    </head>
    <body>
        <h3>百度地图</h3>
        <div id="container"></div>        
        <script type="text/javascript">
            var map = new BMap.Map("container");
            var point = new BMap.Point(116.404, 39.915);
            map.centerAndZoom(point, 15);
            
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
            
            var marker = new BMap.Marker(point);
            map.addOverlay(marker);
            
            function getAttr() {
                var p = marker.getPosition();
                alert("Marker的位置是" + p.lng + ", " + p.lat + " <a href='http://bing.com'>bing search</a>");
            }
            marker.addEventListener("click", getAttr);
            
        </script>

    </body>
</html>
