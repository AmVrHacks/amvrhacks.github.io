<?php
	foreach($menu_data as $row){
?>
	<div class="tab-pane fade active in" id="edit">
		<?php
			echo form_open(base_url() . 'index.php/admin/menu/update/' . $row['menu_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'menu_edit',
				'enctype' => 'multipart/form-data'
			));
		?>
			<div class="panel-body">
				<div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('title');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="title" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['title']?>" placeholder="<?php echo translate('title');?>" >
                </div>
            </div>
            <?php if($row['page_name'] != NULL){
            ?>
            
            <div class="form-group" id="id2" >
                <label class="col-sm-4 control-label"><?php echo translate('page');?></label>
                <div class="col-sm-6">
                	<?php
						$page = $row['page_name']; 
                    	echo $this->Crud_model->select_html('page','page_name','page_name','edit','demo-chosen-select',$page); ?>
                </div>
            </div>
            <?php } else {?>
            <div class="form-group" id="id3" >
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('link');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="link" id="demo-hor-1" 
                    	class="form-control " value="<?php echo $row['link']?>" placeholder="<?php echo translate('link');?>" >
                </div>
            </div>
            <?php }?>
		</div>
	</form>
</div>
<?php
	}
?>

<script>
	$(document).ready(function() {
		
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({width:'100%'});
	});
	$(document).ready(function() {
	    $("form").submit(function(e) {
	        return false;
	    });
	});
	
</script>