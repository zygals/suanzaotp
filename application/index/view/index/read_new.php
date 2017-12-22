<style>
    .wrapper {
        text-align: left;
    }

    .articleBox {
        max-width: 800px;
        margin:0 auto;
        margin-top:60px;
        line-height: 28px;
    }
    .a-title {
        margin-top: 30px;
        font-size: 36px;
        font-weight: 300;
        color: #444;
        text-align: left;
        line-height: 50px;
    }
    .a-time {
        margin-top: 10px;
        text-align: left;
        color: #999;
    }
    .a-cont {
        margin-top: 20px;
    }
    .a-cont img {
        width : 100%;
    }

//    .a-cont p {
//
//        line-height: 35px;
//        font-size: 18px;
//        text-align: left;
//        text-indent: 30px;
//        color: #444;
//    }

</style>
<div class="articleBox">
    <div class="bread">您所在的位置:<a href="{:url('index/index')}">首页</a> &gt;
        <?php if($row_->tp=='资讯'){?>
        <a href="{:url('product/news')}">新闻资讯</a>
            &gt;<a href="{:url('product/news')}">{$row_->catename}</a>
        <?php }else{?>
        <a href="{:url('anli/index')}">直播案例</a>
            &gt;<a href="{:url('anli/index')}">{$row_->catename}</a>
        <?php }?>
       <!-- &gt;<span>news title...</span>--></div>
    <h2 class="a-title">{$row_->name}</h2>
    <p class="a-time">{$row_->create_time}</p>
    <div class="a-cont">
        {$row_->cont}
    </div>
</div>
