
<div class="row">
    <div class="col-md-12">
    <?php
		echo form_open(base_url() . 'index.php/admin/blog/do_add/', array(
			'class' => 'form-horizontal',
			'method' => 'post',
			'id' => 'blog_add',
			'enctype' => 'multipart/form-data'
		));
	?>
        <div class="panel-body">
            <div class="tab-base">
                <!--Tabs Content-->                    
                <div class="tab-content">
                    <div id="blog_details" class="tab-pane fade active in">

                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-1">
                                <?php echo translate('blog_title');?>
                                    </label>
                            <div class="col-sm-6">
                                <input type="text" name="title" id="demo-hor-1"  placeholder="<?php echo translate('blog_title');?>" class="form-control required">
                            </div>
                        </div>
                        
                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-2"><?php echo translate('category');?></label>
                            <div class="col-sm-6">
                                <?php echo $this->Crud_model->select_html('blog_category','blog_category','name','add','demo-chosen-select required','','','','get_cat'); ?>
                            </div>
                        </div>
                        
                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-12"><?php echo translate('images');?></label>
                            <div class="col-sm-6">
                                <span class="pull-left btn btn-default btn-file"> <?php echo translate('choose_file');?>
                                    <input type="file" name="img" onchange="preview(this);" id="demo-hor-inputpass" class="form-control">
                                </span>
                                <br><br>
                                <span id="previewImg" >
                                    <img class="img-responsive" width="100" src="<?php echo base_url(); ?>uploads/others/photo_default.png" alt="User_Image" >
                                </span>
                            </div>
                        </div>
                        
                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-14">
                                <?php echo translate('summery');?>
                                    </label>
                            <div class="col-sm-6">
                                <textarea rows="9" class="summernotes" data-height="200" data-name="summery"></textarea>
                            </div>
                        </div>
                        
                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-14">
                                <?php echo translate('description');?>
                                    </label>
                            <div class="col-sm-6">
                                <textarea rows="9" class="summernotes" data-height="300" data-name="description"></textarea>
                            </div>
                        </div>

                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('author');?></label>
                            <div class="col-sm-6">
                                <input type="text" name="author" id="demo-hor-1" placeholder="<?php echo translate('author');?>" class="form-control ">
                            </div>
                        </div>

                        <div class="form-group btm_border">
                            <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('date');?></label>
                            <div class="col-sm-6">
                                <input type="date" name="dt" id="demo-hor-1" class="form-control">
                            </div>
                        </div>
                        
                        
                    </div>


                </div>
            </div>

        </div>
    
        <div class="panel-footer">
            <div class="row">
                <div class="col-md-11">
                    <span class="btn btn-purple btn-labeled fa fa-refresh pro_list_btn pull-right" 
                        onclick="ajax_set_full('add','<?php echo translate('add_blog'); ?>','<?php echo translate('successfully_added!'); ?>','blog_add',''); ">
                            <?php echo translate('reset');?>
                    </span>
                </div>
                
                <div class="col-md-1">
                    <span class="btn btn-success btn-md btn-labeled fa fa-upload pull-right" onclick="form_submit('blog_add','<?php echo translate('successfully_added!'); ?>')" ><?php echo translate('upload');?></span>
                </div>
                
            </div>
        </div>
	</form>
	</div>
</div>

<script>
    window.preview = function (input) {
        if (input.files && input.files[0]) {
            $("#previewImg").html('');
            $(input.files).each(function () {
                var reader = new FileReader();
                reader.readAsDataURL(this);
                reader.onload = function (e) {
                    $("#previewImg").append("<div style='float:left;border:4px solid #303641;padding:5px;margin:5px;'><img height='80' src='" + e.target.result + "'></div>");
                }
            });
        }
    }
	$(document).ready(function() {
		set_summer();
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({
			width: '100%'
		});
		$("form").submit(function(e){
			return false;
		});
	});
</script>