{include file="layout/head2"}

<script>
    $(function () {
        $('.product .hd li').click(function () {
            $('.product .hd li').removeClass('on');
            $(this).addClass('on');
            $('.product .bd .item').hide();
            $('.product .bd .item').eq($(this).index()).show();
        })
    });
</script>
{include file="layout/nav"}
<!-- 头部 -->

<!-- banner -->
<div class="wrapper">
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
    <!-- box1 -->
    <div class="product">
        <div class="hd">
            <ul class="">
                <li class="n1 on">基础直播</li>
                <li class="n2">定向推送</li>
                <li class="n3"><a href="__IMGURL__/index/read_new/id/44">酸枣使用教程</a></li>
            </ul>
        </div>
        <div class="bd">
            <div class="porduct_1 item" style="display:block;">
                <div class="p1">
                    <div class="w1200">
                        <dl>
                            <dt>多设备接入微信公众号</dt>
                            <dd>操作便捷：轻量化、免开发一键即可接入微信公号的直播工具
                            </dd>
                            <dd><b style="font-weight:bold;font-size:18px;">互动方式：</b>各种打赏分销邀请卡（调动观众参与热情，增强活动的互动性和趣味性）问答、问卷、投票（直播中实时解决观众疑问、问卷和投票协助主办方完成市场调查。
                            </dd>
                        </dl>
                        <div class="img"><img src="__STATIC__images/img01.png"></div>
                    </div>
                </div>
                <div class="p2">
                    <div class="w1200">
                        <div class="img"><img src="__STATIC__images/img03.png"></div>
                        <dl>
                            <dt>音频、视频同步直播</dt>
                            <dd>
                                直播方式：直播+互动 文字+配图
                            </dd>
                            <dd>
                                直播形式：多种直播形式，无人数限制、近距离、强互动式学习    直播形式分为：语音直播    视频直播    录播直播 、ppt直播   群聊直播
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="p3">
                    <div class="w1200">
                        <dl>
                            <dt>丰富的互动方式</dt>
                            <dd>与老师面对面实时交流，解决困惑<br>
                                多场景互动，调动热情增加趣味<br>
                                开课提醒，“老师”再也不用担心我迟到了！
                            </dd>
                        </dl>
                        <div class="img"><img src="__STATIC__images/img04.png"></div>
                    </div>
                </div>
            </div>
            <div class="porduct_2 item">
                <div class="p4">
                    <div class="w1200">
                        <div class="img"><img src="__STATIC__images/img05.png"></div>
                        <dl>
                            <dt>获取用户</dt>
                            <h2>· 海量精准用户</h2>
                            <dd>开播前24小时，基于直播预告，将拉新海报，<br>
                                在朋友圈进行裂变式传播，快速获取到对直播<br>内容感兴的精准用户。
                            </dd>
                            <h2>· 置顶直播内容</h2>
                            <dd>重点推荐，获取更多用户关注</dd>
                        </dl>

                    </div>
                </div>
                <div class="p5">
                    <div class="w1200">

                        <dl>
                            <dt>分享邀请卡</dt>
                            <h2>· 精准邀约</h2>
                            <dd>微信好友、微信群、朋友圈等方式进行精准要约，带来更多目标客户</dd>
                            <h2>· 广告推荐</h2>
                            <dd>可添加自定义广告，推广品牌和产品</dd>
                        </dl>
                        <div class="img"><img src="__STATIC__img/product3.png"></div>
                    </div>
                </div>
                <div class="p4">
                    <div class="w1200">
                        <div class="img"><img src="__STATIC__img/product2.png"></div>
                        <dl>
                            <dt>在线观看</dt>
                            <h2>· 观看人数</h2>
                            <dd>实时分析直播活动各个时段的人数，优化直播活动发起时间</dd>
                            <h2>· 观看时长</h2>
                            <dd>通过对用户观看时间和次数的分析，优化直播内容的质量</dd>
                            <h2>· 信息收集</h2>
                            <dd>报名签到，轻松 收集报名签到等观看信息</dd>
                            <h2>· 问卷聊天</h2>
                            <dd>快速收集问卷内容，聊天信息，深层次增加互动</dd>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer -->
{include file="layout/footer"}

<script type="text/javascript" src="__STATIC__js/jquery.yx_rotaion.js"></script>
<script type="text/javascript">
    $(function () {
        $(".banner").banner({});
    })
</script>


<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?302a5cf99fe1e8b14bd879aba90f1341";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
