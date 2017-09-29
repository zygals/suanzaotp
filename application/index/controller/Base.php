<?php
namespace app\index\controller;


use app\common\model\Dfile;
use think\Controller;
use think\Request;

class Base extends Controller {
  public function _initialize() {
      parent::_initialize(); // TODO: Change the autogenerated stub

      $list_andorid= Dfile::getList(['tp'=>1]);
      if(count($list_andorid) == 0){
          $row_file_andorid = (object)['path'=>''];
      }else{

          $row_file_andorid = $list_andorid[0];
      }
      $list_apple= Dfile::getList(['tp'=>2]);
      if(count($list_apple) == 0){
          $row_file_apple = (object)['path'=>''];
      }else{

          $row_file_apple = $list_andorid[0];
      }
      $this->assign(compact('row_file_andorid','row_file_apple'));


  }
}
