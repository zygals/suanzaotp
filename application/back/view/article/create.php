{extend name='public:base' /}
{block name="title"}{$title}{/block}
{block name="content"}
<style>
    .control-label {
        padding-right: 10px;
    }
</style>
<script>
    KindEditor.ready(function (K) {
        // var editor = K.create('#desc_textarea');
        var editor = K.create('textarea[name="cont"]', {
            themeType: 'simple',
            resizeType: 1,
            uploadJson: '__EDITOR__/php/upload_json.php',
            fileManagerJson: '__EDITOR__/php/file_manager_json.php',
            allowFileManager: true,
            //下面这行代码就是关键的所在，当失去焦点时执行 this.sync();
            afterBlur: function () {
                this.sync();
            }
        });

    });

</script>
<!--弹出添加用户窗口-->
<form id="addForm" class="form-horizontal" action="{:url($act)}" method="post" enctype="multipart/form-data">
    <div class="row">
        <div class="col-xs-8">
            <div class="text-center">
                <!---->
                <h4 class="modal-title" id="gridSystemModalLabel">{$title}</h4>
            </div>
            <div class="">
                <div class="container-fluid">
                    <div class="form-group">
                        <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>类型：</label>
                        <div class="col-xs-8">

                            <select class=" form-control select-duiqi" onchange="getCate(this)" name="tp" id="sel_tp">
                                <option value="1">资讯</option>
                                <option value="2">案例</option>
                            </select>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>分类：</label>
                        <div class="col-xs-8">
                            <select class=" form-control select-duiqi" name="cate_id" id="sel_cate">
                                <?php foreach ($list_cate as $row_) { ?>
                                    <option value="{$row_->id}">{$row_->name}</option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="sName" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>标题：</label>
                        <div class="col-xs-8 ">
                            <input type="text" class="form-control input-sm " name='name' value="" id="" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sOrd" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>缩略图：</label>
                        <div class="col-xs-4 ">
                            <input type="file" title='' class="form-control  duiqi" id="sOrd" name="img" placeholder=""><span
                                    style="color:red">尺寸要求（<b
                                        id="size_tip">476*298</b>），大小不超过<?php echo floor(config('upload_size') / 1024 / 1024); ?>
                                M。</span>
                        </div>

                    </div>
                    <div class="form-group" id="erwei_div" style="display: none;">
                        <label for="sOrd" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>二维码：</label>
                        <div class="col-xs-4 ">
                            <input type="file" title='' class="form-control  duiqi" id="sOrd" name="img_erwei" placeholder=""><span
                                    style="color:red">尺寸要求（<b
                                        id="size_tip">140*140</b>），大小不超过<?php echo floor(config('upload_size') / 1024 / 1024); ?>
                                M。</span>
                        </div>

                    </div>
                    <div class="form-group ">
                        <label for="sName" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>内容：</label>
                        <div class="col-xs-8 ">
                            <textarea name="cont" id="desc_textarea" style="width:800px;height:400px;"></textarea>
                        </div>
                    </div>
                    <div class="form-group " id="charm_area">
                        <label for="sName" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>摘要：</label>
                        <div class="col-xs-8 ">
                            <textarea name="charm" id="" style="width:650px;height:100px;"></textarea>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="sName" class="col-xs-3 control-label">关键字：</label>
                        <div class="col-xs-8 ">
                            <input type="text" class="form-control input-sm " name='keywords' value="" id=""
                                   placeholder="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="sName" class="col-xs-3 control-label">描述：</label>
                        <div class="col-xs-8 ">
                            <textarea name="description" id="" cols="50" rows="5"></textarea>
                        </div>
                    </div>
                    <!-- <div class="form-group">
                         <label for="situation" class="col-xs-3 control-label">首页推荐：</label>
                         <div class="col-xs-8">
                             <label class="control-label" >
                                 <input type="radio" name="index_show" class="index_show yes" value="1" >是</label> &nbsp;
                             <label class="control-label">
                                 <input type="radio" name="index_show" class="index_show no" value="0" checked> 否</label><br /><span></span>
                         </div>
                     </div>-->


                </div>
                <div class="text-center">
                    <a href="javascript:history.back()">
                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">返回</button>
                    </a>
                    <button type="submit" class="btn btn-xs btn-green">保 存</button>
                </div>
            </div>
        </div>
</form>

<script>
    function getCate(obj) {
        //
        var tp = obj.value;
        if (tp == 1) {
            $('#size_tip').html('476*298');
            $('#charm_area').show();
            $('#erwei_div').hide();
        } else {
            $('#size_tip').html('260*320');
            $('#charm_area').hide();
            $('#erwei_div').show();
        }
        $.ajax({
            url: "{:url('cate/ajax_get_cate')}",
            data: {
                tp: obj.value,
            },
            success: function (res) {
                if (res.code == 0) {
                    var list_ = res.data.list_cate;
                    var str;
                    for (var i = 0; i < list_.length; i++) {
                        str += ' <option value="' + list_[i].id + '">' + list_[i].name + '</option>';
                    }
                    $('#sel_cate').html(str);
                } else {
                    alert(res.msg);
                }
            }
        })
    }
    $(function () {

        $('form').bootstrapValidator({
            fields: {
                name: {
                    validators: {
                        notEmpty: {
                            message: '名称不能为空'
                        }
                    }

                },
                cate: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }

                },

                img: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }
                },
                cont: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }
                },
     /*           charm: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }
                },*/


            }
        });

    });

</script>

{/block}
