<style>
.info,.infoPic,.midUl,.left-about,#dituContent {
visibility: hidden;
}
</style>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=i5FHCLVvOE9AiquzKFTUNP1MFufetFGw&s=1"></script>
<div class="swiper-container">
    <div class="swiper-wrapper">
        <?php foreach ($list_ad as $row_) { ?>
            <div class="swiper-slide"><a <?= \app\common\model\Ad::urlOpen($row_->url, $row_->new_window) ?>><img
                            src="__IMGURL__{$row_->img}" alt="暂无图片"></a></div>
        <?php } ?>

            </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination defined-pag"></div>
</div>
<div class="infoBox">
    <div class="info">
        <h3>关于酸枣</h3>
        <p>酸枣直播，是一款专注于微信公众号的轻量化直播工具。</p>
        <p>通过利用酸枣的基础直播服务和定向推送服务帮助自媒体解决内容变<br>现，付费转化等各项需求</p>
        <p>让更多自媒体人实现公众号的收入暴增、粉丝暴涨。</p>
        <p>面向各行业自媒体的变现需求，轻量化、免开发一键即可接入的视频<br>音频直播工具。</p>
    </div>
    <div class="infoPic">
        <img src="__STATIC__img/info-pic.png" alt="">
    </div>
</div>
<div class="midBox">
    <h3 style="margin-top: 100px">他们都在用酸枣</h3>
    <ul class="midUl clearfix">
        <li>
            <p>龙舞天团</p>
            <p>龙舞天团微信公号在传统图文形式的内容输出方面，一直保持在一个比较高的水平。接入酸枣直播后，通过高质量直播内容的输出，让龙舞天团品牌和用户的互动更加的多元化。</p>
        </li>
        <li>
            <p>途牛旅游网</p>
            <p>旅游相关内容直播，已经成为途牛内容运营的一个核心业务单元。酸枣为我们提供了轻量化，免开发一键即可接入的音视频直播工具。 酸枣的强大技术研发实力，很好的保障了我们亿级用户的直播体验。</p>
        </li>
        <li>
            <p>健人传媒</p>
            <p>我们举办的全国规模的大型健美大赛，一直都在使用酸枣直播平台。平均每次直播都可以实现10多万元的直播收益，另外通过闪电拉新，平均每次获得新粉丝8万多。</p>
        </li>
        <li>
            <p>国美电器</p>
            <p>国美电器网上商城公众号接入酸枣直播后，更加便捷的去针对不通人群的需求去讲解和发布一些活动，酸枣直播一键接入公众号，快速便捷的解决了很多麻烦的程序。真正达到有效的传播。</p>
        </li>
    </ul>
</div>
<div class="contactBox">
    <div class="left-about">
        <h3>北京龙链科技有限公司</h3>
        <ul>
            <li><img src="__STATIC__img/i-phone.png" alt="">
                <span><a>售前电话：400-876-8756</a><br>
                <a style="    padding-left: 54px;">售后电话：400-116-9269</a></span></li>
            <li><img src="__STATIC__img/i-wx.png" alt=""><span>微信：suanzaozb</span></li>
            <li><img src="__STATIC__img/i-qq.png" alt=""><span>QQ：2570151949</span></li>
            <li><img src="__STATIC__img/i-email.png" alt=""><span>邮箱：2570151949@qq.com</span></li>
            <li><img src="__STATIC__img/i-address.png" alt=""><span>地址：朝阳十八里店尚8京环双创园4楼407</span></li>
        </ul>
    </div>
    <div class="map">
        <h3>The  Company  Map</h3>
        <div style="width:872px;height:400px;border:#ccc solid 1px;" id="dituContent"></div>
    </div>
</div>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }

    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.491935,39.866014);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }

    //标注点数组
    var markerArr = [{title:"朝阳十八里店尚8京环双创园4楼407",content:"朝阳十八里店尚8京环双创园4楼407",point:"116.492452|39.866333",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });

			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://api.map.baidu.com/images/blank.gif", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }

    initMap();//创建和初始化地图
</script>

<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
<script>
    $(function () {
        window.sr = ScrollReveal()
        sr.reveal('.info',{
            origin: 'left',
            distance : '100px',
            duration: 800,
            delay: 150,
            scale: 1.0
        })
            .reveal('.infoPic',{
                origin: 'right',
                distance: '100px',
                duration: 800,
                delay: 150,
                scale: 1.0
            })
            .reveal('.midUl', {
                origin: 'bottom',
                distance: '100px',
                duration: 800,
                delay: 150,
                scale: 1.0
            })
            .reveal('.left-about', {
                origin: 'left',
                distance : '100px',
                duration: 800,
                delay: 150,
                scale: 1.0
            })
            .reveal('#dituContent', {
                origin: 'right',
                distance: '100px',
                duration: 800,
                delay: 150,
                scale: 1.0
            })
    })
</script>