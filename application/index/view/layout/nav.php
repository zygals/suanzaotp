<style>
    .father {
        position: relative;
        text-align: center;
    }
    .father .child {
        position: absolute;
        margin:0 auto;
        height: 0;
        left:0;
        top: 60px;
        overflow: hidden;
    }
    .father .child a {
        text-align: center;
    }

    .father .child li {
        float: none;
        opacity: 0;
        background-color: #000;
        transition: all .3s;
    }

    .father .child li:hover {
        color: #000;
        background-color: #fff;
    }

    .father:hover ul{
        overflow: visible;
    }
    .father:hover ul li {
        opacity: 1;
    }
</style>

<div class="header">
    <div class="headbox clearfix">
        <a href="#">
            <img src="__STATIC__img/LOGO.png" alt="" class="head-logo">
        </a>
        <ul>
            <li class="father"><a href="{:url('index/index')}" style="<?php if(request()->controller()=='Index'){?>color:rgb(32,112,251);<?php }?>">首页</a>

            </li>

            <li class="father"><a href="{:url('product/index')}" style="<?php if(request()->controller()=='Product' && request()->action()=='index'){?>color:rgb(32,112,251);<?php }?>">产品体验</a>
                <ul class="child">
                    <li><a href="">直播间</a></li>
                    <li><a href="">直播间趣</a></li>

                </ul>
            </li>
            <li><a href="{:url('product/news')}" style="<?php if(request()->controller()=='Product' && request()->action()=='news'){?>color:rgb(32,112,251);<?php }?>">新闻资讯</a></li>
            <li><a target="_blank" href="https://suanzao.llkeji.com/pc/login">直播间后台</a></li>
            <li><a href="{:url('product/service')}" style="<?php if(request()->controller()=='Product'&& request()->action()=='service'){?>color:rgb(32,112,251);<?php }?>">购买服务</a></li>
            <li><a href="{:url('anli/index')}" style="<?php if(request()->controller()=='Anli'){?>color:rgb(32,112,251);<?php }?>">直播案例</a></li>
            <li><a href="{:url('about/index')}" style="<?php if(request()->controller()=='About'){?>color:rgb(32,112,251);<?php }?>">关于我们</a></li>
            <!--<p>-->
            <!--<span class="admission" onclick="wind()">免费使用</span>-->
            <!--<span>400-896-8756</span>-->
            <!--</p>-->
        </ul>
    </div>
</div>