<?php

namespace app\common\model;

use think\Model;

class Ad extends model {

    public function getStAttr($value) {
        $status = [0 => 'deleted', 1 => '正常', 2 => '不显示'];
        return $status[$value];
    }

    public function getNewWindowAttr($value) {
        $status = [0 => '否', 1 => '是'];
        return $status[$value];
    }

    public function getPositionAttr($value) {
        $status = [1 => '首页', 2 => '产品体验', 3 => '新闻资讯', 4 => '购买服务', 5 => '直播案例', 6 => '关于我们'
        ];
        return $status[$value];
    }

    public static function getAdByPosition($position) {
        $where = ['st' => ['=', 1], 'position' => $position];
        $row_ = self::where($where)->order('create_time desc')->find();
        if (!$row_) {
            return (object)[
                'img' => '',
                'url'=>'',
                'new_window'=>''
            ];
        }
        return $row_;
    }

    public static function getAdsByPosition($position) {
        $where = ['st' => ['=', 1], 'position' => $position];
        $list_ = self::where($where)->order('create_time desc')->select();
        return $list_;
    }

    public static function getList($data=[], $where = ['st' => ['<>', 0]]) {
        $order = 'create_time desc';
        if (!empty($data['position'])) {
            $where['position'] = $data['position'];
        }
        if (!empty($data['title'])) {
            $where['title'] = ['like', '%' . $data['title'] . '%'];
        }
        if (!empty($data['paixu'])) {
            $order = 'ad.' . $data['paixu'] . ' asc';
        }
        if (!empty($data['paixu']) && !empty($data['sort_type'])) {
            $order = 'ad.' . $data['paixu'] . ' desc';
        }
        $list_ = self::where($where)->order($order)->paginate(10);
        return $list_;
    }

    public static function getPositions() {
        $arr = [
            1 => (object)[
                'id' => 1,
                'name' => '首页',
                'width' => '1920',
                'height' => '560',
            ],
            2 => (object)[
                'id' => 2,
                'name' => '产品体验',
                'width' => '1920',
                'height' => '560',
            ],
            3 => (object)[
                'id' => 3,
                'name' => '新闻资讯',
                'width' => '1920',
                'height' => '560',
            ],
            4 => (object)[
                'id' => 4,
                'name' => '购买服务',
                'width' => '1920',
                'height' => '560',
            ],
            5 => (object)[
                'id' => 5,
                'name' => '直播案例',
                'width' => '1920',
                'height' => '560',
            ],
            6 => (object)[
                'id' => 6,
                'name' => '关于我们',
                'width' => '1920',
                'height' => '560',
            ],


        ];
        return $arr;
    }




    public static function urlOpen($url, $new_window) {
        $str = '';
        if (!empty($url)) {
            $str .= "href='$url'";
            if ($new_window == '是') {
                $str .= " target='_blank'";
            }
        }


        return $str;
    }

}
