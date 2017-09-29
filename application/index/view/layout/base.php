<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>{$seo->title}</title>
    <meta name="keywords" content="{$seo->keywords}">
    <meta name="description" content="{$seo->description}">
    <link rel="Shortcut Icon" href="__STATIC__img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="__STATIC__css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__css/index.css"/>
    <link rel="stylesheet" href="__STATIC__css/swiper-3.4.2.min.css">
    <script src="__STATIC__js/jquery-2.0.3.js"></script>
    <script src="__STATIC__js/swiper-3.4.2.jquery.min.js"></script>
</head>
<body>
<div class="wrapper">
    {include file="layout/nav"}

    {__CONTENT__}


  {include file="layout/footer"}
</div>

</body>
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
<script>
    //var _hmt = _hmt || [];
    //(function() {
    //  var hm = document.createElement("script");
    //  hm.src = "https://hm.baidu.com/hm.js?302a5cf99fe1e8b14bd879aba90f1341";
    //  var s = document.getElementsByTagName("script")[0];
    //  s.parentNode.insertBefore(hm, s);
    //})();
</script>

</html>