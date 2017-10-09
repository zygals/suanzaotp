<?php

namespace app\back\controller;

use app\common\model\Dfile;
use think\Request;
use think\Response;


class DfileController extends BaseController {

    public function __construct() {
        parent::__construct();
        $this->assign(['modelName' => '文件下载']);
    }

    public function index(Request $request) {
        $data = $request->param();
        $list_ = Dfile::getList($data);
        $url = $request->url();
        return $this->fetch('', ['list_' => $list_, 'url' => $url]);
    }

    public function create() {

        return $this->fetch('', ['act' => 'save','actname'=>'添加']);
    }

    public function save(Request $request) {
        $data = $request->param();
//        dump($data);exit;
        $res = $this->validate($data, 'FileValidate');
        if ($res !== true) {
            $this->error($res);
        }
        if ($data['pc_ftp'] == 'pc') {
            $file = $request->file('path');
            //  $file = $_FILES;
            /*          dump($file);
                      exit;*/
            if (empty($file)) {
                $this->error('请上传文件或检查大小！');
            }
            $size = $file->getSize();

            $data['size'] = round($size / 1024 / 1024, 2);

            $path_name = 'dfile';
            $arr = $this->dealImg($file, $path_name);
            $data['path'] = $arr['save_url_path'];
        } else {
            if (empty($data['fname'])) {
                $this->error('请填写ftp文件名称！');
            }
            $data['path'] = '/upload/dfile/' . $data['fname'];
        }

        if ((new Dfile())->save($data)) {
            $this->success('添加成功', 'index', '', 1);
        } else {
            $this->error('添加出错');
        }

    }

    public function edit(Request $request) {
        $data = $request->param();
        $referer = $request->header()['referer'];
        //dump($referer);
        $row_ = $this->findById($data['id'], new Dfile());
        return $this->fetch('create', ['row_' => $row_, 'referer' => $referer, 'act' => 'update','actname'=>'修改']);

    }

    public function update(Request $request) {
        //return 233;
        $data = $request->param();
        $referer = $data['referer'];
        unset($data['referer']);
        $res = $this->validate($data, 'FileValidate');
        if ($res !== true) {
            $this->error($res);
        }
        if ($data['pc_ftp'] == 'pc') {
            $row_ = $this->findById($data['id'], new Dfile());
            $file = $request->file('path');
            if (!empty($file)) {
                $path_name = 'dfile';
                $size = $file->getSize();
                if ($size > config('upload_size')) {
                    //$this->error('图片大小超过限定！');
                }
                $this->deleteImg($row_->path);
                $arr = $this->dealImg($file, $path_name);
                $data['path'] = $arr['save_url_path'];
                $data['size'] = round($size / 1024 / 1000, 2);
            }
        }else{
            if (empty($data['fname'])) {
                $this->error('请填写ftp文件名称！');
            }
            $data['path'] = '/upload/dfile/' . $data['fname'];
        }


        if ($this->saveById($data['id'], new Dfile(), $data)) {
            $this->success('修改成功', $referer, '', 1);
        } else {
            $this->error('没有修改内容', $referer);
        }
    }

    public function delete(Request $request) {
        $data = $request->param();

        if ($ret = $this->deleteStatusById($data['id'], new Dfile())) {
            $this->deleteImg($ret->path);
            $this->success('删除成功', $data['url'], '', 1);
        } else {
            $this->error('删除失败', $data['url']);
        }
    }

    public function downfile(Request $request) {
        $data = $request->param();
        if (empty($data['path'])) {
            $this->error('文件path不能为空');
        }
        $dfile = ROOT_PATH . 'public/' . $data['path'];
        if (!is_file($dfile)) {
            $this->error('文件不存在');
        }
        $this->redirect(config('view_replace_str.__IMGURL__') . $data['path']);
    }


}
