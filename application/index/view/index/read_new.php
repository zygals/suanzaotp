<style>

    .articleBox {
        max-width: 800px;
        margin:0 auto;
        margin-top:60px;
    }
    .a-title {
        margin-top: 30px;
        font-size: 36px;
        font-weight: 300;
        color: #444;
        text-align: left;
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
        width: 100%;
    }

    .a-cont p {
        margin: 40px 0;
        line-height: 35px;
        font-size: 18px;
        text-align: left;
        text-indent: 30px;
        color: #444;
    }

</style>
<div class="articleBox">
    <h2 class="a-title">{$row_->name}</h2>
    <p class="a-time">{$row_->create_time}</p>
    <div class="a-cont">
        {$row_->cont}
    </div>
</div>
