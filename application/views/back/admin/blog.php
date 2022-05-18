<div id="content-container">
	<div id="page-title">
		<h1 class="page-header text-overflow" ><?php echo translate('manage_blog');?></h1>
	</div>
	<div class="tab-base">
		<div class="panel">
			<div class="panel-body">
				<div class="tab-content">
					<div style="border-bottom: 1px solid #ebebeb;padding: 25px 5px 5px 5px;"
                    	class="col-md-12" >
                            <button class="btn btn-primary btn-labeled fa fa-plus-circle add_pro_btn pull-right" 
                                onclick="ajax_set_full('add','<?php echo translate('add_blog'); ?>','<?php echo translate('successfully_added!'); ?>','blog_add',''); proceed('to_list');">
									<?php echo translate('create_blog');?>
                            			</button>
                            <button class="btn btn-info btn-labeled fa fa-step-backward pull-right pro_list_btn" 
                                style="display:none;"  onclick="ajax_set_list();  proceed('to_add');">
									<?php echo translate('back_to_blog_list');?>
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
<span id="sw" style="display:none;"></span>
<script>
	var base_url = '<?php echo base_url(); ?>'
	var user_type = 'admin';
	var module = 'blog';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';
	
	function set_summer(){
        $('.summernotes').each(function() {
            var now = $(this);
            var h = now.data('height');
            var n = now.data('name');
            now.closest('div').append('<input type="hidden" class="val" name="'+n+'">');
            now.summernote({
                height: h,
                onChange: function() {
                    now.closest('div').find('.val').val(now.code());
                }
            });
            now.closest('div').find('.val').val(now.code());
        });
	}
	
	function proceed(type){
		if(type == 'to_list'){
			$(".pro_list_btn").show();
			$(".add_pro_btn").hide();
		} else if(type == 'to_add'){
			$(".add_pro_btn").show();
			$(".pro_list_btn").hide();
		}
	}
	function set_switchery(){
		$(".aiz_switchery").each(function(){
			new Switchery($(this).get(0), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
			var changeCheckbox = $(this).get(0);				
			
			var false_msg = $(this).data('fm');
			var true_msg = $(this).data('tm');
			
			changeCheckbox.onchange = function() {
			
			  $('#sw').load(base_url+'index.php/'+user_type+'/'+module+'/'+$(this).data('set')+'/'+$(this).data('id')+'/'+changeCheckbox.checked);
			  
			  if(changeCheckbox.checked == true){
				$.activeitNoty({
					type: 'success',
					icon : 'fa fa-check',
					message : true_msg,
					container : 'floating',
					timer : 3000
				});
				sound('published');
			  } else {
				$.activeitNoty({
					type: 'danger',
					icon : 'fa fa-check',
					message : false_msg,
					container : 'floating',
					timer : 3000
				});
				sound('unpublished');
			  }
			  //alert(changeCheckbox.checked);
			};
		});
	}
	$(document).ready(function() {
        set_switchery();
    });
</script>

