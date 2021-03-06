<link href="<?php echo base_url(); ?>template/back/plugins/nestable2/nestable.css" rel="stylesheet">
<script src="<?php echo base_url(); ?>template/back/plugins/nestable2/nestable.js"></script>
<div id="content-container">
	<div id="page-title">
		<h1 class="page-header text-overflow" ><?php echo translate('manage_menu');?></h1>
	</div>
	<div class="tab-base">
		<div class="panel">
			<div class="panel-body">
				<div class="tab-content">
					<div style="border-bottom: 1px solid #ebebeb;padding: 25px 5px 5px 5px;"
                    	class="col-md-12" >
						<button class="btn btn-primary btn-labeled fa fa-plus-circle pull-right mar-rgt" 
                        	onclick="ajax_modal('add','<?php echo translate('add_menu'); ?>','<?php echo translate('successfully_added!'); ?>','menu_add','')">
								<?php echo translate('create_menu');?>
                       	</button>
                        <button class="btn btn-purple btn-labeled fa fa-align-justify add_pro_btn pull-right" 
                        	onclick="ajax_set_full('serial','<?php echo translate('menu_serial'); ?>','<?php echo translate('successfully_serialized!'); ?>','menu_serial',''); ">
								<?php echo translate('menu_serial');?>
                        </button>
					</div>
					<br>
                    <div class="tab-pane fade active in" 
                    	id="list" style="border:1px solid #ebebeb; border-radius:4px;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="men" style="display:none;"></div>
<script>
	var base_url = '<?php echo base_url(); ?>'
	var user_type = 'admin';
	var module = 'menu';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';
</script>

