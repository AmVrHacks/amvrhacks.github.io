
<div class="" style="width:100%; height:100%">
	<?php
        echo form_open(base_url() . 'index.php/home/registration/add_info/', array(
            'class' => 'log-reg-v3 sky-form',
            'method' => 'post',
            'style' => 'padding:30px !important;',
            'id' => 'login_form'
        ));
		$fb_login_set = $this->Crud_model->get_type_name_by_id('general_settings','51','value');
		$g_login_set = $this->Crud_model->get_type_name_by_id('general_settings','52','value');
    ?> 
     <fieldset>           
        <section>
            <div class="row">
                <section class="col-xs-12">
                    <div class="form-group">
                        <label class="input">
                            <i class="icon-append fa fa-user"></i>
                            <input type="text" name="username" placeholder="<?php echo translate('name');?>">
                        </label>
                    </div>     
                </section>
                <section class="col-xs-12">
                    <div class="form-group">
                        <div class="form-group">
                            <label class="input">
                                <i class="icon-append fa fa-envelope-o"></i>
                                <input type="email" name="email" placeholder="<?php echo translate('e-mail');?>" class="emails">
                            </label>
                        </div>  
                    </div>               
                </section>
            </div>
            
            <section class="col-xs-12">
                <label class="input">
                    <i class="icon-append fa fa-map-marker"></i>
                    <input type="text" name="address1" placeholder="<?php echo translate('address_line1');?>">
                </label>
            </section>
        
            <section class="col-xs-12">
                <label class="input">
                    <i class="icon-append fa fa-map-marker"></i>
                    <input type="text" name="address2" placeholder="<?php echo translate('address_line2');?>">
                </label>
            </section>
            
            <section class="col-xs-12">
                <label class="input">
                    <i class="icon-append fa fa-phone"></i>
                    <input type="tel" name="phone" placeholder="<?php echo translate('phone');?>">
                </label>
            </section>
            
            <section>             
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="input">
                                <i class="icon-append fa fa-lock"></i>
                                <input type="password" class="pass1" name="password1" placeholder="<?php echo translate('password');?>" required>
                            </label>
                        </div>               
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="input">
                                <i class="icon-append fa fa-lock"></i>
                                <input type="password" class="pass2" name="password2" placeholder="<?php echo translate('re-enter_password');?>" required>
                                <div id='pass_note'></div> 
                            </label>
                        </div>               
                    </div>
                  </div>
    		 </section>
             
      </section>
      
      <section>
            <div class="row">
                <div class="col-md-8">
                    <label class="checkbox">
                        <input type="checkbox" name="terms" id="subscription">
                        <i></i><?php echo translate('i_accept_the'); ?> <a href="<?php echo base_url(); ?>index.php/home/legal/terms"><u><?php echo translate('terms_and_conditions'); ?></u></a>
                    </label>
                </div>
                <div class="col-md-4">
                    <span class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right enterer signup_btn" style="padding:5px;" type="submit" data-ing="<?php echo translate('signing_up');?>..." data-success="<?php echo translate('sign_up_successful!'); ?>" data-unsuccessful="<?php echo translate('sign_up_failed!'); ?> <?php echo translate('try_again!'); ?>"  data-reload="no" >
                        <span><?php echo translate('sign_up');?></span>
                    </span>
                </div>
            </div>
        </section>
        
        
        <section class="row text-center">
            <?php if($fb_login_set == 'ok' || $g_login_set == 'ok'){ ?>
            <section class="col-md-6">
                <div class="row columns-space-removes">
                <?php if($fb_login_set == 'ok'){ ?>
                    <div class="col-lg-12 pull-right <?php if($g_login_set !== 'ok'){ ?>mr_log<?php } ?> margin-bottom-10">
                    <?php if (@$user): ?>
                          <a class="btn btn-block btn-social btn-facebook pull-right" style="width:120px; margin-right:5px;" href="<?= $url ?>" >
                            <span class="fa fa-facebook"></span><?php echo translate('facebook');?>
                          </a>
                    <?php else: ?>
                          <a class="btn btn-block btn-social btn-facebook pull-right" style="width:120px; margin-right:5px;"  href="<?= $url ?>" >
                            <span class="fa fa-facebook"></span> <?php echo translate('facebook');?>
                          </a>
                    <?php endif; ?>
                    </div>
                </div>
            </section>
            <section class="col-md-6">
                <?php } if($g_login_set == 'ok'){ ?>     
                <div class="col-lg-12 pull-left <?php if($fb_login_set !== 'ok'){ ?>mr_log<?php } ?>">
                <?php if (@$g_user): ?>
                    <a href="<?= $g_url ?>" class="btn btn-block btn-social btn-google" style="width:120px" >
                        <span class="fa fa-google-plus"></span><?php echo translate('google+');?>
                    </a>
                <?php else: ?>
                     <a href="<?= $g_url ?>" class="btn btn-block btn-social btn-google" style="width:120px" >
                        <span class="fa fa-google-plus"></span><?php echo translate('google+');?>
                    </a>
                <?php endif; ?>
                </div>
                <?php } ?>
            </section>
            <?php } ?>
        </section>
    </fieldset>
      <div class="form-footer text-center">
        <p><?php echo translate('already_have_an_account_?');?> <span onclick="reg_to_sign();" data-ajax="<?php echo base_url(); ?>index.php/home/login_set/login"><?php echo translate('click_here_to');?> <u style="cursor:pointer;"><?php echo translate('sign_in');?></u></span></p>
      </div>
    
  </form>            
</div>
<script>
	function reg_to_sign(){
		$(".closeModal").click();
		setTimeout(function(){ signin(); }, 500);
	}
</script>