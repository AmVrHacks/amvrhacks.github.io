<?php
	echo form_open(base_url() . 'index.php/home/package_update/', array(
		'class' => 'sky-form',
		'method' => 'post',
		'enctype' => 'multipart/form-data',
		'id' => 'product_package'
	));
?>
<center>
<?php
	$info = $product_info->result_array();
	foreach($info as $row){
?>
	<div class="col-md-12" id="package_current" >
		<h1><?php echo translate('current_state'); ?></h1>
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
							if($row['premium_type'] == 'free'){
						?>
                        	Default
                        <?php
							} else {
						?>
                        	<?php echo $this->Crud_model->get_type_name_by_id('product_type',$row['premium_type'],'name'); ?>
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
<?php echo $this->Crud_model->select_html('product_type', 'product_type', 'name', 'add', 'demo-chosen-select', '', 'status', 'ok', 'get_res'); ?>
<input type="hidden" name="product" value="<?php echo $product_info->row()->product_id; ?>" />
<script>
	function get_res(type){
		$('.packages').hide();
		$('#package_'+type).show();
		if(type == '8'){
			$('.payment_method').hide();
		} else {
			$('.payment_method').show();
			$('#grand').html($('#price_'+type).html());
		}
	}
</script>

<?php
	$packages = $this->db->get_where('product_type',array('status'=>'ok'))->result_array();
	foreach($packages as $row){
		$details = json_decode($row['details'],true);
?>
	<div class="col-md-12 packages" id="package_<?php echo $row['product_type_id']; ?>" style="display:none;" >
		<h1><?php echo $row['name']; ?></h1>
        <table class="table table-orders table-bordered table-striped table-responsive no-margin">
        	<tbody>
            	<tr>
                    <th>
                    	<?php echo translate('featured_for'); ?>
                    </th>
                    <td>
                    	<?php echo $details['f_for']; ?> 
                        <?php if($row['defaults'] == 'ok'){ ?>
                        (<?php echo translate('from_the_time_of_upload'); ?>)
                        <?php } else { ?>
                        (<?php echo translate('from_the_time_of_payment'); ?>)
                        <?php } ?>
                    </td>
                </tr>
            	<tr>
                    <th>
                    	<?php echo translate('shown_for'); ?>
                    </th>
                    <td>
                    	<?php echo $details['s_for']; ?> 
                        <?php if($row['defaults'] == 'ok'){ ?>
                        (<?php echo translate('from_the_time_of_upload'); ?>)
                        <?php } else { ?>
                        (<?php echo translate('from_the_time_of_payment'); ?>)
                        <?php } ?>
                    </td>
                </tr>
            	<tr>
                    <th>
                    	<?php echo translate('price'); ?>
                    </th>
                    <td id="price_<?php echo $row['product_type_id']; ?>">
                    	<?php echo currency($row['price']); ?>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
<?php
	}
?>
<div class="col-md-12 payment_method" style="display:none;">
	<span style="display:none;" id="grand"></span>
    <input type="radio" name="payment_type" id="paypal" value="paypal" checked /> <?php echo translate('paypal');?> <br>
    <input type="radio" name="payment_type" id="stripe" value="stripe" /><?php echo translate('stripe');?>  <br>
    <script>
      var handler = StripeCheckout.configure({
        key: '<?php echo $this->db->get_where('business_settings' , array('type' => 'stripe_publishable'))->row()->value; ?>',
        //image: '<?php echo base_url(); ?>template/front/images/stripe.png',
        image: 'https://pbs.twimg.com/profile_images/497432038492733440/eW6tXeq3.png',
		token: function(token) {
          // Use the token to create the charge with a server-side script.
          // You can access the token ID with `token.id`
          
          $('.payment_method').append("<input type='hidden' name='stripeToken' value='" + token.id + "' />");
          if($( "#paypal" ).length){
            $( "#paypal" ).prop( "checked", false );
          }
          $( "#stripe" ).prop( "checked", true );
          notify('<?php echo translate('your_card_details_verified!'); ?>','success','bottom','right');
          setTimeout(function(){ $('#cart_form').submit(); }, 500); 
        }
      });

      $('#stripe').on('click', function(e) {
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
</div>
</center>
<input class="btn btn-base" type="submit" />
</form>