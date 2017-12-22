{include file="layout/head2"}
<!-- 头部 -->
{include file="layout/nav"}
<div class="wrapper">
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
<!-- service -->
<div class="service w1200">
    <h3>多种版本供您选择</h3>
    <h4>基础直播服务+定向推送服务，帮助您的微信公众号快速增收涨粉</h4>
    <ul>
        <li class="color_1">
            <div class="service_top">
                <h5>个人版</h5>
                <p>功能费：0元／年</br>免费体验</p>
                <a href="http://p.qiao.baidu.com/im/index?siteid=11111618&ucid=21501345&cp=&cr=&cw=">免费开通</a>
            </div>
            <div class="border">
                <span class="on"><b>直播方式：</b>视频直播、语音直播、支持上传课件及视频、<i>电台音频直播</i></span>
                <span class="on"><b>观看权限：</b>付费、免费、加密、试看</span>
                <span class="on"><b>直播嵌入：</b><i>微信公众号</i></span>
                <span class="on"><b>支持课程：</b>单节课、系列课</span>
                <span class="on"><b>开课定义：</b>订时/预约直播、随时回放</span>
                <span class="on"><b>营销推广：</b>社交平台一键分享、邀请卡、分销式裂变、广告链接、<i>消息定向推送、广告位、精选推荐</i></span>
                <span class="on"><b>深层互动：</b>弹幕聊天、禁言/清屏、花样打赏、<i>投票、私信、在线报名</i></span>
                <span class="on"><b>运营管理：</b>内容变现、用户关系、财务统计</span>
                <span class="on"><b>数据分析：</b>直播数据统计、用户来源统计、新增关注量统计、<i>数据可视化</i></span>
                <span class="on"><b>直播终端：</b>手机、PC端摄像头、摄像机、无人机、<i>支持导播切换、支持连麦、支持嘉宾远程实时切换</i></span>
                <span class="on"><b>个性定义：</b><i>消息自定义、直播间权限自定义、LOGO自定义</i></span>
                <span class="on"><b>独享服务：</b>7*12小时咨询服务、<i>专属客户经理、新功能独享服务</i></span>
            </div>
        </li>
        <li class="color_2">
            <div class="service_top">
                <h5>基本版</h5>
                <p>功能费：4800元／年</br>流量不限，享用不尽</p>
                <a href="http://p.qiao.baidu.com/im/index?siteid=11111618&ucid=21501345&cp=&cr=&cw=">立即开通</a>
            </div>
            <div class="border">
                 <span class="on"><b>直播方式：</b>视频直播、语音直播、支持上传课件及视频、<i>电台音频直播</i></span>
                <span class="on"><b>观看权限：</b>付费、免费、加密、试看</span>
                <span class="on"><b>直播嵌入：</b>微信公众号</span>
                <span class="on"><b>支持课程：</b>单节课、系列课</span>
                <span class="on"><b>开课定义：</b>订时/预约直播、随时回放</span>         
                <span class="on"><b>营销推广：</b>社交平台一键分享、邀请卡、分销式裂变、广告链接、消息定向推送、<i>广告位、精选推荐</i></span>
                <span class="on"><b>深层互动：</b>弹幕聊天、禁言/清屏、花样打赏、<i>投票、私信、在线报名</i></span>
                <span class="on"><b>运营管理：</b>内容变现、用户关系、财务统计</span>
                <span class="on"><b>数据分析：</b>直播数据统计、用户来源统计、新增关注量统计、<i>数据可视化</i></span>
                <span class="on"><b>直播终端：</b>手机、PC端摄像头、摄像机、无人机、<i>支持导播切换、支持连麦、支持嘉宾远程实时切换</i></span>
                <span class="on"><b>个性定义：</b>消息自定义、<i>直播间权限自定义、LOGO自定义</i></span>
                <span class="on"><b>独享服务：</b>7*12小时咨询服务、<i>专属客户经理、新功能独享服务</i></span>
            </div>
        </li>
        <li class="color_3">
            <div class="service_top">
                <h5>专业版</h5>
                <p>功能费：8888元／年</br>VIP尊享特权</p>
                <a href="http://p.qiao.baidu.com/im/index?siteid=11111618&ucid=21501345&cp=&cr=&cw=">立即开通</a>
            </div>
            <div class="border">
                 <span class="on"><b>直播方式：</b>视频直播、语音直播、支持上传课件及视频、电台音频直播</span>
                <span class="on"><b>观看权限：</b>付费、免费、加密、试看</span>
                <span class="on"><b>直播嵌入：</b>微信公众号</span>
                <span class="on"><b>支持课程：</b>单节课、系列课</span>
                <span class="on"><b>开课定义：</b>订时/预约直播、随时回放</span>
                <span class="on"><b>营销推广：</b>社交平台一键分享、邀请卡、分销式裂变、广告链接、消息定向推送、广告位、精选推荐</span>
                <span class="on"><b>深层互动：</b>弹幕聊天、禁言/清屏、花样打赏、投票、私信、在线报名</span>
                <span class="on"><b>运营管理：</b>内容变现、用户关系、财务统计</span>
                <span class="on"><b>数据分析：</b>直播数据统计、用户来源统计、新增关注量统计、数据可视化</span>
                <span class="on"><b>直播终端：</b>手机、PC端摄像头、摄像机、无人机、支持导播切换、支持连麦、支持嘉宾远程实时切换</span>
                <span class="on"><b>个性定义：</b>消息自定义、直播间权限自定义、LOGO自定义</span>
                <span class="on"><b>独享服务：</b>7*12小时咨询服务、专属客户经理、新功能独享服务</span>
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