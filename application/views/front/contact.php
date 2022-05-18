
<!-- MAIN CONTENT -->
<section class="slice no-padding">
    <div id="mapCanvas" class="map-canvas no-margin"></div>
</section>

<section class="slice bg-white">
    <div class="w-section inverse">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="section-title-wr">
                        <h3 class="section-title left"><span><?php echo translate('contacts_form');?></span></h3>
                    </div>
                    
                    <?php
						echo form_open(base_url() . 'index.php/home/contact/send', array(
							'class' => 'form-light mt-20',
							'method' => 'post',
							'enctype' => 'multipart/form-data',
							'id' => 'form-light'
						));
					?>
                    
                    
                        <div class="form-group">
                            <label><?php echo translate('name');?></label>
                            <input type="text" class="form-control required" name="name" id="name" placeholder="<?php echo translate('your_name');?>">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><?php echo translate('e-mail');?></label>
                                    <input type="email" class="form-control required" name="email" id="email" placeholder="<?php echo translate('email_address');?>">
                                </div>
                            </div>
               			</div>
                        <div class="form-group">
                            <label><?php echo translate('subject');?></label>
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="<?php echo translate('subject');?>">
                        </div>
                        <div class="form-group">
                            <label><?php echo translate('message');?></label>
                            <textarea class="form-control" name="message" id="message" placeholder="<?php echo translate('write_your_message_here');?>" style="height:100px;"></textarea>
                        </div>
                        <div class="form-group">
                            <?php echo $recaptcha_html; ?>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                
                            </div>
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-base btn-icon btn-icon-right btn-fly pull-right">
                                    <span><?php echo translate('send_message');?></span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                        	<?php
								$address	= $this->Crud_model->get_field('general_settings',38,'value');
								$phone		= $this->Crud_model->get_field('general_settings',39,'value');
								$email		= $this->Crud_model->get_field('general_settings',40,'value');
								
							?>
                            <div class="section-title-wr">
                                <h3 class="section-title left"><span><?php echo translate('business_info');?></span></h3>
                            </div>
                            <div class="contact-info">
                                <h5><i class="fa fa-map-marker"></i> <?php echo translate('address');?></h5>
                                <p><?php echo $address?></p>
                                
                                <h5><i class="fa fa-envelope"></i> <?php echo translate('email');?></h5>
                                <p><?php echo $email?></p>
                                
                                <h5><i class="fa fa-phone"></i> <?php echo translate('phone');?></h5>
                                <p><?php echo $phone?></p>
                            </div>
                        </div>
                        
                    </div>

                    <div class="section-title-wr">
                        <h3 class="section-title left"><span><?php echo translate('stay_connected');?></span></h3>
                    </div>
                    <?php
						echo $this->Crud_model->get_field('general_settings',44,'value'); 
					?>
                    <div class="social-media">
                        <?php
								$fb		= $this->Crud_model->get_field('social_links',1,'value');
								$goo	= $this->Crud_model->get_field('social_links',2,'value');
								$tw		= $this->Crud_model->get_field('social_links',3,'value');
								$sk		= $this->Crud_model->get_field('social_links',4,'value');
								$pin	= $this->Crud_model->get_field('social_links',5,'value');
								$y		= $this->Crud_model->get_field('social_links',6,'value');
						?>
                        <a href="<?php echo $fb  ; ?>"><i class="fa fa-facebook"></i></a>
                        <a href="<?php echo $goo ; ?>"><i class="fa fa-google-plus"></i></a>
                        <a href="<?php echo $tw  ; ?>"><i class="fa fa-twitter"></i></a>
                        <a href="<?php echo $sk  ; ?>"><i class="fa fa-skype"></i></a>
                        <a href="<?php echo $pin ; ?>"><i class="fa fa-pinterest"></i></a>
                        <a href="<?php echo $y   ; ?>"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=<?php echo $map_api; ?>"></script>
<script>
var map;

function initialize() {
  var myLatlng = new google.maps.LatLng<?php echo $this->Crud_model->get_field('general_settings',63,'value')?>;
  var mapOptions = {
    zoom: 18,
	scrollwheel: false,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(document.getElementById('mapCanvas'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
	  animation: google.maps.Animation.DROP,
      title: 'Hello World!'
  });
  
  var contentString = '<div class="info-window-content"><h2><?php echo $this->Crud_model->get_field('general_settings',38,'value')?></h2>'+
					  '<p>Some more details for directions or company informations...</p></div>';
					  
  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });
  
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

$('a[data-type="gmap"]').on('shown.bs.tab', function (e) {
  initialize();
})
</script>
<script>
	var valid_email = '<?php echo translate('must_be_a_valid_email_address'); ?>';
	var required = '<?php echo translate('required'); ?>';
	var sent = '<?php echo translate('message_sent!'); ?>';
	var incor = '<?php echo translate('incorrect_captcha!'); ?>';
	var required = '<?php echo translate('required'); ?>';
    var address = '<?php echo $address; ?>';
	var base_url = '<?php echo base_url(); ?>';
</script>