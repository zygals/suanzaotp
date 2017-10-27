<style>
    .father {
        position: relative;
        text-align: center;
    }

    .father .child {
        position: absolute;
        margin: 0 auto;
        height: 0;
        left: -60px;
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

    .father:hover ul {
        overflow: visible;
    }

    .father:hover ul li {
        opacity: 1;
    }

    .father li:hover .now-child {
        display: block;
    }
</style>

<div class="header">
    <div class="headbox clearfix">
        <a href="#">
            <img src="__STATIC__img/LOGO.png" alt="" class="head-logo">
        </a>
        <ul>
            <li class="father"><a href="{:url('index/index')}"
                                  style="<?php if(request()->controller()=='Index'){?>color:rgb(32,112,251);<?php }?>">首页</a>
            </li>
            <li class="father"><a href="{:url('product/index')}"
                                  style="<?php if(request()->controller()=='Product' && request()->action()=='index'){?>color:rgb(32,112,251);<?php }?>">产品体验</a>
                <ul class="child">
                    <li><a href="">直播间</a></li>
                    <li><a href="">直播间趣</a></li>
                </ul>
            </li>
            <li><a href="{:url('product/service')}"
                   style="<?php if(request()->controller()=='Product'&& request()->action()=='service'){?>color:rgb(32,112,251);<?php }?>">购买服务</a>
            </li>
            <li><a href="{:url('product/news')}"
                   style="<?php if(request()->controller()=='Product' && request()->action()=='news'){?>color:rgb(32,112,251);<?php }?>">新闻资讯</a>
            </li>
            <li><a href="{:url('anli/index')}"
                   style="<?php if(request()->controller()=='Anli'){?>color:rgb(32,112,251);<?php }?>">直播案例</a></li>
            <li><a href="{:url('about/index')}"
                   style="<?php if(request()->controller()=='About'){?>color:rgb(32,112,251);<?php }?>">联系我们</a></li>
            <!--<p>-->
            <!--<span class="admission" onclick="wind()">免费使用</span>-->
            <!--<span>400-896-8756</span>-->
            <!--</p>-->
        </ul>
        <ul class='login'>
            <li><a target="_blank" href="https://suanzao.llkeji.com/pc/login">登录</a></li>
            <li class="father"><a target="_blank" href="javascript:void(0)">免费注册</a>
                <ul class="child">
                    <li><img width="150" src="__STATIC__img/软件下载二维码.png" alt=""></li>
                </ul>
            </li>
        </ul>
    </div>
</div>