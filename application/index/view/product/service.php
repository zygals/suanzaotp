{include file="layout/head2"}
<!-- 头部 -->
{include file="layout/nav"}

<div class="banner">
    <ul class="banner_box">
        <?php foreach($list_ad as $row_){?>
            <li style="opacity: 1;filter:alpha(opacity=100);">
                <a   <?php echo \app\common\model\Ad::urlOpen($row_->url,$row_->new_window)?>  style="background:url(__IMGURL__{$row_->img}) center top no-repeat">

                </a>
            </li>
        <?php }?>


    </ul>
</div>
<!-- service -->
<div class="service w1200">
    <h3>多种版本供您选择</h3>
    <h4>基础直播服务+闪电拉新服务，帮助您的微信公众号快速增收涨粉</h4>
    <ul>
        <li class="color_1">
            <div class="service_top">
                <h5>基本版</h5>
                <p>功能费：0元／年</p>
                <a href="#">免费开通</a>
            </div>
            <div class="border">
                <span class="on">付费内容载体：音频、视频</span>
                <span class="on">付费形式：单节课、系列课</span>
                <span class="on">运营管理：内容、用户关系、财务</span>
                <span class="on">数据分析：营收趋势、用户活跃度等</span>
                <span class="on">邀请卡</span>
                <span class="on">评论互动</span>
                <span class="on">首页名称自定义</span>
                <span class="on">视频+语音直播</span>
                <span class="not">用户定向推送</span>
                <span class="not">定时直播，随时回放</span>
            </div>
        </li>
        <li class="color_2">
            <div class="service_top">
                <h5>专业版</h5>
                <p>功能费：3999元／年</p>
                <a href="#">立即开通</a>
            </div>
            <div class="border">
                <span class="on">付费内容载体：音频、视频</span>
                <span class="on">付费形式：单节课、系列课</span>
                <span class="on">运营管理：内容、用户关系、财务</span>
                <span class="on">数据分析：营收趋势、用户活跃度等</span>
                <span class="on">邀请卡</span>
                <span class="on">评论互动</span>
                <span class="on">首页名称自定义</span>
                <span class="on">视频+语音直播</span>
                <span class="on">用户定向推送</span>
                <span class="on">定时直播，随时回放</span>
            </div>
        </li>
        <li class="color_3">
            <div class="service_top">
                <h5>至尊版</h5>
                <p>功能费：8888元／年</p>
                <a href="#">立即开通</a>
            </div>
            <div class="border">
                <span class="on">付费内容载体：音频、视频</span>
                <span class="on">付费形式：单节课、系列课</span>
                <span class="on">运营管理：内容、用户关系、财务</span>
                <span class="on">数据分析：营收趋势、用户活跃度等</span>
                <span class="on">邀请卡</span>
                <span class="on">评论互动</span>
                <span class="on">首页名称自定义</span>
                <span class="on">视频+语音直播</span>
                <span class="on">用户定向推送</span>
                <span class="on">定时直播，随时回放</span>
            </div>
        </li>
    </ul>
</div>
<!-- cooperation -->
<div class="cooperation">
    <div class="w1200">
        <h3>合作扶持</h3>
        <p>
            <strong>优惠大礼包</strong>
            <span>微信公众号嵌入式合作扶持计划，正在火热进行中，为您准备了，多重优惠大礼包<br>
			凡是有一定用户基数的微信公众号均可申请详情咨询客服：400-876-8756</span>
        </p>
    </div>
</div>
<!-- footer -->
{include file="layout/footer"}
<script type="text/javascript" src="__STATIC__js/jquery.yx_rotaion.js"></script>
<script type="text/javascript">
    $(function(){
        $(".banner").banner({
        });
    })
</script>
<script type="text/javascript"> var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F302a5cf99fe1e8b14bd879aba90f1341' type='text/javascript'%3E%3C/script%3E")) </script>

<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?302a5cf99fe1e8b14bd879aba90f1341";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

</body>