<div class="header">
    <div class="headbox clearfix">
        <a href="#">
            <img src="__STATIC__img/LOGO.png" alt="" class="head-logo">
        </a>
        <ul>
            <li><a href="{:url('index/index')}" style="<?php if(request()->controller()=='Index'){?>color:rgb(32,112,251);<?php }?>">首页</a></li>
            <li><a href="{:url('product/index')}" style="<?php if(request()->controller()=='Product' && request()->action()=='index'){?>color:rgb(32,112,251);<?php }?>">产品体验</a></li>
            <li><a href="{:url('product/anli')}">新闻资讯</a></li>
            <li><a href="https://suanzao.llkeji.com/pc/login">直播间后台</a></li>
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