<script src="https://checkout.stripe.com/checkout.js"></script> 
<!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo translate('package_for');?> : <a href="<?php echo $this->Crud_model->product_link($product_id)?>" class="alt"><?php echo $product_name ; ?></a></h2>
            </div>
        </div>
    </div>
</div>
<?php
	$info = $product_info->result_array();
	$type = $user_info->row()->user_type;
?>
<section class="slice bg-white" style="min-height:400px">
    <div class="wp-section user-account">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
					<?php
                        echo form_open(base_url() . 'index.php/home/package_update/'.$product_info->row()->product_id, array(
                            'class' => 'sky-form',
                            'method' => 'post',
                            'enctype' => 'multipart/form-data',
                            'id' => 'product_package'
                        ));
                    ?>
                    <?php
                        foreach($info as $row){
                    ?>
                        <div class="col-md-3" id="package_current" >
                            <table class="table table-orders table-bordered table-striped table-responsive no-margin">
                                <tbody>
                                    <tr>
                                        <th>
                                            <?php echo translate('featured_till'); ?>
                                        </th>
                                        <td>
                                            <?php 
                                                if($row['f_till'] > time()){
                                                    echo date('d F, Y h:i:s A',$row['f_till']);
                                                } else {
                                                    echo translate('not_featured');
                                                }
                                            ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <?php echo translate('shown_till'); ?>
                                        </th>
                                        <td>
                                            <?php 
                                                if($row['s_till'] > time()){
                                                    echo date('d F, Y h:i:s A',$row['s_till']);
                                                } else {
                                                    echo translate('not_published');
                                                }
                                            ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <?php echo translate('current_package'); ?>
                                        </th>
                                        <td>
                                            <?php 
                                                if($type == 'default'){
                                            ?>
                                                <?php echo translate('default'); ?>
                                            <?php
                                                } else {
                                            ?>
                                               <?php
											   		$det = json_decode($product_info->row()->product_package_detail,true);
													if(empty($det)){
														$det = array('package'=>'');
													}
											   		echo $this->Crud_model->get_type_name_by_id('product_type',$det['package'],'name'); 
												?>
                                            <?php
                                                }
                                            ?>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    <?php
                        }
                    ?>
                    <div class="col-md-9">
                        <div class="col-md-12 light-gray mb-20 ba pt-10 ">
                            <div class="col-md-6">
                                <div class="pull-left">
                                    <h4><?php echo translate('choose_your_package_plan');?></h4>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <a href="<?php echo base_url(); ?>index.php/home/profile" class="pull-right">
                                    <i class="fa fa-arrow-left"></i> <u><i><?php echo translate('back_to_profile_page');?></i></u>
                                </a>
                            </div>
                        </div>
                    	<div class="tabs-framed">
                            <ul class="tabs clearfix">
                            	<?php if($type !== 'default'){ ?>
                                <li  class="active pdyu" ><a href="#tab-1" data-toggle="tab"><?php echo translate('select_from_current_user_package')?></a></li>
                                <?php } ?>
                                <li  class="<?php if($type == 'default'){ ?>active<?php } else { ?>pdyp<?php } ?>" ><a href="#tab-2" data-toggle="tab"><?php echo translate('pay_separately')?></a></li>
                                
                            </ul>
                            <div class="tab-content">
								<?php
                                    if($type !== 'default'){
                                ?>
                            	<div class="tab-pane fade in active" id="tab-1">
									<div class="row sam_pay" >
										<?php
											$pro_types = json_decode($user_info->row()->left_product_type,true);
										?>
											<div class="col-md-12" >
                                    
                                                <div class="col-md-12 srty text-center" style="display:none;margin-top:10px;">
                                                     <input class="btn btn-base" style="padding:5px;" type="submit" value="<?php echo translate('submit'); ?>" />
                                                </div>
                                            	
            									<div class="wp-section pricing-plans pricing-plans-2">
												<?php 
                                                    $i = 0;
                                                    foreach($pro_types as $row2){
                                                ?>
                                                    <div class="col-md-4">
                                                        <div class="wp-block <?php if($det['package'] == $row2['type']) { ?>popular success <?php }else { ?> default <?php }?>">
                                                            <div class="plan-header base">
                                                                <h5 class="plan-title" style="padding: 6px 0 !important;"><?php echo $this->Crud_model->get_type_name_by_id('product_type',$row2['type'],'name'); ?></h5>
                                                            </div>
                                                            <div class="plan-price">
                                                                <h3 class="price-tag">
                                                                    <span>
																		<?php echo translate('left'); ?> :
																		<?php echo $row2['number']; ?>
                                                                    </span>
                                                                </h3>
                                                                <span class="price-interval"> </span>
                                                            </div>
                                                            <ul>
                                                            <?php 
                                                                $details = json_decode($this->Crud_model->get_type_name_by_id('product_type',$row2['type'],'details'),true);
                                                            ?>
                                                                <li>
                                                                    <b><?php echo translate('featured_for'); ?></b> 
                                                                    <br> 
                                                                    <?php echo $details['f_for']; ?> 
                                                                    <br>  
                                                                    <?php if($this->Crud_model->get_type_name_by_id('product_type',$row2['type'],'defaults') == 'ok'){ ?>
                                                                    (<?php echo translate('from_the_time_of_upload'); ?>)
                                                                    <?php } else { ?>
                                                                    (<?php echo translate('from_the_time_of_payment'); ?>)
                                                                    <?php } ?>
                                                                </li>
                                                                <li>
                                                                    <b><?php echo translate('shown_for'); ?></b> 
                                                                    <br>  
                                                                    <?php echo $details['s_for']; ?> 
                                                                    <br>  
                                                                    <?php if($this->Crud_model->get_type_name_by_id('product_type',$row2['type'],'defaults') == 'ok'){ ?>
                                                                    (<?php echo translate('from_the_time_of_upload'); ?>)
                                                                    <?php } else { ?>
                                                                    (<?php echo translate('from_the_time_of_payment'); ?>)
                                                                    <?php } ?>
                                                                </li>
                                                            </ul>       
                                                            <p class="plan-select text-center">
                                                                <a href="#" class="btn btn-base btn-icon btn-check <?php if($det['package'] !== $row2['type']) { ?>package_select_al <?php } ?>" hidefocus="true" data-type="<?php echo $row2['type'];?>">
                                                                    <span>
                                                                        <?php 
                                                                            if($det['package'] == $row2['type']) { 
                                                                                echo translate('activated');
                                                                            } else {
                                                                                echo translate('get_package');
                                                                            }
                                                                        ?>
                                                                    </span>
                                                                </a>
                                                            </p>
                                                        </div>
                                                    </div>
                        
                                                <?php
                                                    }
                                                ?>
                                                </div>
                                    
                                                <div class="col-md-12 srty text-center" style="display:none;margin-top:10px;">
                                                     <input class="btn btn-base" style="padding:5px;" type="submit" value="<?php echo translate('submit'); ?>" />
                                                </div>
                                            	
												
											</div>
										
									</div>								
                                </div>
                                <input type="hidden" name="ch_type" id="pdnt" value="user" />
                                <input type="hidden" name="select_pt" id="sel_pt" value="<?php echo $det['package']; ?>" />
                                <script>
									$('.pdyp').click(function(){
										$('#pdnt').val('product');
										$('.srty').show();
									});
									$('.pdyu').click(function(){
										$('#pdnt').val('user');
										$('.srty').hide();
									});
									$('.package_select_al').click(function(){
										var now = $(this);
										var type = $(this).data('type');
										$('.srty').show();
										$('#sel_pt').val(type);
										$('.wp-block').removeClass('popular');
										$('.wp-block').addClass('default');
										now.closest('.wp-block').removeClass('default');
										now.closest('.wp-block').addClass('popular');
									});
								</script>
								<?php
                                    } else {
                                ?>
                                    <input type="hidden" name="ch_type" value="product" />
                                <?php
                                    }
                                ?>
                                <div class="tab-pane fade <?php if($type == 'default'){ ?>in active<?php } ?>" id="tab-2">
                                                                        
                                    <div class="wp-section pricing-plans pricing-plans-2">
                                        <div class="row">
                                            <?php 
                                                $product_types =$this->db->get_where('product_type',array('status'=>'ok'))->result_array();
												$det = json_decode($product_info->row()->product_package_detail,true);
												if(empty($det)){
													$det = array('package'=>'');
												}
                                                foreach($product_types as $row2){
                                            ?>
                                            <div class="col-md-4">
                                                <div class="wp-block <?php if($det['package'] == $row2['product_type_id']) { ?>popular success <?php }else { ?> default <?php }?>">
                                                    <div class="plan-header base">
                                                        <h5 class="plan-title" style="padding: 6px 0 !important;"><?php echo $row2['name']; ?></h5>
                                                    </div>
                                                    <div class="plan-price">
                                                        <h3 class="price-tag">
                                                            <span><?php echo currency($row2['price']); ?></sup>
                                                        </h3>
                                    						<span class="price-interval"> </span>
                                                    </div>
                                                    <ul>
                                                    <?php 
                                                        $details = json_decode($row2['details'],true);
                                                    ?>
                                                        <li>
															<b><?php echo translate('featured_for'); ?></b> 
                                                            <br> 
                                                            <?php echo $details['f_for']; ?>  
                                                            <br> 
                                                            <?php if($row2['defaults'] == 'ok'){ ?>
                                                            (<?php echo translate('from_the_time_of_upload'); ?>)
                                                            <?php } else { ?>
                                                            (<?php echo translate('from_the_time_of_payment'); ?>)
                                                            <?php } ?>
                                                        </li>
                                                        <li>
															<b><?php echo translate('shown_for'); ?></b> 
                                                            <br>  
                                                            <?php echo $details['s_for']; ?>  
                                                            <br> 
                                                            <?php if($row2['defaults'] == 'ok'){ ?>
                                                            (<?php echo translate('from_the_time_of_upload'); ?>)
                                                            <?php } else { ?>
                                                            (<?php echo translate('from_the_time_of_payment'); ?>)
                                                            <?php } ?>
                                                        </li>
                                                    </ul>       
                                                    <p class="plan-select text-center">
                                                        <a href="#" class="btn btn-base btn-icon btn-check <?php if($det['package'] !== $row2['product_type_id']) { ?>package_select <?php } ?>" hidefocus="true" data-price="<?php echo $row2['price'];?>" data-type="<?php echo $row2['product_type_id'];?>">
                                                            <span>
                                                                <?php 
                                                                    if($det['package'] == $row2['product_type_id']) {
                                                                        echo translate('activated');
                                                                    } else { 
                                                                        echo translate('get_package');
                                                                    }
                                                                ?>
                                                            </span>
                                                        </a>
                                                    </p>
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
                                   
                    <script>							
						$('.package_select').click(function(){
							var now = $(this);
							var price = now.data('price');
							$('.submit_btn').show('fast');
							if(price !== 0){
								$('.payment_method').show('fast');
							} else if(price == 0){
								$('.payment_method').hide('fast');
							}
							$('#noinoi').click();
							var type = now.data('type');
							$('#grand').html(price);
							$('#type').val(type);
							$('.wp-block').removeClass('popular');
							$('.wp-block').addClass('default');
							now.closest('.wp-block').removeClass('default');
							now.closest('.wp-block').addClass('popular');
						});
						$(document).ready(function(e) {
							$("#popup-pkg").activeModals({
								// Functionality
								popupType: "delayed",
								delayTime: 1000,
								exitTopDistance: 40,
								scrollTopDistance: 400,
								setCookie: false,
								cookieDays: 0,
								cookieTriggerClass: "setCookie-1",
								cookieName: "activeModal-1",
						
								// Overlay options
								overlayBg: true,
								overlayBgColor: "rgba(255, 255, 255, 0.72)",
								overlayTransition: "ease",
								overlayTransitionSpeed: "0.4",
						
								// Background effects
								bgEffect: "scaled",
								blurBgRadius: "2px",
								scaleBgValue: "1",
						
								// Window options
								windowWidth: "600px",
								windowHeight: "400px",
								windowLocation: "center",
								windowTransition: "ease",
								windowTransitionSpeed: "0.4",
								windowTransitionEffect: "fadeIn",
								windowShadowOffsetX: "0",
								windowShadowOffsetY: "0",
								windowShadowBlurRadius: "20px",
								windowShadowSpreadRadius: "0",
								windowShadowColor: "rgba(0,0,0,0.3)",
								windowBackground: "rgba(255,255,255,1)",
								windowRadius: "0px",
								windowMargin: "0px",
								windowPadding: "0px",
						
								// Close and reopen button
								closeButton: "icon",
								reopenClass: "set_payment_modal",
							});
							
                        });
                    </script>   
                    
                    <div class="foiop" style="display:block;">
                    	<span class="set_payment_modal manualLabel" id="noinoi" data-ajax=""></span>
                    </div>
                    <div id="popup-pkg" class="activeModal">
                        <div class="window window1">
                            <div class="window_set text-center" style="overflow:auto; padding:20px;">
                                <div class="col-md-12 payment_method" style="display:none;">
                                    <input type="hidden" name="product_type" id="type" value="0" >
                                    <span style="display:none;" id="grand"></span>
                                    <div class="cc-selector">
										<?php
                                            $p_set = $this->db->get_where('business_settings',array('type'=>'paypal_set'))->row()->value;
                                            $s_set = $this->db->get_where('business_settings',array('type'=>'stripe_set'))->row()->value;
                                            if($p_set == 'ok'){
                                        ?>
                                        <input id="visa" type="radio" name="payment_type" value="paypal" checked />
                                        <label class="drinkcard-cc visa" for="visa"></label>
                                        <?php
                                            } if($s_set == 'ok'){
                                        ?>
                                        <input id="mastercardd" type="radio" name="payment_type" value="stripe" />
                                        <label class="drinkcard-cc stripe" id="customButton" for="mastercardd"></label>
                                                    
                                        <script>
                                          var handler = StripeCheckout.configure({
                                            key: '<?php echo $this->db->get_where('business_settings' , array('type' => 'stripe_publishable'))->row()->value; ?>',
                                            //image: '<?php echo base_url(); ?>template/front/images/stripe.png',
                                            image: 'https://pbs.twimg.com/profile_images/497432038492733440/eW6tXeq3.png',
                                            token: function(token) {
                                              // Use the token to create the charge with a server-side script.
                                              // You can access the token ID with `token.id`
                                              
                                              $('.payment_method').append("<input type='hidden' name='stripeToken' value='" + token.id + "' />");
                                              
                                              if($( "#visa" ).length){
                                                $( "#visa" ).prop( "checked", false );
                                              }
                                              if($( "#mastercard" ).length){
                                                $( "#mastercard" ).prop( "checked", false );
                                              }
                                              $( "#mastercardd" ).prop( "checked", true );
                                              notify('<?php echo translate('your_card_details_verified!'); ?>','success','bottom','right'); 
                                            }
                                          });
                                    
                                          $('#customButton').on('click', function(e) {
                                            // Open Checkout with further options
                                            var total = $('#grand').html();
                                            total = total.replace("<?php echo currency(); ?>", '');
                                            total = parseFloat(total.replace(",", ''));
                                            total = total/parseFloat(<?php echo $this->Crud_model->get_type_name_by_id('business_settings', '8', 'value'); ?>);
                                            total = total*100;
                                            handler.open({
                                              name: '<?php echo $system_name = $this->db->get_where('general_settings',array('type' => 'system_name'))->row()->value;; ?>',
                                              description: '<?php echo translate('pay_with_stripe'); ?>',
                                              amount: total
                                            });
                                            e.preventDefault();
                                          });
                                    
                                          // Close Checkout on page navigation
                                          $(window).on('popstate', function() {
                                            handler.close();
                                          });
    
                                        </script>
                                        <?php
                                            }
                                        ?>
                                      </div>
                                </div>
                                
                                <div class="col-md-12 submit_btn text-center" style="display:none;margin-top:10px;">
                                    <button class="btn btn-base btn-icon btn-check" style="padding:10px;" type="submit" >
                                        <span><?php echo translate('submit'); ?></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
	$(document).ready(function(){
		set_select();
	});
</script>
<style>
.cc-selector input{
    margin:0;padding:0;
    -webkit-appearance:none;
       -moz-appearance:none;
            appearance:none;
}
.visa
{
	background-image:url(<?php echo base_url(); ?>uploads/others/paypal.jpg);
}
.mastercard
{
	background-image:url(<?php echo base_url(); ?>uploads/others/cod.jpg);
}
.stripe{
	background-image:url(<?php echo base_url(); ?>uploads/others/stripe.jpg);
}
.ccav{
	background-image:url(<?php echo base_url(); ?>uploads/others/ccav.jpg);
}
 
.cc-selector input:active +.drinkcard-cc
{
	opacity: 1;
	border:4px solid #169D4B;
}
.cc-selector input:checked +.drinkcard-cc{
	-webkit-filter: none;
	-moz-filter: none;
	filter: none;
	border:4px solid #8400C5;
}
.drinkcard-cc{
	cursor:pointer;
	background-size:contain;
	background-repeat:no-repeat;
	display:inline-block;
	width:272px;height:140px;
	-webkit-transition: all 100ms ease-in;
	-moz-transition: all 100ms ease-in;
	transition: all 100ms ease-in;
	-webkit-filter:opacity(.8);
	-moz-filter:opacity(.8);
	filter:opacity(.8);
	transition: all .6s ease-in-out;
	border:4px solid transparent;
	border-radius:5px !important;
}
.drinkcard-cc:hover{
	-webkit-filter:opacity(1);
	-moz-filter: opacity(1);
	filter:opacity(1);
	transition: all .6s ease-in-out;
	border:4px solid #8400C5;
			
}
.popular{
    border: 1px solid #e0eded;
    margin-top: 20px !important;
    -webkit-box-shadow: 0 0px 20px 5px rgba(0,0,0,0.3) !important;
    -moz-box-shadow: 0 0px 20px 5px rgba(0,0,0,0.3) !important;
    box-shadow: 0 0px 20px 5px rgba(0,0,0,0.3) !important;
}
</style>