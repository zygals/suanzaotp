{extend name='public:base' /}
{block name="title"}管理员{/block}
{block name="content"}
<div role="tabpanel" class="tab-pane active" id="sour">
    <div class="check-div form-inline">
            <a href="{:url('create')}"><button class="btn btn-yellow btn-xs">添加管理员</button></a>

    </div>
    <div class="data-div">
        <div class="row tableHeader">
            <div class="col-sm-1 ">
                编码
            </div>
            <div class=" col-sm-2 ">
                账号
            </div>
            <div class=" col-sm-1 ">
                姓名
            </div>
            <div class=" col-sm-1 ">
                身份
            </div>
            <div class=" col-sm-2 ">
                创建时间
            </div>
            <div class=" col-sm-1 ">
                状态
            </div>
            <div class="col-sm-">
                操作
            </div>
        </div>
        <div class="tablebody">
			<?php foreach($list_admin as $key=>$admin){?>
                <div class="row" >
                    <div class="col-sm-1">
						<?= $admin['id']?>
                    </div>
                    <div  class="col-sm-2">
                        <span><?= $admin['name']?></span>
                    </div>
                    <div class="col-sm-1">
                        <?= $admin['truename']?>
                    </div>
                    <div class="col-sm-1">
                        <?= $admin['type']?>
                    </div>
                    <div class="col-sm-2">
						<?= $admin['create_time']?>
                    </div>
                    <div class="col-sm-1">
						<?= $admin['st']?>
                    </div>
                    <div class="col-sm-">
                        <?php if($admin['type'] == '超级' ){?>
                            <a href="{:url('edit')}"><button class="btn btn-success btn-xs edit_" >改密</button></a>
                        <?php }else{?>
                            <a href="{:url('edit_')}?id={$admin['id']}"><button class="btn btn-success btn-xs edit_" >修改</button></a>
                            <button class="btn btn-danger btn-xs del_cate" data-toggle="modal" data-target="#deleteSource" data-id="<?= $admin['id']?>" onclick="del_(this)"> 删除</button>
                        <?php }?>
                    </div>
                </div>
			<?php }?>
        </div>
    </div>
</div>

    <!-- /.modal -->
    <!--弹出删除资源警告窗口-->
    <div class="modal fade" id="deleteSource" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" >提示</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        确定要删除该资源？删除后不可恢复！
                    </div>
                </div>
                <div class="modal-footer">
                    <form method="post" action="{:Url('admin/delete')}">
                        <input type="hidden" name="id" value="" id="del_id" />
                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                        <button type="submit" class="btn btn-xs btn-danger">确 定</button>
                    </form>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<script>
    $(function () {
        $('#form_a,#form_u').bootstrapValidator({
            fields: {
                name: {
                    validators:
                    {
                        notEmpty: {
                             message: '用户名不能为空'
                        },
                        stringLength: {
                                min: 3,
                                max: 20,
                                message: '用户名长度必须在3到20位之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                                message: '用户名只能包含大写、小写、数字和下划线'
                        }
                    }

                },
                pass: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 32,
                            message: '密码长度为6－32位'
                        },

                    }
                },
                pass2: {
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空'
                        },
                        identical: {
                            field: 'pass',
                            message: '两次密码不一致'
                        }
                    }
                }
            }
        });

    });

    //delete
    $('.del_').bind('click',function () {
        var id = $(this).attr('data-id');
        $('#del_id').val(id);
    });

</script>
{/block}
