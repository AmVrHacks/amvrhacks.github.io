<div>
    <?php
		echo form_open(base_url() . 'index.php/admin/user_type/do_add/', array(
			'class' => 'form-horizontal',
			'method' => 'post',
			'id' => 'user_type_add',
			'enctype' => 'multipart/form-data'
		));
	?>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('user_type_name');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="name" id="demo-hor-1" 
                    	class="form-control required" placeholder="<?php echo translate('name');?>" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('price');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="number" name="price" id="demo-hor-1" 
                    	class="form-control required" placeholder="<?php echo translate('price');?>" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('validation_of_package');?>
                    	</label>
                
                <div id="id1" class="col-sm-2" style="display: none">
                    <input type="number" name="details" id="demo-hor-1" 
                    	class="form-control " placeholder="<?php echo translate('number');?>" >
                </div>
                <div id="id2" class="col-sm-3" style="display: none">
                    <select class="demo-chosen-select" 
                          title="Choose one of the following..." data-width="100%"           
                           name="tym">
                             <option value="day"><?php echo translate('day');?></option>
                             <option value="month"><?php echo translate('month');?></option>
                             <option value="year"><?php echo translate('year');?></option>
                    </select>
                </div>
                <div id="typ" class="col-sm-3" style="display: none">
                	<select class="demo-chosen-select set_stat" 
                          title="Choose one of the following..." data-width="100%"           
                           name="status">
                             <option value="unlimited"><?php echo translate('Unlimited');?></option>
                             <option value="limited"><?php echo translate('limited');?></option>
                    </select>
                </div>
            </div>
            
                        
            <div class="form-group btm_border">
                <label class="col-sm-4 control-label" for="demo-hor-12"><?php echo translate('package_logo');?></label>
                <div class="col-sm-6">
                    <span class="pull-left btn btn-default btn-file"> <?php echo translate('choose_file');?>
                        <input type="file" name="logo" onchange="preview(this);" id="demo-hor-inputpass" class="form-control">
                    </span>
                    <br><br>
                    <span id="previewImg" >
                        <img class="img-responsive" width="100" src="<?php echo base_url(); ?>uploads/others/photo_default.png" alt="User_Image" >
                    </span>
                </div>
            </div>
            
            <div class="form-group text-center">
            	<h4><?php echo translate('product_packages'); ?></h4>
            </div>
            <?php 
				 $p_type = $this->db->get('product_type')->result_array();
				 foreach($p_type as $row){
			?>
            <div class="form-group">
                <label class="col-sm-4 control-label"><?php echo translate($row['name']);?></label>
                <div class="col-sm-3">
                    <input type="number" name="piece_<?php echo $row['product_type_id']?>" id="demo-hor-1" 
                    	class="form-control required" placeholder="<?php echo translate('piece');?>" >
                </div>
            </div>
            <?php } ?>
        </div>
	</form>
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
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({
			width: '100%'
		});
		$('#typ').show();
		$('.set_stat').on('change',function(){
			var stat=$(this).val();
			if(stat == 'limited'){
				$('#id1').show();
				$('#id2').show();
			} else {
				$('#id1').hide();
				$('#id2').hide();
			}
		});
		$("form").submit(function(e){
			return false;
		});
	});
	
</script>