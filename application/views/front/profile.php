<link href="<?php echo base_url(); ?>template/back/plugins/switchery/switchery.min.css" rel="stylesheet">
<script src="<?php echo base_url(); ?>template/back/plugins/switchery/switchery.js"></script>

 <!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo translate('user_account');?></h2>
            </div>
        </div>
    </div>
</div>
	
<section class="slice bg-white window_set" style="min-height:400px">
    <div class="wp-section user-account">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                   <h3 class="title title-lg"><?php echo translate('your_info');?></h3>
						<?php
                        foreach($user_info as $row)
                        {
                        ?>
                            <div class="user-profile-img mb-20">
                                <img id="blah" 
                                    <?php if(file_exists('uploads/user_image/user_'.$row['user_id'].'.jpg')){ ?>
                                        src="<?php echo $this->Crud_model->file_view('user',$row['user_id'],'100','100','no','src','','','.jpg'); ?>"
                                    <?php } else if($row['fb_id'] !== ''){ ?>
                                        src="https://graph.facebook.com/<?php echo $row['fb_id']; ?>/picture?type=large" 
                                    <?php } else if($row['g_id'] !== ''){ ?>
                                        src="<?php echo $row['g_photo']; ?>"
                                    <?php } else { ?>
                                        src="<?php echo base_url(); ?>uploads/user_image/default.png"
                                    <?php } ?> alt="">
                                 
                                <div class="form-body pic_changer" style="margin-top:-31px; display:none;">
                                        <?php
                                            echo form_open(base_url() . 'index.php/home/sign/change_picture/'.$row['user_id'], array(
                                                'class' => 'sky-form',
                                                'method' => 'post',
                                                'id' => 'fff',
                                                'enctype' => 'multipart/form-data'
                                            ));
                                        ?> 
                                        <span id="inppic" >
                                            <label class="btn btn-base btn-block btn-icon fa-camera" for="imgInp">
                                                <span><?php echo translate('change_profile_picture');?></span>
                                            </label>
                                            <input type="file" style="display:none;" id="imgInp" name="img" />
                                        </span>
                                        <span id="savepic" style="display:none;">
                                            <span class="btn btn-success btn-block btn-icon fa-check signup_btn" onclick="abnv('inppic'); change_state('normal');"  data-ing="<?php echo translate('saving');?>..." data-success="<?php echo translate('profile_picture_saved_successfully!'); ?>" data-unsuccessful="<?php echo translate('edit_failed!'); ?> <?php echo translate('try_again!'); ?>" data-reload="no" >
                                                <span><?php echo translate('save_changes');?></span>
                                            </span>
                                        </span>
                                    </form>
                                </div>
                            </div>
                            <input type="hidden" id="state" value="normal" />
                            <script type="text/javascript">
            
                            function abnv(thiss){
                                $('#savepic').hide();
                                $('#inppic').hide();
                                $('#'+thiss).show();
                            }
                            function change_state(va){
                                $('#state').val(va);
                            }
                            $('.user-profile-img').on('mouseenter',function(){
                                $('.pic_changer').show('fast');
                            });
                            $('.user-profile-img').on('mouseleave',function(){
                                if($('#state').val() == 'normal'){
                                    $('.pic_changer').hide('fast');
                                }
                            });
                            function readURL(input) {
                                if (input.files && input.files[0]) {
                                    var reader = new FileReader();
            
                                    reader.onload = function(e) {
                                        $('#blah').attr('src', e.target.result);
                                    }
                                    reader.readAsDataURL(input.files[0]);
                                    abnv('savepic');
                                    change_state('saving');
                                }
                            }
            
                            $("#imgInp").change(function() {
                                readURL(this);
                            });
            
                        </script>
                            <table class="table table-orders table-bordered table-striped table-responsive no-margin">
                                <tbody>
                                 <tr>
                                    <th>
                                        <?php echo translate('name');?>
                                    </th>
                                    <td>
                                       <span class="pull-left"><?php echo $row['username'];?></span> 
                                    </td>
                                 </tr>
                                 <tr>
                                     <th>
                                        <?php echo translate('email');?>
                                    </th>
                                    <td>
                                    <span class="pull-left"><?php echo $row['email'];?></span>
                                    </td>
                                 </tr>
                                 <tr>
                                     <th><?php echo translate('phone');?></th>
                                    <td>
                                     <span class="pull-left"><?php echo $row['phone'];?></span>
                                 </td>
                                 </tr>
                                 <tr>
                                    <th>
                                        <?php echo translate('address');?>
                                    </th>
                                     <td>
                                         <span class="pull-left"><?php echo $row['address1'];?></span>
                                     </td>
                                 </tr>
                                 <tr>
                                    <th colspan="2">
                                        <a class="btn btn-base btn-block btn-icon fa-certificate" href="<?php echo base_url(); ?>index.php/home/user_package"><?php echo translate('user_package')?></a>
                                    </th>
                                 </tr>
                                 </tbody>
                          </table>
                        <?php
                        }
                        ?> 
                </div> 
                <div class="col-md-9">                     
                    <div class="tabs-framed">
                        <ul class="tabs clearfix">
                            <li <?php if($inner_page=='product_list'){ ?>class="active"<?php }?>><a href="#tab-1" data-toggle="tab"><?php echo translate('product_log');?> </a></li>
                            <li><a href="#tab-2" data-toggle="tab"><?php echo translate('edit_personal_info');?></a></li>
                            <li><a href="#tab-3" data-toggle="tab"><?php echo translate('favourites');?> </a></li>
                            <li><a href="#tab-4" data-toggle="tab"><?php echo translate('email_tracing');?> </a></li>
                            <li><a href="#tab-5" data-toggle="tab"><?php echo translate('support_ticket');?> </a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade <?php if($inner_page=='product_list'){ ?>in active<?php } ?>" id="tab-1">
                                <div class="tab-body" style="padding-bottom: 0;">
                                	<div id="result2">
                        				<input type="hidden" id="page_num2" value="0" />
                    				</div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-2">
                               <div class="wp-block user-form user-form-alpha mb-20">
                                    <div class="form-body">
                                    <?php
                                        foreach($user_info as $row)
                                        {
                                    ?>
										<?php
                                            echo form_open(base_url() . 'index.php/home/sign/update_info/', array(
                                                'class' => 'sky-form',
                                                'method' => 'post',
                                                'id' => 'frmRegister',
                                                'enctype' => 'multipart/form-data'
                                            ));
                                        ?>                                 
                                            <fieldset class="no-padding">           
                                                <section class="">
                                                    <div class="row">
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <div class="form-group">
                                                                    <label class="input">
                                                                        <i class="icon-append fa fa-envelope-o"></i>
                                                                        <input type="email" value="<?php echo $row['email'];?>" disabled="disabled" readonly placeholder="<?php echo translate('your_email');?>">
                                                                    </label>
                                                                </div>  
                                                            </div>               
                                                        </div>
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-user"></i>
                                                                    <input type="text"  value="<?php echo $row['username'];?>" name="name" placeholder="<?php echo translate('your_username');?>">
                                                                </label>
                                                            </div>               
                                                        </div>
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-user"></i>
                                                                    <input type="text"  value="<?php echo $row['surname'];?>" name="surname" placeholder="<?php echo translate('your_surname');?>">
                                                                </label>
                                                            </div>               
                                                        </div>
                                                    </div> 
                                                    <section class="no-margin">
                                                        <div class="row">
                                                        <section class="col-xs-12">
                                                            <label class="textarea">
                                                                <textarea name="address" placeholder="<?php echo translate('your_address');?>" class="address" rows="5"><?php echo $row['address1'];?></textarea>
                                                            </label>
                                                        </section>
                                                        <section class="col-xs-12">
                                                            <label class="input">
                                                                <i class="icon-append fa fa-phone"></i>
                                                                <input type="tel" value="<?php echo $row['phone'];?>" name="phone" placeholder="<?php echo translate('your_phone');?>">
                                                            </label>
                                                        </section>
                                                    </div>
                                                    </section>    
                                                </section>
                                            </fieldset> 
                                            
                                            <fieldset>
                                                <section>
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                        </div>
                                                        <div class="col-md-4 window_set1">
                                                            <span class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right signup_btn1"  data-ing="<?php echo translate('saving');?>..." data-success="<?php echo translate('edit_successful!'); ?>" data-unsuccessful="<?php echo translate('edit_failed!'); ?> <?php echo translate('try_again!'); ?>" data-reload="ok" >
                                                                <span><?php echo translate('save');?></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </section>
                                            </fieldset>
                                        </form>  
                                        <?php
                                        }
                                    ?>
                                    </div>
                                </div>
                               <div class="wp-block user-form user-form-alpha no-margin">
                                    <div class="form-body">
                                    <?php
                                        foreach($user_info as $row)
                                        {
                                    ?>
										<?php
                                            echo form_open(base_url() . 'index.php/home/sign/update_pass/', array(
                                                'class' => 'sky-form',
                                                'method' => 'post',
                                                'id' => 'frmRegister',
                                                'enctype' => 'multipart/form-data'
                                            ));
                                        ?>                                 
                                            <fieldset class="no-padding">           
                                                <section class=""> 
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-lock"></i>
                                                                    <input type="password" value="" name="opassword" placeholder="<?php echo translate('old_password');?>">
                                                                </label>
                                                            </div>               
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-lock"></i>
                                                                    <input type="password" value="" name="password1" placeholder="<?php echo translate('new_password');?>">
                                                                </label>
                                                            </div>               
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-lock"></i>
                                                                    <input type="password" value="" name="password2" placeholder="<?php echo translate('re-enter_password');?>">
                                                                </label>
                                                            </div>               
                                                        </div>
                                                    </div>   
                                                </section>
                                            </fieldset> 
                                            <fieldset>
                                                <section>
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <span class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right signup_btn"  data-ing="<?php echo translate('saving');?>..." data-success="<?php echo translate('password_changed!'); ?>" data-unsuccessful="<?php echo translate('failed!'); ?> <?php echo translate('try_again!'); ?>" data-reload="no" >
                                                                <span><?php echo translate('save');?></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </section>
                                            </fieldset>
                                        </form>  
                                        <?php
                                        }
                                    ?>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-3">
                                <div class="tab-body" style="padding-bottom: 0;">
                                	<div id="result4">
                                        <input type="hidden" id="page_num4" value="0" />
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-4">
                                <div class="tab-body" style="padding-bottom: 0;">
                                	<div id="result1">
                        				<input type="hidden" id="page_num1" value="0" />
                    				</div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-5">
                                <div class="tab-body" style="padding-bottom: 10px;">
                                	<div class="tabs-framed">
                                        <ul class="tabs clearfix">
                                            <li class="active"><a href="#tab-6" data-toggle="tab"><?php echo translate('all_messages');?> </a></li>
                                            <li><a href="#tab-7" data-toggle="tab"><?php echo translate('create_ticket');?></a></li>
                                        </ul>
                                        <div class="tab-content">
                            				<div class="tab-pane fade in active" id="tab-6" style="padding-bottom: 10px;">
                                				<div class="tab-body" style="padding-bottom: 10px;">
													<div id="result3">
                                                        <input type="hidden" id="page_num3" value="0" />
                                                    </div>
                                                </div>
                                             </div>
                            				 <div class="tab-pane fade" id="tab-7">
                                				 <div class="tab-body" style="padding-bottom: 10;">
                                             			<?php
                                                        echo form_open(base_url() . 'index.php/home/ticket_message_add/', array(
                                                            'class' => 'sky-form',
                                                            'method' => 'post',
                                                            'id' => 'frmRegister1',
                                                            'enctype' => 'multipart/form-data'
                                                        ));
                                                    ?>
                                      
                                                     <div class="form-body">
                                                        <fieldset class="no-padding"> 
                                                            <section class="no-margin">
                                                                <div class="row">
                                                                   <section class="col-xs-12">
                                                                        <center><label><h4><?php echo translate('enter_your_ticket_subject_to_admin');?></h4></label></center>
                                                                        <div class="col-md-12">
                                                                            <div class="form-group">
                                                                                <label class="input">
                                                                                    
                                                                                    <input type="text"  name="sub" placeholder="<?php echo translate('subject');?>">
                                                                                </label>
                                                                            </div>               
                                                                        </div>
                                                                    </section>
                                                                </div>
                                                             </section>
                                                             <section class="no-margin">
                                                                <div class="row">
                                                                   <section class="col-xs-12">
                                                                        <center><label><h4><?php echo translate('enter_your_messgae');?></h4></label></center>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <div class="form-group">
                                                                            
                                                                                <label class="input">
                                                                        			<textarea name="reply" placeholder="<?php echo translate('message');?>" class="textarea col-md-12" rows="5" ></textarea>
                                                                                 </label>
                                                                             </div>
                                                                         </div>
                                                                    </section>
                                                                </div>
                                                             </section>
                                                             <section>
                                                                <div class="row">
                                                                    <div class="col-md-8">
                                                                    </div>
                                                                    <div class="col-md-4 window_set1">
                                                                            <span class="btn btn-base btn-icon btn-icon-right btn-icon-go pull-right signup_btn1"  data-ing="<?php echo translate('creating');?>..."data-success="<?php echo translate('created!'); ?>" data-unsuccessful="<?php echo translate('failed!'); ?> <?php echo translate('try_again!'); ?>" data-reload="ok" >
                                                                            <span id="btntxt"><?php echo translate('create');?></span>
                                                                        </span>
                                                                    </div>
                                                                 </div>
                                                            </section>
                                                        </fieldset>
                                                     </div>
                                				  </div>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
            		</div>
         		</div>
    		</div>
        </div>
    </div>
