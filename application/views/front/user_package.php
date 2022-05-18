<script src="https://checkout.stripe.com/checkout.js"></script> 
<!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo translate('packages'); ?></h2>
            </div>
        </div>
    </div>
</div>

<section class="slice bg-white" style="min-height:400px">
    <div class="wp-section user-account">
        <div class="container">
            <div class="wp-section pricing-plans pricing-plans-2">
                <div class="row">
                    <?php
                        echo form_open(base_url() . 'index.php/home/user_package_update/', array(
                            'class' => 'sky-form',
                            'method' => 'post',
                            'enctype' => 'multipart/form-data',
                            'id' => 'product_package'
                        ));
                    ?>
                        <div class="col-md-4">
                                
                            <?php
                                $info = $user_info->result_array();
                                foreach($info as $row){
                            ?>
                                <div class="col-md-12" id="package_current" >
                                    <table class="table table-orders table-bordered table-striped table-responsive no-margin">
                                        <tbody>
                                            <tr>
                                                <th colspan="2" class="text-center">
                                                    <?php echo translate('your_user_package'); ?>
                                                </th>
                                            </tr>
                                            <?php 
                                                if($row['user_type'] !== 'default'){
                                            ?>
                                            <tr>
                                            	<td colspan="2" align="center">
                                                	<img class="img-responsive text-center" width="160" src="<?php echo $this->Crud_model->file_view('user_type',$row['user_type'],'','','thumb','src','',''); ?>" alt="User_Image" >
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <?php echo translate('expires_on'); ?>
                                                </th>
                                                <td>
                                                    <?php 
                                                        echo date('d F, Y h:i:s A',$row['user_type_till']);
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <?php echo translate('user_package'); ?>
                                                </th>
                                                <td>
                                                    <?php 
                                                        echo $this->db->get_where('user_type',array('user_type_id'=>$row['user_type']))->row()->name;
                                                    ?>
                                                </td>
                                            </tr>
                                            
                                            <?php
                                                } else {
                                            ?>
                                            <tr>
                                                <th>
                                                    <?php echo translate('user_package'); ?>
                                                </th>
                                                <td>
                                                    <?php 
                                                        echo translate('none');
                                                    ?>
                                                </td>
                                            </tr>                                        
        									<?php
                                                }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                                <br>
                                <div class="col-md-12 mt-20" id="package_current" >
                                    <table class="table table-orders table-bordered table-striped table-responsive no-margin">
                                        <tbody>
                                        	<tr>
                                                <th colspan="2" class="text-center">
                                                    <?php echo translate('ads_left_of_product_packages');?>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <?php echo translate('product_package'); ?>
                                                </th>
                                                <th>
                                                    <?php echo translate('unit_left'); ?>
                                                </th>
                                            </tr>
                                        <?php 
                                            $packages = json_decode($row['left_product_type'],true);
                                            foreach($packages as $row1){
                                        ?>
                                            <tr>
                                                <td>
                                                    <?php echo $this->Crud_model->get_type_name_by_id('product_type',$row1['type'],'name'); ?>
                                                </td>
                                                <td>
                                                    <?php echo $row1['number']; ?>
                                                </td>
                                            </tr>
                                        <?php
                                            }
                                        ?>
                                        </tbody>
                                    </table>
                                </div>
                            <?php
                                }
                            ?>
                        </div>
                        <div class="col-md-8">
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
                        	<div class="row">
        						<?php 
                                    $user_packages =$this->db->get_where('user_type',array('status'=>'ok'))->result_array();
                                    foreach($user_packages as $row2){
                                ?>
                                <div class="col-md-4">
                                    <div class="wp-block <?php if($user_info->row()->user_type == $row2['user_type_id']) { ?>popular success <?php }else { ?> default <?php }?>">
                                        <div class="plan-header base">
                                            <h2 class="plan-title" style="padding: 6px 0 !important;"><?php echo $row2['name']; ?></h2>
                                        </div>
                                        <div class="plan-price">
                                            <h3 class="price-tag">
                                                <span><?php echo currency($row2['price']); ?></sup>
                                            </h3>
                                            <span class="price-interval"><?php echo translate('time_limit'); ?> : <?php echo str_replace('"','',$row2['details']); ?> </span>
                                        </div>
                                        <ul>
                                        <?php 
                                            $packages = json_decode($row2['product_type'],true);
                                            foreach($packages as $row1){
                                        ?>
                                            <li><?php echo $this->Crud_model->get_type_name_by_id('product_type',$row1['product_type'],'name'); ?> : <?php echo $row1['piece']; ?> <?php echo translate('ads'); ?></li>
                                        <?php
                                            }
                                        ?>
                                        </ul>          
                                        <p class="plan-select text-center">
                                            <a href="#" class="btn btn-base btn-icon btn-check package_select" hidefocus="true" data-price="<?php echo $row2['price'];?>" data-type="<?php echo $row2['user_type_id'];?>">
                                                <span>
                                                    <?php 
                                                        if($user_info->row()->user_type == $row2['user_type_id']) { 
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
                                        <input type="hidden" name="user_type" id="type" value="0" >
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