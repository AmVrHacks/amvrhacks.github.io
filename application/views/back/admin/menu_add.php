<div>
    <?php
		echo form_open(base_url() . 'index.php/admin/menu/do_add/', array(
			'class' => 'form-horizontal',
			'method' => 'post',
			'id' => 'menu_add',
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
                    	class="form-control required" placeholder="<?php echo translate('title');?>" >
                </div>
            </div>
            <div class="form-group" id="id1">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('type');?>
                    	</label>
                <div class="col-sm-6" >
                    <?php
                        $array = array('Page','Link');
                        echo $this->Crud_model->select_html($array,'page_type','','add','demo-chosen-select','','','','set_type'); 
                    ?>
                </div>
            </div>
            
            <div class="form-group" id="id2" style="display:none">
                <label class="col-sm-4 control-label"><?php echo translate('page');?></label>
                <div class="col-sm-6">
                    <?php echo $this->Crud_model->select_html('page','page_name','page_name','add','demo-chosen-select'); ?>
                </div>
            </div>
            <div class="form-group" id="id3" style="display:none">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('link');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="link" id="demo-hor-1" 
                    	class="form-control " placeholder="<?php echo translate('link');?> i.e. http://www.example.com" >
                </div>
            </div>
        </div>
	</form>
</div>

<script>
	$(document).ready(function() {
		
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({width:'100%'});
	});
	$(document).ready(function() {
		$("form").submit(function(e){
			return false;
		});
	});
	function set_type(val){
		if(val == '0')
		{
			$('#id2').show();
			$('#id3').hide();
		}
		else if(val == '1')
		{
			$('#id3').show();
			$('#id2').hide();
		}
	};
</script>