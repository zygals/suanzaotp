<div class="return-top">
    <figure>
        <img src="__STATIC__img/top.png" alt="">
    </figure>
</div>
<div class="footer">
    <div class="footbox">
        <ul class="footul">
            <li>7X12小时售后服务</li>
            <li>0元免费使用</li>
            <li>0上限观看承诺</li>
            <li>1V1竭诚服务</li>
        </ul>
    </div>
    <div class="footcont clearfix">
        <ul>
            <li>
                <p>产品</p>
                <a>开放平台</a>
                <a>闪电拉新</a>
            </li>
            <li>
                <p>公司</p>
                <a>关于酸枣</a>
                <a>最新动态</a>
            </li>
            <li>
                <p>服务</p>
                <a>使用指南</a>
                <a>大V入驻</a>
                <a>客户端下载</a>
            </li>
        </ul>
        <div class="ewmPic">
            <div class="ewmPic-pig"></div>
            <p>微信公众号</p>
        </div>
        <div class="call">
            <p>联系方式：400-876-8756</p>
            <p>华龙股份 股票代码 870893</p>
        </div>
    </div>
    <div class="friend">
        <p>友情链接:</p>
        <ul class="clearfix">
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
            <li><a>微信公众号</a></li>
        </ul>
    </div>
    <div class="download">
        <h4>App下载</h4>
        <a href="{:url('index/downfile')}?path={$row_file_apple->path}">
            <img src="__STATIC__img/ios.png" alt="" class="ios">
        </a><br>
        <a href="{:url('index/downfile')}?path={$row_file_andorid->path}">
            <img src="__STATIC__img/andriod.png" alt="" class="android">
        </a>
    </div>
</div>
<div class="record">
    <p>北京龙链科技有限公司</p>
    <p>Copyright © 1998 - 2017 Suanzao.Com.Cn All Rights </p>
</div>
<p class="pcText">
    粤ICP备15103069号-1
</p>
<script>
    //    返回顶部
    $(function () {

        $('.return-top').hide();

        $(window).scroll(function () {
            $(this).scrollTop() > 600 ? $('.return-top').fadeIn() : $('.return-top').hide();
        })

        $('.return-top').on('click', function (e) {
            e.preventDefault();
            $("html,body").animate({scrollTop: 0}, 600);
        });
    })
</script>
