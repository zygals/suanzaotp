<div class="return-top">
    <figure>
        <img src="__STATIC__img/top.png" alt="">
    </figure>
</div>
<div class="wrapper">
<div class="footer">

    <div class="footcont clearfix">
        <ul>
            <li>
                <p>产品</p>
                <a href="{:url('product/index')}">产品体验</a>
                <a href="__IMGURL__/index/read_new/id/44.html">使用教程</a>
            </li>
            <li>
                <p>公司</p>
                <a href="{:url('about/index')}">关于酸枣</a>
                <a href="{:url('product/news')}">行业动态</a>
            </li>
            <li>
                <p>服务</p>
                <a href="javascript:void(0)">7x12小时售后</a>
                <a  href="javascript:void(0)">1V1竭诚服务</a>
            </li>
            <li>
                <p>联系方式</p>
                <a>售前电话 400-876-8756</a>
                <a>售后电话 400-116-9269</a>
            </li>
        </ul>
        <div class="ewmPic">
            <div class="ewmPic-pig"></div>
            <p>关注酸枣公众号</p>
        </div>
        <div class="ewmPic">
            <div class="ewmDown-pig"></div>
            <p>APP下载</p>
        </div>
        <!--<div class="download">
            <h4>App下载</h4>
            <a href="{:url('index/downfile')}?path={$row_file_apple->path}">
                <img src="__STATIC__img/ios.png" alt="" class="ios">
            </a><br>
            <a href="{:url('index/downfile')}?path={$row_file_andorid->path}">
                <img src="__STATIC__img/andriod.png" alt="" class="android">
            </a>
        </div>-->
        <div class="call">

            <p>华龙股份 股票代码 870893</p>
        </div>
    </div>
    <?php if(request()->controller()=='Index' && request()->action()=='index'){?>
    <div class="friend">
        <p>友情链接:</p>
        <ul class="clearfix">
            <?php foreach ($list_friend as $row_){?>
            <li><a href="{$row_->url}" target="_blank">{$row_->name}</a></li>
           <?php }?>
        </ul>
    </div>
    <?php }?>

</div>
<div class="record">
    <p>北京龙链科技有限公司|关于我们|隐私政策</p>
    <p>Copyright © 1998 - 2017 Suanzao.Com.Cn All Rights|京公网安备11010502033423号 </p>
     <p>不良信息举报中心|网络违法举报网站|12318 全国文化市场举报网站</p>
    <p>公安部网络违法犯罪举报网站热线0731-81872901 举报邮箱：jubao@inke.cn</p>
</div>
<p class="pcText">
    粤ICP备15103069号-1

 
    <!--百度商桥:-->
    <script type="text/javascript"> var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F7bcde2c14c5efc40af53283bc26e2f76' type='text/javascript'%3E%3C/script%3E")) </script>
    
</p>
</div>
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
<script>


    //		function wind(){
    //			window.open("http://p.qiao.baidu.com/im/index?siteid=11050317&ucid=21501345&cp=&cr=&cw=")
    //		}
    //
    //		$(".admission").click(function(){
    //			$(this).addClass("on");
    //		})
    $(function () {
        var mySwiper = new Swiper('.swiper-container', {
            autoplay: 3000,
            autoplayDisableOnInteraction: false,
            speed: 1500,
            loop: true,
            effect: 'fade',
            // 如果需要分页器
            pagination: '.swiper-pagination',
            paginationClickable: true,
            // 如果需要前进后退按钮
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',

        });
    })



    $(function () {
        function zoomScene(self) {
            $('.bg').removeClass('erase-bg', {duration: 500});
            self.find('.bg').addClass('erase-bg', {duration: 500});
            self.siblings('.slide-door li').removeClass('big')
            self.addClass('big', {duration: 500})

            $('.img-wrapper').addClass('preview');
            self.find('.img-wrapper').removeClass('preview');
        }

        $('.slide-door li').unbind().hover(function () {
            var self = $(this)
            zoomScene(self)
        })
        zoomScene($('.slide-door li').first())
    })
</script>