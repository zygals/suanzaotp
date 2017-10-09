{extend name='public:base' /}
{block name="title"}{$modelName}{/block}
{block name="content"}
<style>
    .control-label {
        padding-right: 10px;
    }
</style>

<!--弹出添加用户窗口-->
<form class="form-horizontal" action="{:url($act)}" method="post" enctype="multipart/form-data">
    <?php if($act=='update'){?>
        <input type="hidden" name="id" value="{$row_->id}">
        <input type="hidden" name="referer" value="{$referer}">
    <?php }?>
    <div class="row">
        <div class="col-xs-8">
            <div class="text-center">
                <!---->
                <h4 class="modal-title" id="gridSystemModalLabel">{$actname}{$modelName}</h4>
            </div>
            <div class="">
                <div class="container-fluid">
                    <div class="form-group">
                        <label for="sKnot" class="col-xs-3 control-label">名称：</label>
                        <div class="col-xs-8 ">
                            <input type="text" class="form-control input-sm duiqi" name='name' value="{$row_->name|default=''}" id=""
                                   placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="situation" class="col-xs-3 control-label">类型：</label>

                        <div class="col-xs-8">
<?php if($act=='save'){?>
                            <label class="control-label" >
                                <input type="radio" name="tp" id="" value="1" checked>安桌</label> &nbsp;
                            <label class="control-label">
                                <input type="radio" name="tp" id="" value="2" >苹果</label>
                            <?php }else{?>
    <label class="control-label" >
        <input type="radio" name="tp" id="" value="1" <?php echo $row_->tp=='安桌'?'checked':''?>>安桌</label> &nbsp;
    <label class="control-label">
        <input type="radio" name="tp" id="" value="2" <?php echo $row_->tp=='苹果'?'checked':''?>>苹果</label>
                            <?php }?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>上传方式：</label>
                        <div class="col-xs-8">
                            <select class=" form-control select-duiqi" name="pc_ftp" id="sel_cate">

                                    <option value="">请选择...</option>
                                    <option value="pc">本机上传</option>
                                    <option value="ftp">ftp上传</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group" id="pc_file" style="display: none;">
                        <label for="sOrd" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>文件：</label>
                        <div class="col-xs-4 ">

                            <input type="file" title='' class="form-control  duiqi" id="sOrd" name="path" placeholder=""><span style="color:red">上传文件，如果文件可能因为过大上传失败，请用ftp方式上传至服务器目录：/home/wwwroot/suanzaotp/public/upload/dfile。</span>

                        </div>

                    </div>
                    <div class="form-group" style="display: none;" id="ftp_file">
                        <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>ftp文件名称：</label>
                        <div class="col-xs-8 ">
                            <input type="text" class="form-control input-sm duiqi" name='fname' value="{$row_->fname|default=''}" id=""
                                   placeholder="">
                        </div>
                    </div>

                                 </div>
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
    $('#sel_cate').click(function () {
        if(this.value=='pc'){
           $('#pc_file').show()
           $('#ftp_file').hide()
        }else if(this.value=='ftp'){
            $('#ftp_file').show()
            $('#pc_file').hide()
        }else{
            $('#ftp_file').hide()
            $('#pc_file').hide()
        }
    })
    $(function () {
        $('form').bootstrapValidator({
            fields: {
                tp: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }

                },
                pc_ftp: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }

                },
                <?php if($act=='save'){?>
             /*   path: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }

                },*/
                <?php }?>

            }
        });

    });

</script>

{/block}
