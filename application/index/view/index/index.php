    
    <div class="video-cont" style = 'width:698px;height:392px'>
    <div class="close-btn">x</div>
        <div class="video-play">
            <video id="example_video_1" controls="controls" width="1200px" height="640px">
                <source src="__STATIC__img/suanzao-vedio.mp4" type='video/mp4' />
            </video>
        </div>
    </div>
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <?php foreach ($list_ad as $row_) { ?>
                <div class="swiper-slide"><a <?= \app\common\model\Ad::urlOpen($row_->url, $row_->new_window) ?>><img
                                src="__IMGURL__{$row_->img}" alt="暂无图片"></a></div>
            <?php } ?>

        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination defined-pag"></div>
        <div class="modal-area">
            <div class="left-modal">
                <div class="left-head">立即体验</div>
                <div class="left-child">
                    <img src="__STATIC__img/app-download.png" alt="">
                </div>
            </div>
            <div class="right-modal">观看视频</div>
        </div>
    </div>

    <div class="head-wrap">
        <div class="headBox">
            <h4>专注于移动端更高效的网络培训课堂！</h4>
            <p class="p-head">多设备接入微信公众号，音视频同步直播，让直播更立体。</p>
            <ul class="conlumn clearfix">
                <li>
                    <img src="__STATIC__img/livebg.png" alt="">
                    <p class="p-one">多样化的变现方式自由选择,<br>获取内容更大价值。</p>
                    <div class="pos">
                        <img src="__STATIC__img/live.png" alt="">
                        <p>内容多样</p>
                        <p>快速变现</p>
                    </div>
                </li>
                <li>
                    <img src="__STATIC__img/sharebg.png" alt="">
                    <p class="p-one">一键接入微信公众号，<br>快速增收涨粉</p>
                    <div class="pos pos-bottom">
                        <img src="__STATIC__img/share.png" alt="">
                        <p>对接微信公众号,
                        <p>实现快速营销
<!--                        <p>一键分享</p>-->
                    </div>
                </li>
                <li>
                    <img src="__STATIC__img/interactbg.png" alt="">
                    <p class="p-one">多场景互动，调动热情增加趣味<br>开课提醒，精彩内容不荣错过</p>
                    <div class="pos">
                        <img src="__STATIC__img/interact.png" alt="">
                        <p>多场景直播</p>
                        <p>花样互动</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="headBox">
                    <h4>企业级直播解决方案，想你所想</h4>
                    <p class="suanzao">酸枣直播，帮助企业用 10%的成本 创造100+倍的传播价值</p>
        </div>
    </div>
    <div class="liveBox">
        <div id="slide">
            <ul class="slide-door clearfix">
                <li>
                    <div class="bg erase-bg"></div>
                    <div class="inner">
                        <div class="img-wrapper">
                            <p>教育培训</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="bg"></div>
                    <div class="inner">
                        <div class="img-wrapper">
                            <p>峰会直播</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="bg"></div>
                    <div class="inner">
                        <div class="img-wrapper">
                            <p>企业直播</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="bg"></div>
                    <div class="inner">
                        <div class="img-wrapper">
                            <p>微信直播</p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="contBox">
        <h3>五步快速设置，即刻开始授课</h3>
        <p class="ftirle">酸枣直播,与微信打通,全终端流畅观看,免开发一键接入</p>
        <p class="ftirle">快速创建微信直播间,无需服务器,无需懂程序,无需大量维护</p>
        <ul class="contUl">
            <li>
                <img src="__STATIC__img/zc.png" alt="">
                <span>注册账户</span>
            </li>
            <li>
                <img src="__STATIC__img/kk.png" alt="">
                <span>点击开课</span>
            </li>
            <li>
                <img src="__STATIC__img/zl.png" alt="">
                <span>资料提交</span>
            </li>
            <li>
                <img src="__STATIC__img/xz.png" alt="">
                <span>配置课程</span>
            </li>
            <li>
                <img src="__STATIC__img/sk.png" alt="">
                <span>开始上课</span>
            </li>
        </ul>

        <h4>一键接入，让你的微信公众号秒变“直播间”</h4>
        <div class="zsPic"></div>
        <div class="bannerBtn contBtn">
            <p onclick="wind()"><a target="_blank" href="
