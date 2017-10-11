<?php

namespace app\common\model;


class Article extends Base {

    public function getStAttr($value) {
        $status = [0 => 'deleted', 1 => '正常', 2 => '不显示'];
        return $status[$value];
    }
    public function getTpAttr($value) {
        $status = [1 => '资讯', 2 => '案例'];
        return $status[$value];
    }

    public static function getListByCateId($cate_id) {
        return self::getList(['cate_id'=>$cate_id]);
    }

    public function getIndexShowAttr($value) {
        $status = [0 => '否', 1 => '是'];
        return $status[$value];
    }

    public static function getList($data = [], $where = ['article.st' => ['<>', 0]], $limit = 0) {
        $filed = 'article.*,cate.name cate';
        $order = "article.create_time desc";
        if (!empty($data['cate_id'])) {
            $where['cate_id'] = $data['cate_id'];
        }
        if (!empty($data['tp'])) {
            $where['article.tp'] = $data['tp'];
        }

        if (!empty($data['name'])) {
            $where['article.name'] = ['like', '%' . $data['name'] . '%'];
        }

        if (!empty($data['index_show'])) {
            $where['index_show'] = $data['index_show'];
        }

        if (!empty($data['paixu'])) {
            $order = 'article.' . $data['paixu'] . ' asc';
        }
        if (!empty($data['paixu']) && !empty($data['sort_type'])) {
            $order = 'article.' . $data['paixu'] . ' desc';
        }
        if ($limit > 0) {
//            dump(12314);
            $filed =  "article.id,article.name,article.index_show,article.img,left(article.charm,55) cont,cate.name cate";
            if($limit==1){
                $filed =  "article.id,article.name,article.index_show,article.img,left(article.charm,88) cont,cate.name cate";
            }
            $list_ = self::where($where)->join('cate', 'cate.id=article.cate_id')->field($filed)->limit($limit)->order($order)->select();
        } else {

            $list_ = self::where($where)->join('cate', 'cate.id=article.cate_id')->field($filed)->order($order)->paginate(5);
        }

        return $list_;
    }

    public static function findOne($id) {
        return self::where(['id' => $id, 'st' => 1])->find();
    }

    public function getCateId($cate_name) {
        $status = ['媒体报道' => 1, '行业资讯' => 2, '企业动态' => 3];
        return $status[$cate_name];
    }
}
