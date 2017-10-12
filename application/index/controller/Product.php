<?php
namespace app\index\controller;


use app\common\model\Ad;
use app\common\model\Article;
use app\common\model\Cate;
use app\common\model\Dfile;
use app\common\model\SeoSet;
use think\Request;

class Product extends Base {
    public function index() {
        $this->view->engine->layout(false);
        $list_ad = Ad::getAdsByPosition(2);
        $seo = SeoSet::getSeoByNavId(2);
        return $this->fetch('', ['list_ad' => $list_ad, 'seo' => $seo]);
    }

    public function service() {
        $this->view->engine->layout(false);
        $seo = SeoSet::getSeoByNavId(5);
        $list_ad = Ad::getAdsByPosition(4);
        return $this->fetch('', ['seo' => $seo,"list_ad"=>$list_ad]);
    }

    public function news() {
        $list_cate = Cate::getList(['tp' => 1, 'paixu' => 'sort']);
        $list_news = Article::getList([ 'tp' => 1], ['article.st' => 1],0,15);
        $list_ad = Ad::getAdsByPosition(3);
        $seo = SeoSet::getSeoByNavId(3);
        return $this->fetch('', ['seo' => $seo,  'list_ad' => $list_ad,'list_cate' => $list_cate, 'list_news' => $list_news]);
    }

    public function houtai() {
        $seo = SeoSet::getSeoByNavId(4);
        return $this->fetch('', ['seo' => $seo]);
    }

    public function ajax_news(Request $request) {
        $data = $request->param();
        $cate_id = 0;
        if (isset($data['cate_id']) && !empty($data['cate_id'])) {
            $cate_id = $data['cate_id'];
        }
        $list_news = Article::getList(['tp' => 1, 'cate_id' => $cate_id], ['article.st' => 1]);
        if (count($list_news) > 0) {

            return json(['code' => 0, 'data' => compact('list_news')]);
        } else {
            return json(['code' => 1, 'data' => '']);
        }
    }

}
