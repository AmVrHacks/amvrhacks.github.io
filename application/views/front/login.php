
<div>
    <div class='login_html'>
        <div class="section-title-wr">
            <h3 class="section-title left"><?php echo translate('login_to_your_account');?></h3>
        </div>
		<?php
            echo form_open(base_url() . 'index.php/home/login/do_login/', array(
                'class' => 'form-light mt-20 log-reg-v3 sky-form',
                'method' => 'post',
                'enctype' => 'multipart/form-data',
                'id' => 'form-light'
            ));
            $fb_login_set = $this->Crud_model->get_type_name_by_id('general_settings','51','value');
            $g_login_set = $this->Crud_model->get_type_name_by_id('general_settings','52','value');
        ?>
            
         <fieldset>           
            <section>
                <div class="row">                 
                    <section>
                        <div class="form-group">
                            <label class="label"><?php echo translate('email');?></label>
                            <label class="input">
                                <i class="icon-append fa fa-user"></i>
                                <input type="email" name="email" required>
                            </label>
                        </div>     
                    </section>
                    <section>
                        <div class="form-group">
                            <label class="label"><?php echo translate('password');?></label>
                            <label class="input">
                                <i class="icon-append fa fa-lock"></i>
                                <input type="password" name="password" required>
                            </label>
                        </div>     
                    </section>
                </div>
        
               <section>
                    <div class="row">
                        <div class="col-md-8">
                        	<p><?php echo translate('not_registered_yet_!');?> <span onclick="sign_to_reg();" data-ajax="<?php echo base_url(); ?>index.php/home/login_set/login"><?php echo translate('click_here_to');?> <u style="cursor:pointer;"><?php echo translate('register');?></u></span></p>
                        </div>
                        <div class="col-md-4">
                            <span class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right login_btn enterer" style="padding:5px;" type="submit" data-ing='<span><?php echo translate('signing_in') ?></span>' >
                                <span><?php echo translate('sign_in');?></span>
                            </span>
                        </div>
                    </div>
                </section>
            </section>
            <section class="col-md-12">
                             
                <?php if($fb_login_set == 'ok' || $g_login_set == 'ok'){ ?>
                <section class="col-md-6">
                    <div class="row columns-space-removes">
                    <?php if($fb_login_set == 'ok'){ ?>
                        <div class="col-lg-12 <?php if($g_login_set !== 'ok'){ ?>mr_log<?php } ?> margin-bottom-10">
                        <?php if (@$user): ?>
                              <a class="btn btn-block btn-social btn-facebook pull-right" style="width:120px;margin-right:5px;" href="<?= $url ?>" >
                                <span class="fa fa-facebook"></span><?php echo translate('facebook'); ?>
                              </a>
                        <?php else: ?>
                              <a class="btn btn-block btn-social btn-facebook pull-right" style="width:120px;margin-right:5px;"  href="<?= $url ?>" >
                                <span class="fa fa-facebook"></span> <?php echo translate('facebook'); ?>
                              </a>
                        <?php endif; ?>
                        </div>
                    </div>
                </section>
                <section class="col-md-6">
                    <?php } if($g_login_set == 'ok'){ ?>     
                    <div class="col-lg-12 pull-right <?php if($fb_login_set !== 'ok'){ ?>mr_log<?php } ?>">
                    <?php if (@$g_user): ?>
                        <a href="<?= $g_url ?>" class="btn btn-block btn-social btn-google" style="width:120px" >
                            <span class="fa fa-google-plus"></span><?php echo translate('google+'); ?>
                        </a>
                    <?php else: ?>
                         <a href="<?= $g_url ?>" class="btn btn-block btn-social btn-google" style="width:120px" >
                            <span class="fa fa-google-plus"></span><?php echo translate('google+'); ?>
                        </a>
                    <?php endif; ?>
                    </div>
                    <?php } ?>
                </section>
                <?php } ?>
            </section>
            <section class="col-md-12 text-center">
                   <p><?php echo translate('lost_your_password?');?> <span  onClick="set_html('login_html','forget_html')"><u style="cursor:pointer;"><?php echo translate('click_here_to_recover');?></u></span></p>
            </section>
                
         </fieldset>
         
        </form>
   	</div>
    
    <div class='forget_html' style="display:none;">
        <?php
            echo form_open(base_url() . 'index.php/home/login/forget/', array(
                'class' => 'form-light mt-20 log-reg-v3 sky-form',
                'method' => 'post',
                'style' => 'padding:30px !important;',
                'id' => 'form-light'
            ));
        ?>
            <div class="section-title-wr">
                <h3 class="section-title left"><?php echo translate('forgot_password');?></h3>
            </div>
            
         	<fieldset>           
            <section>
                <div class="row">                 
                    <section>
                        <div class="form-group">
                            <label class="label"><?php echo translate('email');?></label>
                            <label class="input">
                                <i class="icon-append fa fa-user"></i>
                                <input type="email" name="email" required>
                            </label>
                        </div>     
                    </section>
                </div>        
               <section>
                    <div class="row">
                        <div class="col-md-8">
                        </div>
                        <div class="col-md-4">
                            <span class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right enterer forget_btn" style="padding:5px;" type="submit" data-ing='<span><?php echo translate('signing_in') ?></span>' >
                                <span><?php echo translate('submit');?></span>
                            </span>
                        </div>
                    </div>
                </section>
            </section>
                  
            <section class="col-md-12">
                   <p><span onClick="set_html('forget_html','login_html')"><u style="cursor:pointer;"><?php echo translate('click_here_to_login');?></u></span></p>
            </section>
                
         </fieldset>
       </form>
    </div>
    
    
</div>
          

<script>
	function set_html(hide,show){
		$('.'+show).show('fast');
		$('.'+hide).hide('fast');
	}

	function sign_to_reg(){
		$(".closeModal").click();
		setTimeout(function(){ reg(); }, 500);
	}
</script>