<?php

namespace app\back\controller;

use app\common\model\Ad;
use app\common\model\AdminLog;
use app\common\model\MenuAdmin;
use think\Request;
use app\common\model\Admin;
use \think\captcha\Captcha;

class AdminController extends BaseController {
    //admins list
    public function index() {
        //not use layout.html

        $list_admin = Admin::all(['st'=>['<>',0]]);

        return $this->fetch('', ['list_admin' => $list_admin]);
    }

    //login.html
    public function login() {
        //not use layout.html
        //return 214;
        return $this->fetch('');
    }

//weilai888 : 5b94734d0c266fafab796bcdcb20d8a8
    public function sigin(Request $request) {
        $captcha = new Captcha();
        if (!$captcha->check($request->param('captcha'))) {
            $this->error('验证码不正确！');
        }
        $name = $request->param('name');
        $pass = $request->param('pass');

        $pwd = Admin::pwdGenerate($pass);
        // return $pwd;
        $condition = array();
        $condition['name'] = $name;
        $condition['pwd'] = $pwd;
        $admin = Admin::get($condition);
        if($admin->st=='禁用'){
            $this->error('此账号已被禁用！');
        }
        if ($admin) {
            $admin->setInc('times');
            session('admin_suanzao', (object)array('name' => $admin->name, 'id' => $admin->id,'truename'=>$admin->truename,'type'=>$admin->type,'privilege'=>$admin->privilege));
            // $user_ip = $request->ip();
//            dump(session('admin_suanzao'));exit;
            $user_ip = $_SERVER['REMOTE_ADDR'];
            (new AdminLog())->addLog($admin->id, $user_ip);
            $this->redirect("index/index");
        } else {
            $this->error('用户名或密码有误！');
        }
    }

    //captcha
    public function captcha() {
        $captcha = new Captcha(['fontSize' => 16, 'useCurve' => false, 'imageH' => 35, 'imageW' => 100, 'length' => 3, 'useNoise' => false]);
        return $captcha->entry();
    }

    public function logout() {
        session(null);
        $this->redirect('login');
    }

    public function create() {
        $list_power = MenuAdmin::getPower();
        return $this->fetch('', ['list_power' => $list_power]);
    }

    public function save(Request $request) {
        $data = $request->param();

        $rule = ['name' => 'require', 'pass' => 'require', 'repass' => 'require|confirm:pass', 'privilege' => 'require|array'];
        $msg = ['pass' => '密码必须', 'repass' => '重复密码必须', 'name.require' => '账号必须', 'repass.confirm' => '两次密码不一致'];
        $res = $this->validate($data, $rule, $msg);
        if (true !== $res) {
            $this->error($res);
        }
        $data['pwd'] = Admin::pwdGenerate($data['pass']);
        unset ($data['pass'], $data['repass']);
        $data['privilege'] = implode(',', $data['privilege']);
        $data['type'] = 2;
        // dump($data);exit;
        if (!(new Admin())->save($data)) {
            $this->error('添加失败！');
        }
        $this->success('添加成功', 'index', '', 1);
    }

    //修改一般管理员信息：姓名，权限，密码。
    public function edit_(Request $request) {
        $data = $request->param();
        $row_admin = $this->findById($data['id'], new Admin());
        $row_admin->privilege = explode(',', $row_admin->privilege);
        $list_power = MenuAdmin::getPower();

        return $this->fetch('', ['row_admin' => $row_admin, 'list_power' => $list_power]);
    }

    public function update_(Request $request) {
        $data = $request->param();
        $rule = ['name' => 'require', 'repass' => 'confirm:pass', 'privilege' => 'require|array'];
        $msg = ['name.require' => '账号必须', 'repass.confirm' => '两次密码不一致', 'privilege.require' => '权限必须'];
        $res = $this->validate($data, $rule, $msg);
        if (true !== $res) {
            $this->error($res);
        }
//        dump($data);exit;
        if (!empty($data['pass'])) {

            $data['pwd'] = Admin::pwdGenerate($data['pass']);
        }
        unset ($data['pass'], $data['repass']);
        $data['privilege'] = implode(',', $data['privilege']);
        if (!($this->saveById($data['id'], new Admin(), $data))) {
            $this->error('修改失败！');
        }
        $this->success('修改成功', 'index', '', 1);
    }

    //超级管理员（只能）改密码
    public function edit() {

        return $this->fetch('');
    }

    //超级管理员（只能）改密码
    public function update(Request $request) {
        $data = $request->param();
        //dump($data);exit;
        $rule = ['pass' => 'require', 'pass_new' => 'require', 'repass_new' => 'require|confirm:pass_new'];
        $msg = ['pass' => '原始密码必须', 'pass_new' => '新密码必须', 'repass_new.require' => '确认密码必须', 'repass_new.confirm' => '确认密码与新密码不一致'];
        $res = $this->validate($data, $rule, $msg);
        if (true !== $res) {
            $this->error($res);
        }
        $row_ = $this->findById(1, new Admin);
        if (Admin::pwdGenerate($data['pass']) !== $row_->pwd) {
            $this->error('原始密码有误');
        }
        $row_->pwd = Admin::pwdGenerate($data['pass_new']);
        //$data_update=['pwd'=>];
        $row_->save();
        $this->success('修改成功，请用新密码登录', 'logout');
    }
    public function delete(Request $request){
        $data = $request->param();
        if( $this->deleteStatusById($data['id'],new Admin())){
            $this->success('删除成功','index', '', 1);
        }else{
            $this->error('删除失败');
        }
    }

}