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
<div class="show-anli">
    <h2>案例展示</h2>
    <div class="show-cont">
        <ul class="show-title clearfix">
            <li class="active" onclick="getAnliByCate(0,1,this)">全部案例</li>
            <?php foreach ($list_cate as $row_) { ?>
                <li class="" onclick="getAnliByCate({$row_->id},1,this)">{$row_->name}</li>
            <?php } ?>

            <img src="__STATIC__img/line.png" alt="">
        </ul>
        <ul class="show-list" style="display: block;" id="list_anli">
            <?php foreach ($list_anli as $row_) { ?>
                <li>
                    <a href="{:url('index/read_new')}?id={$row_->id}">
                        <img src="__IMGURL__{$row_->img}" alt="">
                        <p>{$row_->name}</p>
                    </a>
                </li>
            <?php } ?>

        </ul>
        <?php if ($currentPage < $lastPage) { ?>
            <button onclick="getMoreAnli()" id="btn_more">加载更多</button>
        <?php } ?>
    </div>
</div>
<script>
    var pageNow = 1;
    var cate_id_ = 0;

    function getMoreAnli() {
        var page = ++pageNow;

        ajax_get_anli(cate_id_, page, 'bypage');
    }
    function getAnliByCate(cate_id, page, obj) {
        if ($(obj).hasClass('active')) {
            return;
        }
        $(obj).addClass('active').siblings().removeClass('active');
        ajax_get_anli(cate_id, page, 'bycate');
    }
    // ajax get
    function ajax_get_anli(cate_id, page, type) {
        $.ajax({
            "url": '{:url("ajax_anli")}',
            "data": {
                "cate_id": cate_id,
                "page": page,
            },
            success: function (res) {
                //alert(res.data)
                if (res.code == 0) {
                    var str = '';
                    var list_news = res.data.list_news.data;
                    cate_id_ = cate_id;
                     pageNow = res.data.list_news.current_page;
                    var lastPage = res.data.list_news.last_page;
                    if (pageNow == lastPage) {
                        $('#btn_more').hide();
                    } else {
                        $('#btn_more').show();
                    }
                    for (var i = 0; i < list_news.length; i++) {
                        str += '  <li><a href="{:url(\'index/read_new\')}?id=' + list_news[i].id + '">';
                        str += ' <img src="__IMGURL__' + list_news[i].img + '" alt="">';
                        str += '<p>' + list_news[i].name + '</p></a> </li>';

                    }
                    if (type == 'bycate') {
                        $('#list_anli').html(str);
                    } else {
                        $('#list_anli').append(str);
                    }

                } else {

                        $('#btn_more').hide();

                    $('#list_anli').html(res.msg);

                }


            }
        });
    }
</script>
