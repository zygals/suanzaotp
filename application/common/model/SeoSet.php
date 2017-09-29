<?php

namespace app\common\model;

use think\Model;

class SeoSet extends Model {

    public function getNavIdAttr($value) {
        $status = [ 1 => '首页', 2 => '产品体验',3 => '直播案例',4 => '直播间后台',5 => '购买服务', 6 => '最新动态', 7=> '关于我们'];
        return $status[$value];
    }
 /*   public function getNavId($value){
        $status = [ 1 => '首页', 2 => '业务体系',3 => '品牌案例',4 => '资讯中心',5 => '关于我们', 6 => '渠道与招商'];
        return $status[$value];
    }*/
    public static function getSeoByNavId($nav_id){
        $row_= self::where('nav_id',$nav_id)->order('create_time desc')->find();
        if(!$row_){
            $row_=(object)[
                'title'=>'',
                'keywords'=>'',
                'description'=>'',
            ];
        }
        return $row_;
    }
    public static function getList() {
        $list_ = self::where('')->order('id asc')->select();

        return $list_;
    }
    public static function getNavs() {
        $arr = [
            1 => (object)[
                'id'=>1,
                'name' => '首页',
            ],
            2 => (object)[
                'id'=>2,
                'name' => '产品体验',
            ],
            3 => (object)[
                'id'=>3,
                'name' => '直播案例',
            ],
            4 => (object)[
                'id'=>4,
                'name' => '直播间后台',
            ],
            5 => (object)[
                'id'=>5,
                'name' => '购买服务',
            ],
            6 => (object)[
                'id'=>6,
                'name' => '最新动态',
            ],
            7 => (object)[
                'id'=>7,
                'name' => '关于我们',
            ],

        ];
        return $arr;
    }

}