</section>
<div id="shown" style="display:none;"></div>
<script>
	$(document).ready(function(){
		setTimeout(function(){ load_textarea(); }, 1000);
	});
</script>
<script>
	function notify(message,type,from,align){		
		$.notify({
			// options
			message: message 
		},{
			// settings
			type: type,
			placement: {
				from: from,
				align: align
			}
		});
		
	}
	function reload_page(){
		var loc = location.href;
		location.replace(loc);
	}
	$('.window_set1').on('click','.signup_btn1',function(event){
			event.preventDefault();
			var now = $(this);
			var btntxt = now.html();
			var form = now.closest('form');
			var success = now.data('success');
			var unsuccessful = now.data('unsuccessful');
			var rld = now.data('reload');
			var formdata = false;
			if (window.FormData){
				formdata = new FormData(form[0]);
			}
	
			$.ajax({
				url: form.attr('action'), // form action url
				type: 'POST', // form submit method get/post
				dataType: 'html', // request type html/json/xml
				data: formdata ? formdata : form.serialize(), // serialize form data 
				cache       : false,
				contentType : false,
				processData : false,
				beforeSend: function() {
					now.html('<span>creating...</span>');
				},
				success: function(data) {
					if(data == 'done'){
						notify(success,'success','bottom','right');
						if(rld == 'ok'){
							setInterval(reload_page(), 2000);
						}
					} else {
						var text = '<div>'+unsuccessful+'</div>'+data;
						notify(text,'warning','bottom','right');
					}
					
					now.html(btntxt);
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
	function set_switchery(){
		$(".aiz_switchery").each(function(){
			new Switchery($(this).get(0), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
			var changeCheckbox = $(this).get(0);				
			
			var false_msg = $(this).data('fm');
			var true_msg = $(this).data('tm');
			
			changeCheckbox.onchange = function() {
			
			  $('#shown').load(base_url+'index.php/home/product_shown/'+$(this).data('id')+'/'+changeCheckbox.checked);
			  
			  if(changeCheckbox.checked == true){
				notify(true_msg,'warning','bottom','right');
				sound('published');
			  } else {
				notify(false_msg,'success','bottom','right');
				sound('unpublished');
			  }
			  //alert(changeCheckbox.checked);
			};
		});
	}
	function email_listed(page){
		if(page == 'no'){
			page = $('#page_num1').val();	
		} else {
			$('#page_num1').val(page);
		}
        var alert = $('#result1');
		alert.load('<?php echo base_url();?>index.php/home/email_listed/'+page);   
    }
	function product_listed(page){
		if(page == 'no'){
			page = $('#page_num2').val();	
		} else {
			$('#page_num2').val(page);
		}
        var alert = $('#result2');
		alert.load('<?php echo base_url();?>index.php/home/product_listed/'+page,function(){set_switchery()});   
    }
	function ticket_listed(page){
		if(page == 'no'){
			page = $('#page_num3').val();	
		} else {
			$('#page_num3').val(page);
		}
        var alert = $('#result3');
		alert.load('<?php echo base_url();?>index.php/home/ticket_listed/'+page);   
    }
	function wish_listed(page){
		if(page == 'no'){
			page = $('#page_num4').val();	
		} else {
			$('#page_num4').val(page);
		}
        var alert = $('#result4');
		alert.load('<?php echo base_url();?>index.php/home/wish_listed/'+page);   
    }
	
	$(document).ready(function() {
        email_listed('0');
		product_listed('0');
		ticket_listed('0');
		wish_listed('0');
    });
	$(document).ready(function(){
		set_switchery();
		
	});
</script>
