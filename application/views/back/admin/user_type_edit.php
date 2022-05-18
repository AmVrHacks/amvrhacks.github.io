<?php
	foreach($user_type_data as $row){
?>
	<div class="tab-pane fade active in" id="edit">
		<?php
			echo form_open(base_url() . 'index.php/admin/user_type/update/' . $row['user_type_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'user_type_edit',
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
                            class="form-control required"  value="<?php echo $row['name'];?>" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-1">
                        <?php echo translate('price');?>
                            </label>
                    <div class="col-sm-6">
                        <input type="number" name="price" id="demo-hor-1" 
                            class="form-control required"  value="<?php echo $row['price'];?>" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-1">
                        <?php echo translate('details');?>
                            </label>
                    <?php
						$dt1=array();
						if($row['details'] != 'unlimited'){	 
							$details1 = json_decode($row['details'],true);
							$dt1= explode('-',$details1);
						}
						else {
							$dt1[0]= 'unlimited';
							$dt1[1]= 'unlimited';
						}
					?>
                    <input type="hidden" id="data1" value="<?php echo $dt1[0]?>"/>
                    <input type="hidden" id="data2" value="<?php echo $dt1[1]?>"/>
                    <?php ?>
                    <div id="id1" class="col-sm-2" style="display:none;">
                        <input type="text" name="details" id="demo-hor-1" 
                            class="form-control" value="<?php if($row['details']!= 'unlimited'){echo $dt1[0];}?>" placeholder="<?php echo translate('details');?>" >
                    </div>
					<?php ?>
                    <div id="id2" class="col-sm-3" style="display:none;">
                        <select class="demo-chosen-select" 
                              title="Choose one of the following..." data-width="100%"           
                               name="tym">
                             <option value="day" <?php if($dt1[1] == 'day'){ echo 'selected'; } ?>><?php echo translate('day');?></option>
                             <option value="month" <?php if($dt1[1] == 'month'){ echo 'selected'; } ?>><?php echo translate('month');?></option>
                             <option value="year" <?php if($dt1[1] == 'year'){ echo 'selected'; } ?>><?php echo translate('year');?></option>
                        </select>
                    </div>
                    <div id="typ" class="col-sm-3" style="display:none;">
                        <select class="demo-chosen-select set_stat" 
                              title="Choose one of the following..." data-width="100%"           
                               name="status">
                                 	<option value="limited" <?php if($dt1[1] == 'limited'){?>selected<?php } ?> ><?php echo translate('limited');?></option>
                                 	<option value="unlimited" <?php if($dt1[1] == 'unlimited'){?>selected<?php } ?> ><?php echo translate('unlimited');?></option>
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
                            <img class="img-responsive" width="100" src="<?php echo $this->Crud_model->file_view('user_type',$row['user_type_id'],'','','thumb','src','',''); ?>" alt="User_Image" >
                        </span>
                    </div>
                </div>
                
            
                <div class="form-group text-center">
                    <h4><?php echo translate('product_packages'); ?></h4>
                </div>
				<?php
                    $details = json_decode($row['product_type'],true);
					$done = array();
                    foreach($details as $row1){
                        $product_type = $this->db->get_where('product_type',array('product_type_id'=>$row1['product_type'],'status'=>'ok'));
						if($product_type->num_rows() > 0){
							$done[] = $row1['product_type'];
                ?>
                <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $product_type->row()->name;?></label>
                    <div class="col-sm-3">
                        <input type="number" name="piece_<?php echo $row1['product_type']?>" id="demo-hor-1" 
                            class="form-control required" placeholder="<?php echo translate('piece');?>" value="<?php echo $row1['piece']?>" >
                    </div>
                </div>
                <?php 
						}
					} 
				?>
				<?php
                    $product_types = $this->db->get_where('product_type',array('status'=>'ok'))->result_array();
                    foreach($product_types as $row1){
						if(!in_array($row1['product_type_id'],$done)){
                ?>
                <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $product_type->row()->name;?></label>
                    <div class="col-sm-3">
                        <input type="number" name="piece_<?php echo $row1['product_type_id']; ?>" id="demo-hor-1" 
                            class="form-control required" placeholder="<?php echo translate('piece');?>" value="0" >
                    </div>
                </div>
                <?php 
						}
					} 
				?>
            </div>
		</form>
	</div>
<?php
	}
?>

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
		var con =$('#data1').val();
		if(con != 'unlimited'){
			$('#id1').show();
			$('#id2').show();
			$('#typ').show();
			$('.set_stat').on('change',function(){
				var stat=$(this).val();
				if(stat == 'unlimited'){
					$('#id1').hide();
					$('#id2').hide();
				} else {
					$('#id1').show();
					$('#id2').show();
					$('#typ').show();
				}
			
			});
		} else {
			$('#typ').show();
			$('.set_stat').on('change',function(){
				var stat=$(this).val();
				if(stat == 'unlimited'){
					$('#id1').hide();
					$('#id2').hide();
				} else {
					$('#id1').show();
					$('#id2').show();
					$('#typ').show();
				}
			
			});
		}
	    $("form").submit(function(e) {
	        return false;
	    });
	});
</script>