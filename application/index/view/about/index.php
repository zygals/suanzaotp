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
        <p>通过利用酸枣的基础直播服务和闪电拉新服务帮助自媒体解决内容变<br>现，付费转化等各项需求</p>
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
            <li><img src="__STATIC__img/i-phone.png" alt=""><span>咨询热线：400-876-8756</span></li>
            <li><img src="__STATIC__img/i-wx.png" alt=""><span>微信：suanzaozb</span></li>
            <li><img src="__STATIC__img/i-qq.png" alt=""><span>QQ：2570151949</span></li>
            <li><img src="__STATIC__img/i-email.png" alt=""><span>邮箱：2570151949@qq.com</span></li>
            <li><img src="__STATIC__img/i-address.png" alt=""><span>地址：朝阳十八里店尚8京环双创园4楼407</span></li>
        </ul>
    </div>
    <div class="map">
        <h3>The  Company  Map</h3>
        <img src="__STATIC__img/map.png" alt="">
    </div>
</div>