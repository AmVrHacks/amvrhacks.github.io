<script src="https://checkout.stripe.com/checkout.js"></script> 
<!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container ">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo translate('ticket_messages'); ?></h2>
            </div>
            <div class="col-md-6" style="margin-top:10px !important">
                <a href="<?php echo base_url(); ?>index.php/home/profile" style="color:#fff;" class="pull-right">
                    <i class="fa fa-arrow-left"></i> <u><?php echo translate('back_to_profile_page');?></u>
                </a>
        	</div>
        </div>
    </div>
</div>

<section class="slice bg-white" style="min-height:400px">
    <div class="wp-section user-account">
        <div class="container">
                <div class="col-md-8 col-md-offset-2">

                     <div class="col-md-12" style="overflow:hidden">
                                            
                        <div class="panel panel-default panel-sidebar-1">
							<?php 
                                foreach($message_data as $row)
                                { 
                            ?>
                                <div class="panel-heading" style="padding:10px 15px !important;">
                                    <h2>
                                		<i class="fa fa-life-ring"></i>
                                        <?php echo translate('ticket_from');?>
                                        <?php 
                                            $from = json_decode($row['from_where'],true);
                                            if($from['type'] == 'user'){
                                        ?>
                                            <?php echo $this->db->get_where('user',array('user_id'=>$from['id']))->row()->username; ?>
                                        </a>
                                        <?php	
                                            } else {
                                        ?>
                                            <?php echo translate('admin');?> 
                                        <?php
                                            }
                                        ?>
                                    </h2>
                                </div>
                                <div class="panel-body">
                                        
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="text-center">
                                                <table class="table table-striped" style="border-radius:3px;">
                                                    
                                                    <tr>
                                                        <th class="custom_td"><?php echo translate('subject');?></th>
                                                        <td class="custom_td">
                                                            <?php echo $row['subject']?>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th class="custom_td"><?php echo translate('date_&_time');?></th>
                                                        <td class="custom_td">
                                                            <?php echo date('d M,Y h:i:s',$row['time']); ?>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
											 <script>
                                                $('.overer').click(function(){
                                                    var now = $(this);
                                                    if(now.hasClass('collapsed')){
                                                        now.css('background-color','#fff');
                                                        now.css('border-color','#fff');
                                                        now.find('.reth').css('color','#fff');
                                                    } else {
                                                        now.css('background-color','#F5F5F5');
                                                        now.css('border-color','#D8D8D8');
                                                        now.find('.reth').css('color','black');
                                                    }
                                                });
                                            </script>
											<?php
                                            $msgs=$this->db->get_where('ticket_message',array(' ticket_id'=>$row['ticket_id']))->result_array();
                                            foreach ($msgs as $row1){
                                                $from1 = json_decode($row1['from_where'],true);
                                            ?>
                                            <div id="up" style="margin-top:5px;">
                                              <div class="col-md-12 btn btn-md btn-default overer" data-toggle="collapse" data-target="#demo<?php echo $row1['ticket_message_id']; ?>" style="cursor:pointer; background-color: #F5F5F5; border-color: #D8D8D8;border-bottom: none! important; ">
                                                 <div class="col-md-2 text-left">
                                                    <div class="row" style="padding:5px;">
                                                        <?php
                                                            if($from1['type'] == 'admin'){
                                                        ?>
                                                            <img src="<?php echo $this->Crud_model->logo('admin_login_logo'); ?>" class="" style=" width:32px; height:32px" />
                                                        <?php
                                                            } else if($from1['type'] == 'user'){
                                                        ?>
                                                        <img <?php if(file_exists('uploads/user_image/user_'.$from['id'].'.jpg')){ ?>
                                                            src="<?php echo base_url(); ?>uploads/user_image/user_<?php echo $from1['id']; ?>.jpg"
                                                        <?php } else if($this->db->get_where('user',array('user_id'=>$from1['id']))->row()->fb_id !== ''){ ?>
                                                            src="https://graph.facebook.com/<?php echo $this->db->get_where('user',array('user_id'=>$from1['id']))->row()->fb_id; ?>/picture?type=large" 
                                                        <?php } else { ?>
                                                            src="<?php echo base_url(); ?>template/front/uploads/img/user.jpg"
                                                        <?php } ?>
                                                        class="" style=" width:32px; height:32px" alt="Profile Picture">
                                                        <?php
                                                            }
                                                        ?>
                                                    </div>
                                                 </div>
                                                 <div class="col-md-6 text-left">
                                                    <div class="row">
                                                        <div class="clearfix"></div>
                                                        <b><i>
                                                        <?php
                                                            
                                                            if($from1['type'] == 'admin'){
                                                                echo translate('admin');
                                                            } else if($from1['type'] == 'user'){
                                                                echo $this->Crud_model->get_type_name_by_id('user',$from1['id'],'username');
                                                            }
                                                        ?>
                                                        </i></b>
                                                     </div>
                                                    <div class="row reth" style="padding:5px 0; font-size:12px;">
                                                        <?php 
                                                            $msg=str_replace("<div>", "",$row1['message']);
                                                             $msg1=str_replace("</div>", "",$msg);
                                                        ?>
                                                            <?php echo strip_tags(limit_chars($msg1,50)); ?>
                                                     </div>
                                                  </div>
                                                 <div class="col-md-3 pull-right" style="font-size:10px;">
                                                        
                                                        <?php echo date('d F, Y h:i:s A',$row1['time']); ?>
                                                       
                                                  </div>
                                              </div>
                                              
                                              <div id="demo<?php echo $row1['ticket_message_id']; ?>" class="collapse" style="text-align:justify; border-bottom:1px solid #D8D8D8">
                                                <div class="col-md-12" style="padding:10px; background:#fff; font-size:12px; border:1px solid #CCC; border-top:none !important;">
                                                    <?php echo $row1['message']; ?> 
                                                </div>
                                              </div>
                                          </div>
                                            <?php }?>
                                        </div>
                                    </div>
                                    
                                    <div  class="">
                                        <?php
                                            echo form_open(base_url() . 'index.php/home/ticket_reply/'.$row['ticket_id'], array(
                                                'class' => 'form-horizontal',
                                                'method' => 'post',
                                                'id' => 'ticket_reply',
                                                'enctype' => 'multipart/form-data'
                                            ));
                                        ?>
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                            <center><label><h4><?php echo translate('reply_message');?></h4></label></center>
                                                       </div>
                                                       <hr>
                                                       <div class="col-md-12">
                                                            
                                                            <div class="row">
                                                                <textarea name="reply" style="color:#000" placeholder="<?php echo translate('message');?>" class="textarea col-md-12"  rows="7" ></textarea>                                                                  	
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="panel-footer" style="height:60px;">
                                                <div class="col-md-8">
                                                </div>
                                                <div class="col-md-4 window_set1">
                                                    <span class="btn btn-base btn-icon btn-icon-right btn-icon-go pull-right signup_btn1"  data-ing="<?php echo translate('creating');?>..."data-success="<?php echo translate('created!'); ?>" data-unsuccessful="<?php echo translate('failed!'); ?> <?php echo translate('try_again!'); ?>" data-reload="ok" >
                                                        <span><?php echo translate('create');?></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </form>
                                    </div>    
                                </div>
                            <?php
                                }
                            ?>   
                         </div>  
                     </div> 
                 </div>
        </div>
    </div>
</section>

<style>
	.custom_td{
		border-left: 1px solid #ddd;
		border-right: 1px solid #ddd;
		border-bottom: 1px solid #ddd;
	}
</style>
<script>
	$(document).ready(function(){
		load_textarea();
		$('.signup_btn1').on('click',function(event){
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
	});
</script>
