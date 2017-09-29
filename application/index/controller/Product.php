<?php
namespace app\index\controller;


use app\common\model\Ad;
use app\common\model\Dfile;
use app\common\model\SeoSet;

class Product extends Base
{
    public function index()
    {
        $this->view->engine->layout(false);
        $list_ad = Ad::getAdsByPosition(2);
        $seo = SeoSet::getSeoByNavId(2);
        return $this->fetch('',['list_ad'=>$list_ad,'seo'=>$seo]);
    }
    public function service()
    {
        $this->view->engine->layout(false);
        $seo = SeoSet::getSeoByNavId(5);
        return $this->fetch('',['seo'=>$seo]);
    }

    public function anli(){

        $seo = SeoSet::getSeoByNavId(3);
        return $this->fetch('',['seo'=>$seo]);
    }
    public function houtai(){
        $seo = SeoSet::getSeoByNavId(4);
        return $this->fetch('',['seo'=>$seo]);
    }

}
