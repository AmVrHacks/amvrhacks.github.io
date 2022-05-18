
<?php
	foreach($product_info as $row){
?>
<div>
    <div class="section-title-wr">
        <h3 class="section-title left"><?php echo translate('contact_author');?></h3>
    </div>
    <?php
        echo form_open(base_url() . 'index.php/home/email_tracing/'.$row['product_id'].'/', array(
            'class' => 'form-light mt-20 log-reg-v3 sky-form',
            'method' => 'post',
            'enctype' => 'multipart/form-data',
            'id' => 'form-light'
        ));
    ?>
        
     <fieldset>           
        <section>
            <div class="row">
                <section class="col-xs-12">
                    <div class="form-group">
                        <label class="input">
                            <i class="icon-append fa fa-user"></i>
                            <input type="text" name="email" placeholder="<?php echo translate('your_email'); ?>">
                            <b class="tooltip tooltip-bottom-right"><?php echo translate('enter_your_valid_email'); ?></b>
                        </label>
                    </div>     
                </section>
                <section class="col-xs-12">
                    <div class="form-group">
                        <div class="form-group">
                            <label class="input">
                                <i class="icon-append fa fa-envelope-o"></i>
                                <input type="email" name="phone" placeholder="<?php echo translate('your_phone'); ?>" class="emails">
                                <b class="tooltip tooltip-bottom-right"><?php echo translate('enter_your_phone'); ?></b>
                            </label>
                        </div>  
                    </div>               
                </section>
                <section class="col-xs-12">
                    <div class="form-group">
                        <div class="form-group">
                            <label class="textarea">
                                <textarea name="message" placeholder="<?php echo translate('your_message'); ?>" class="address" rows='4'></textarea>
                            </label>
                        </div>  
                    </div>               
                </section>
            </div>
  	
           <section>
                <div class="row">
                    <div class="col-md-8">
                        <label class="checkbox">
                            <input type="checkbox" name="terms" id="subscription">
                            <i></i> <?php echo translate('i_accept_the'); ?><a href="<?php echo base_url(); ?>index.php/home/legal/terms"><?php echo translate('terms_and_conditions'); ?></a> <?php echo translate('of_this_website'); ?>.
                        </label>
                    </div>
                    <div class="col-md-4">
                        <span class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right author_contact_submitter" style="padding:5px;" type="submit" data-success="<?php echo translate('contact_message_sent_to_owner!'); ?>" data-unsuccessful="<?php echo translate('message_sending_unsuccessful!'); ?>" >
                            <span><?php echo translate('send_message');?></span>
                        </span>
                    </div>
                </div>
            </section>
        </section>
     </fieldset>
     
	</form>
</div>
<?php
	}
?>