http://p.qiao.baidu.com/im/index?siteid=11444473&ucid=21501345&cp=&cr=&cw= ">点击咨询酸枣客服</a></p>
            <div onclick="wind()" class='right-wrap'>免费试用酸枣直播
                <ul class="right-child">
                    <li><img width="150" src="__STATIC__img/app-download.png" alt=""></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="range">
        <div class="range-center">
            <h1>热门应用场景</h1>
            <ul class="rangBox">
                <li>
                    <p>培训行业</p>
                    <span>教育培训</span>
                    <span>线上网课</span>
                    <span>远程教育</span>
                    <span>在线课堂</span>
                </li>
                <li>
                    <p>企业直播</p>
                    <span>营销直播</span>
                    <span>产品发布</span>
                    <span>活动直播</span>
                    <span>员工培训</span>
                </li>
                <li>
                    <p>峰会直播</p>
                    <span>金融证券</span>
                    <span>大会直播</span>
                    <span>营销直播</span>
                    <span>渠道大会</span>
                </li>
                <li>
                    <p>微信直播</p>
                    <span>赛事/互娱直播</span>
                    <span>微课堂直播</span>
                    <span>日常沟通直播</span>
                    <span>微信公众号直播 </span>
                </li>
            </ul>
        </div>
    </div>
    <div class="midBox">
        <h3>他们都在用酸枣</h3>
        <ul class="midUl">
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
    <div class="sizeBox">
        <div class="range-center">
            <h3>即刻开始：用直播实现价值</h3>
            <p class="sizetitle">创新在线学习模式，引领直播课堂潮流</p>
            <div class="bannerBtn contBtn">
                <p onclick="wind()"><a target="_blank" href="http://p.qiao.baidu.com/im/index?siteid=11444473&ucid=21501345&cp=&cr=&cw=">在线直播点击咨询</a></p>
                <div onclick="wind()" class='right-wrap'>免费体验系统
                                <ul class="right-child">
                                    <li><img width="150" src="__STATIC__img/app-download.png" alt=""></li>
                                </ul>
                            </div>
            </div>
        </div>
    </div>
    <div class="newsBox headBox">
        <h4>新闻资讯</h4>
        <p class="news-p">众多资讯,就在这里</p>
        <ul class="news clearfix">
            <a onclick="get_news(0,this)">
                <li style="background: #666;color:white;">全部资讯</li>
            </a>
            <?php foreach ($list_cate as $row_) { ?>
                <a onclick="get_news({$row_->id},this)">
                    <li>{$row_->name}</li>
                </a>
            <?php } ?>

        </ul>
        <div class="new-cont">
            <ul class="left-news" id="left_news">
                <?php foreach ($list_news_index as $k => $row_) {if($k==0)continue;?>
                    <li>
                        <a href="<?php echo url("/index/index/read_new/id/$row_->id");?>">
                            <img src="__IMGURL__{$row_->img}" alt="">
                        </a>
                        <div class="news-tit">

                            <a href="<?php echo url("/index/index/read_new/id/$row_->id");?>">
                                <h4 class="no_wrap" title="{$row_->name}">{$row_->name}</h4>
                                <p>{$row_->cont}......
                                </p>
                            </a>
                        </div>
                    </li>

                <?php } ?>
            </ul>
            <div class="right-news" id="right_news">
<?php if(count($list_news_index)>0){?>
                <a href="<?php echo url("/index/index/read_new/id/".$list_news_index[0]->id);?>"><img src="__IMGURL__{$list_news_index[0]->img}" alt="">
                <h4 class="no_wrap" title="{$list_news_index[0]->name}">{$list_news_index[0]->name}</h4></a>
                <p>{$list_news_index[0]->cont}......</p>
<?php }?>
            </div>
        </div>
    </div>
    <script>
// ajax get
        function get_news(cate_id, obj) {
            if ($(obj).children('li')[0].style.backgroundColor == 'rgb(102, 102, 102)') {
                return;
            }

            $(obj).children('li').css({"backgroundColor": "#666", "color": "#FFF"});
            $(obj).siblings('a').children().css({"backgroundColor": "#f0f0f0", "color": "#000"})

            $.ajax({
                "url": '{:url("ajax_news")}',
                "data": {
                    "cate_id": cate_id
                },
                success: function (res) {
                    if (res.code == 0) {
                        var str = '';
                        var list_news = res.data.list_news;
                        var i =0;
                        var href_url = '';
                        if(cate_id==0){
                            i=1;
                        }
                        for (; i < list_news.length; i++) {

                            href_url = '__IMGURL__/index/read_new/id/'+list_news[i].id+'.html';
                            str += ' <li><a href="'+href_url+'"><img src="__IMGURL__' + list_news[i].img + '" alt=""></a><div class="news-tit">';
                            str += ' <a href="'+href_url+'">';
                            str += ' <h4 class="no_wrap" title="' + list_news[i].name + '">' + list_news[i].name + '</h4><p>' + list_news[i].cont + '...... </p>';
                            str += '</a></div></li>';
                        }

                        $('#left_news').html(str);


                    } else {
                        $('#left_news').html('');
                    }


                }
            });
        }
    </script>
    <script type="text/javascript">
        $(function () {
            $('.right-modal').on('click',function () {
                $('.video-cont').show();
                $('video').get(0).play();
            })
            $('.close-btn').on('click',function () {
                        $('.video-cont').hide();
                        $('video').get(0).pause();
                    })
        })


    </script>

