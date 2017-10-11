<div class="show-anli">
    <h2>新闻资讯</h2>
    <div class="news-cont">
        <ul class="news-title">

            <li class="news-active" data_id="0">全部资讯</li>
            <?php foreach ($list_cate as $row_) { ?>
                <li class="" data_id="{$row_->id}">{$row_->name}</li>
            <?php } ?>

            <img src="__STATIC__/img/line.png" alt="">
        </ul>

        <ul class="news-list" id="list_news">
            <?php foreach ($list_news as $row_) { ?>
                <li>
                    <div class="left-news">
                        <img src="__STATIC__/img/s-icon.png" alt="">
                        <a href="{:url('index/read_new')}?id={$row_->id}">
                            <p>{$row_->name}</p>
                        </a>
                    </div>
                    <div class="news-time">
                        <span>{$row_->create_time}</span>
                    </div>
                </li>
            <?php } ?>
        </ul>
        <div class="pagination" id="page_wrap">

        </div>
    </div>
</div>

<script>
    //生成分页数量
    var pageNow=1;
    function page_str(cate_id, lastPage) {
        var page_str = '  <span id="prevPage" style="display: none;" onclick="prevPage('+cate_id+')">&lt;</span> ';
        for (var i = 1; i <= lastPage; i++) {
            if (i == 1) {
                page_str += '<a onclick="cur_page(this,' + cate_id + ',1)" class=\"p-active\" >' + i + '</a>';
            } else {
                page_str += '<a onclick="cur_page(this,' + cate_id + ',' + i + ')" >' + i + '</a >';
            }
        }
        page_str += '<span id="nextPage" onclick="nextPage('+cate_id+')">&gt;</span>';
        if(lastPage==1){
            page_str='';
        }
        $('#page_wrap').html(page_str);
    }
    page_str(0,<?= $list_news->lastPage()?>);

    function cur_page(obj, cate_id, page) {
        $(obj).addClass('p-active').siblings('a').removeClass('p-active');
        page > 1 ? $('#prevPage').show() : $('#prevPage').hide();

        get_news(cate_id, page, 'bypage');
    }
    function prevPage(cate_id) {
      //alert(pageNow)
        var page = --pageNow <= 0? 1: pageNow;
        page > 1 ? $('#prevPage').show() : $('#prevPage').hide();
        $('#page_wrap').find('a').eq(page-1).addClass('p-active').siblings().removeClass('p-active')
        get_news(cate_id, page, 'bypage');
    }
    function nextPage(cate_id) {
        var page = ++pageNow ;
        page > 1 ? $('#prevPage').show() : $('#prevPage').hide();
        $('#page_wrap').find('a').eq(page-1).addClass('p-active').siblings().removeClass('p-active')
        get_news(cate_id, page, 'bypage');
    }

    function get_news(cate_id, page, type) {
        $.ajax({
            "url": '{:url("ajax_news")}',
            "data": {
                "cate_id": cate_id,
                "page": page
            },
            success: function (res) {
                //console.log(res.data.list_news.data)
                if (res.code == 0) {
                    var str = '';
                    pageNow=res.data.list_news.current_page;

                    var list_news = res.data.list_news.data;
                    var last_page = res.data.list_news.last_page;
                    for (var i = 0; i < list_news.length; i++) {
                        str += '<li><div class="left-news"><img src="__STATIC__/img/s-icon.png" alt="">';
                        str += ' <a href="{:url(\'index/read_new\')}?id=' + list_news[i].id + '"> <p>' + list_news[i].name + '</p>';
                        str += '</a> </div><div class="news-time"><span>' + list_news[i].create_time + '</span> </div></li> ';
                    }
//alert(str)
                    $('#list_news').html(str);
                    if (page == last_page) {
                        $('#nextPage').hide();
                    } else {
                        $('#nextPage').show();
                    }
                    if (type == 'bycate') {
                        page_str(cate_id, last_page);
                    }
                } else {
                    $('.news-list').html('');

                }
            }
        });
    }
    $(function () {
        $('.news-title li').click(function () {
            if ($(this).hasClass('news-active')) {
                return;
            }
            $('.news-title li').removeClass('news-active');
            $(this).addClass('news-active');
            // $('.news-list').fadeOut(200);
            $('.news-list').eq($(this).index()).fadeIn(200);
            get_news($(this).attr('data_id'), 1, 'bycate');
        })
    });
</script>
