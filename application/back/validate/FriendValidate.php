<?php
namespace app\back\validate;

use think\Validate;

class FriendValidate extends Validate{
	protected $rule = [
        'name'=>'require',
		'url' =>  'url',



	];
	protected $message  =   [
        'name'   => 'name 不能为空',
		'url'   => '链接不合法',


	];
	protected $scene = [
		//'goodnew'  =>  ['name','cate_id'],

	];

}