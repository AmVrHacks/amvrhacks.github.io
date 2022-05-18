
 <!-- FOOTER -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="col">
                       <h4><?php echo translate('contact_us')?></h4>
                       <ul>
                       		<?php
								$address	= $this->Crud_model->get_field('general_settings',38,'value');
								$phone		= $this->Crud_model->get_field('general_settings',39,'value');
								$email		= $this->Crud_model->get_field('general_settings',40,'value');
								$web		= $this->Crud_model->get_field('general_settings',41,'value');
							?>
                            <li>
								<?php echo translate('address  :  ');?>
								<?php echo $address?>
                            </li>
                            <li>
								<?php echo translate('phone  :  '); ?>
								<?php echo $phone?> 
                            </li>
                            <li>
								<?php echo translate('email  :  '); ?>
                                    <a href="<?php echo $email?>" title="<?php echo translate('email_us'); ?>">
                                        <?php echo $email?>
                                    </a>
                           	</li>
       						<li>
								<?php echo translate('website  :  '); ?>
                                	<a href="<?php echo $web?>" title="Email Us">
										<?php echo translate($web); ?>
                                    </a>
                            </li>                     
                           
                            
                        </ul>
                     </div>
                </div>
                
                <div class="col-md-3">
                    <div class="col">
                        <h4><?php echo translate('mailing_list'); ?></h4>
                        <p><?php echo translate('sign_up_if_you_would_like_to_receive_occasional_treats_from_us.'); ?>S</p>
						<?php
                            echo form_open(base_url() . 'index.php/home/subscribe', array(
                                'class' => 'form-horizontal form-light',
                                'method' => 'post'
                            ));
                        ?>   
                            <div class="input-group">
                                <input type="text" class="form-control" name="email" id="subscr" placeholder="<?php echo translate('your_email_address...'); ?>">
                                <span class="input-group-btn">
                                    <div class="btn btn-base subscriber enterer"  ><?php echo translate('go!'); ?></div>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>


                <div class="col-md-3">
                    <h4><?php echo translate('follow_us'); ?></h4>
                    <?php
                        $fb		= $this->Crud_model->get_field('social_links',1,'value');
                        $goo	= $this->Crud_model->get_field('social_links',2,'value');
                        $tw		= $this->Crud_model->get_field('social_links',3,'value');
                        $sk		= $this->Crud_model->get_field('social_links',4,'value');
                        $pin	= $this->Crud_model->get_field('social_links',5,'value');
                        $y		= $this->Crud_model->get_field('social_links',6,'value');
                    ?>
    
                    <ul class="social-nav model-2">
                        <li><a href="<?php echo $tw  ; ?>" class="twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="<?php echo $fb  ; ?>" class="facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="<?php echo $goo ; ?>" class="google-plus"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="<?php echo $sk  ; ?>" class="skype"><i class="fa fa-skype"></i></a></li>
                        <li><a href="<?php echo $pin  ; ?>" class="pinterest"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="<?php echo $y  ; ?>" class="youtube"><i class="fa fa-youtube-play"></i></a></li>
                    </ul>
                </div>
                
                 <div class="col-md-3">
                    <div class="col">
                        <h4><?php echo translate('about_us'); ?></h4>
                        <?php
								$abt	= $this->Crud_model->get_field('general_settings',42,'value');
						?>
                        <p class="no-margin">
                        	<?php echo $abt; ?>
                        <br><br>
                        
                        </p>
                    </div>
                </div>
            </div>
            
            <hr>
            
            <div class="row">
                <div class="col-lg-9 copyright">
                    <?php echo $system_name; ?> | <?php echo translate('all_rights_reserved'); ?>
                    <a href="<?php echo base_url(); ?>index.php/home/legal/terms_conditions"><?php echo translate('terms_and_conditions')?></a>
                </div>
                <div class="col-lg-3">
                    <a href="<?php echo base_url(); ?>" title="" class="">
                        <img src="<?php echo $this->Crud_model->logo('home_bottom_logo'); ?>" alt="Logo" class="pull-right" height="40px;">
                    </a>
                </div>
            </div>
        </div>
    </footer>
</div>
