<?php

namespace app\index\controller;

use app\common\model\Ad;
use app\common\model\Article;

use app\common\model\Cate;
use app\common\model\SeoSet;
use think\Controller;
use think\Request;

class Anli extends Base {
    public function __construct(Request $request = null) {
        parent::__construct($request);
//        $row_ad = Ad::getAdByPosition(4);
//        $this->assign(['row_ad' => $row_ad]);
    }

    public function index() {
        $list_ad = Ad::getAdsByPosition(4);
       $list_anli = Article::getList(['tp'=>2],['article.st'=>1]);
       $list_cate = Cate::getList(['tp'=>2]);
        $seo = SeoSet::getSeoByNavId(6);
        $currentPage = $list_anli->currentPage();
        $lastPage = $list_anli->lastPage();
     /*dump($list_anli->currentPage());
     dump($list_anli->lastPage());
     exit;*/
        return $this->fetch('', compact('list_ad','list_anli','currentPage','lastPage','list_cate','seo'));
    }

    public function ajax_anli(Request $request){
        $data = $request->param();
        $cate_id = 0;
        if (isset($data['cate_id']) && !empty($data['cate_id'])) {
            $cate_id = $data['cate_id'];
        }
        $list_news = Article::getList(['tp'=>2,'cate_id' => $cate_id,], ['article.st' => 1]);
        if(count($list_news)>0){

            return json(['code'=>0,'data'=>compact('list_news')]);
        }else{
            return json(['code'=>1,'msg'=>'暂无数据','data'=>'']);
        }
    }
   public function read(Request $request){
        $data = $request->param();
        $row_anli = \app\common\model\Anli::getOne($data['anli_id']);
        if(!$row_anli){
            $this->error('暂无数据');
        }
       $seo = (object)[
           'title'=>$row_anli->name.'_'.$row_anli->cate_name.'_'.'品牌案例'.'_'.config('site_name'),
           'keywords'=>$row_anli->keywords,
           'description'=>$row_anli->description,
       ];
       return $this->fetch('', compact('row_anli','seo'));
   }


}
