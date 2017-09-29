<?php
namespace app\back\validate;

use think\Validate;

class FileValidate extends Validate{
	protected $rule = [
		'tp'  =>  'require|in:1,2',
        'pc_ftp'=>"require|in:pc,ftp",
        //'fname'=>'alphanum'

	];
	protected $message  =   [
		'tp.require' => '文件类型必须',
		'pc_ftp.require' => '上传方式必须',
		'pc_ftp.in' => '上传方式不对',
	];
	protected $scene = [
		//'goodnew'  =>  ['name','cate_id'],

	];

}