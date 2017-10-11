<?php
namespace app\index\controller;

use app\common\model\Ad;
use app\common\model\Article;
use app\common\model\Cate;
use app\common\model\Dfile;
use app\common\model\Friend;
use app\common\model\SeoSet;
use think\Request;

class Index extends Base {
    public function index(Request $request) {
        $data = $request->param();
        $cate_id = 0;

        $list_ad = Ad::getAdsByPosition(1);
        $list_cate = Cate::getList(['tp'=>1,'paixu'=>'sort']);
        $list_news = Article::getList(['tp'=>1,'paixu'=>'sort','index_show'=>['<>',1]], ['article.st' => 1], 4);
        $row_news = Article::getList(['tp'=>1,'index_show'=>1,'paixu'=>'update_time','sort_type'=>'desc'], ['article.st' => 1], 1);
        if(count($row_news)==0){
            $row_news=Article::getList(['paixu'=>'sort'], ['article.st' => 1], 1);
        }

        $list_friend = Friend::getList();
//        dump($row_news);exit;
        $seo = SeoSet::getSeoByNavId(1);
        return $this->fetch('', compact('list_ad', 'list_cate', 'list_news', 'row_news','cate_id','list_friend','seo'));
    }
    public function read_new(Request $request){
        $data = $request->param();
        $row_ = Article::findOne($data['id']);
        if(!$row_){
            $this->error('暂无数据');
        }
        $seo = (object)[
            'title'=>$row_->name.'_'.config('site_name'),
            'keywords'=>$row_->keywords,
            'description'=>$row_->description,
        ];
        return $this->fetch('',['row_'=>$row_,'seo'=>$seo]);
    }

    public function ajax_news(Request $request){
        $data = $request->param();
        $cate_id = 0;
        if (isset($data['cate_id']) && !empty($data['cate_id'])) {
            $cate_id = $data['cate_id'];
        }
        $list_news = Article::getList(['tp'=>1,'cate_id' => $cate_id,'paixu'=>'sort'], ['article.st' => 1], 4);
        if(count($list_news)>0){

            return json(['code'=>0,'data'=>compact('list_news')]);
        }else{
            return json(['code'=>1,'data'=>'']);
        }
    }
    public function downfile(Request $request) {
        $data = $request->param();
        if (!isset($data['path'])) {
            $this->error('文件path不能为空');
        }
        $dfile = ROOT_PATH . 'public/' . $data['path'];
        if (!is_file($dfile)) {
            $this->error('文件不存在');
        }
        $this->redirect(config('view_replace_str.__IMGURL__') . $data['path']);
    }
}
