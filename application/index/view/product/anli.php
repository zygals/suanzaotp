<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>酸枣-专注于微信公众号直播|内容付费与社群变现的微课堂工具</title>
    <link rel = "Shortcut Icon" href="./img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link rel="stylesheet" href="css/swiper-3.4.2.min.css">
    <script src="js/jquery-2.0.3.js"></script>
    <script src="js/swiper-3.4.2.jquery.min.js"></script>
</head>
<body>
    <div class="show-anli">
        <h2>新闻资讯</h2>
        <div class="news-cont">
            <ul class="news-title">
                <li class="news-active">品牌热点</li>
                <li>酸枣动态</li>
                <li>常见问题</li>
                <li>行业动态</li>
                <img src="__STATIC__/img/line.png" alt="">
            </ul>
            <ul class="news-list" style="display: block;">
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="">
                            <p>34个选举单位十九大代表名单公布</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>2017-5-21</span>
                    </div>
                </li>
            </ul>
            <div class="pagination">
                <span>&lt;</span>
                <a class="p-active">1</a>
                <a>2</a>
                <a>3</a>
                <span>&gt;</span>
            </div>
        </div>
    </div>
</body>
<script>
    $(function(){
        $('.news-title li').click(function(){
            $('.news-title li').removeClass('news-active');
            $(this).addClass('news-active');
            $('.news-list').fadeOut(200);
            $('.news-list').eq($(this).index()).fadeIn(200);
        })
    });
</script>
</html>