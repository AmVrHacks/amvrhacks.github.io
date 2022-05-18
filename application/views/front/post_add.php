<?php
	$email = '';
	$phone = '';
	$address = '';
	$langlat = '';
	$user_type = '';
	$left_product_type = '[]';
	$langlat = '';
	if($this->session->userdata('surfer_info') !== ''){
		$surfer_info = json_decode($this->session->userdata('surfer_info'),true);
		$lat = $surfer_info['lat'];
		$lon = $surfer_info['lon'];
		$langlat = '('.$lat.','.$lon.')';
	}
	
	if($this->session->userdata('user_login')== "yes"){
		$user 				=	$this->session->userdata('user_id');
		$user_data 			= $this->db->get_where('user',array('user_id'=>$user))->row();
		$email 				= $user_data->email;
		$phone 				= $user_data->phone;
		$address1 			= $user_data->address1;
		$address2 			= $user_data->address2;;
		$langlat 			= $user_data->langlat;
		$address 			= $address1.$address2;
		$user_type 			= $user_data->user_type;
		$left_product_type 	= $user_data->left_product_type;
	}
	
?>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false&key=<?php echo $map_api; ?>"></script>
<!-- Generic page styles -->
<link rel="stylesheet" href="<?php echo base_url();?>template/front/file_upload/css/style.css">
<!-- blueimp Gallery styles -->
<link rel="stylesheet" href="<?php echo base_url();?>template/front/file_upload/css/blueimp-gallery.min.css">
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="<?php echo base_url();?>template/front/file_upload/css/jquery.fileupload.css">
<link rel="stylesheet" href="<?php echo base_url();?>template/front/file_upload/css/jquery.fileupload-ui.css">


<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript><link rel="stylesheet" href="<?php echo base_url();?>template/front/file_upload/css/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="<?php echo base_url();?>template/front/file_upload/css/jquery.fileupload-ui-noscript.css"></noscript>
<!-- Page scripts -->

<!-- MAIN CONTENT -->   
<section class="slice bg-white">
        <div class="wp-section shop">
            <div class="container">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10 col-sm-10">                   
                        <div class="wp-block default user-form">
                            <div class="form-header base">
                                <h2 style="color:#fff !important; text-align:center;"><?php echo translate('post_your_advertise'); ?></h2>
                            </div>
                            <div class="form-body">
                               		<?php
										echo form_open(base_url() . 'index.php/home/product_upload/', array(
											'class' => 'sky-form',
											'method' => 'post',
											'id' => 'fileupload',
											'enctype' => 'multipart/form-data'
										));
									?>
                                	<fieldset class="no-padding">           
                                        <section class="no-margin">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <div class="form-group">
                                                            <label class="label"><?php echo translate('e-mail'); ?></label>
                                                            <label class="input">
                                                                <i class="icon-append fa fa-envelope-o"></i>
                                                                <input type="email" name="email" placeholder="<?php echo translate('email'); ?>" value="<?php echo $email; ?>">
                                                                
                                                            </label>
                                                        </div>  
                                                    </div>               
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label class="label"><?php echo translate('phone_number'); ?></label>
                                                        <label class="input">
                                                            <i class="icon-append fa fa-user"></i>
                                                            <input type="text" name="phone" placeholder="<?php echo translate('enter_your_phone_no'); ?>" required value="<?php echo $phone; ?>">
                                                           
                                                        </label>
                                                    </div>               
                                                </div>
                                            </div> 
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                    	<label class="label"><?php echo translate('address'); ?></label>
                                                        <label class="textarea">
                                                            <textarea rows="2" name="address" placeholder="<?php echo translate('your_address')?>" class="address" onblur="set_cart_map('iio');" > <?php echo $address; ?></textarea>
                                                        </label>
                                                    </div>               
                                                </div>
                                            </div>
                                        
                                            <section class="col-md-8" id="lnlat" style=" display:none;">
                                                <label class="input">
                                                    <i class="icon-append fa fa-home"></i>   
                                                    <input id="langlat" type="text" placeholder="langitude - latitude" name="lat_lang" value="<?php echo $langlat; ?>" class="form-control required" readonly>
                                                </label>
                                            </section>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="" id="maps" style="height:400px;" >
                                                            <div id="map-canvas" style="height:400px;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>   
                                        </section>
                                        <p>
                                        	<h6>
												<?php echo translate('please_fill_your_product_information'); ?>
                                            </h6>
                                        </p>
                                    </fieldset>                                   
                                    <fieldset class="no-padding"> 
                                    	<br />
                                        <section class="no-margin">
                                        	<div class="row">
                                            	<div class="col-md-12">
                                                	<div class="form-group">
                                                    <label class="label"><?php echo translate('category'); ?></label>
                                                    <label class="select">
                                                        <?php echo $this->Crud_model->select_html('category','category','name','add','demo-chosen-select required','','','','get_cat'); ?>
                                                    </label>
                                                </div>
                                                </div>
                                                <div class="col-md-12">
                                                	<div class="form-group">
                                                    <label class="label"><?php echo translate('sub_category'); ?></label>
                                                    <label id="sub_cat" class="select">
                                                        <select name="sub_category" class=" demo-chosen-select" >
                                                            <option value="0" selected="" disabled=""><?php echo translate('choose_one'); ?></option>
                                                        </select>
                                                    </label>
                                                </div>
                                                </div>
                                        	</div>
                                        </section>          
                                        <section class="no-margin">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label class="label"><?php echo translate('product_title'); ?></label>
                                                        <label class="input">
                                                            <input type="text" name="title" placeholder="<?php echo translate('enter_your_product_title'); ?>">
                                                        </label>
                                                    </div>               
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <div class="form-group">
                                                            <label class="label"><?php echo translate('product_model'); ?></label>
                                                            <label class="input">
                                                                <input type="text" name="model" placeholder="<?php echo translate('enter_your_product_model'); ?>">
                                                            </label>
                                                        </div>  
                                                    </div>               
                                                </div>
                                            </div>
                                        </section>
                                        <section>
                                            <label class="textarea">
                                            	<label class="label"><?php echo translate('product_description'); ?></label>
                                                <textarea rows="6" name="description" class="textarea" placeholder="<?php echo translate('enter_your_product_description'); ?>"></textarea>
                                            </label>
                                        </section>
                                        
                                        <section>
                                            <label class="textarea">
                                            	<label class="label"><?php echo translate('tags'); ?></label>
                                                <textarea rows="2" name="tag" placeholder="<?php echo translate('comma_seperated_tags'); ?>"></textarea>
                                            </label>
                                        </section>
                                        
                                        <section class="no-margin">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label class="label"><?php echo translate('product_condition'); ?></label>
                                                        <label class="select">
                                                        <select name="condition" class="demo-chosen-select">
                                                            <option value="used" selected="" disabled=""><?php echo translate('condition'); ?></option>
                                                            <option value="used"><?php echo translate('used'); ?></option>
                                                            <option value="new"><?php echo translate('new'); ?></option>
                                                        </select>
                                                        
                                                    </label>
                                                    </div>               
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <div class="form-group">
                                                            <label class="label"><?php echo translate('product_price'); ?> (<?php echo currency(); ?>)</label>
                                                            <label class="input">
                                                                <input type="number" name="price" placeholder="">
                                                            </label>
                                                        </div>  
                                                    </div>               
                                                </div>
                                            </div>
                                        </section>
                                        
                                        <section>
                                        	<div class="addition"></div>
                                            <div class="col-md-7">
                                            	<span class="btn btn-sm btn-base btn-icon btn-icon-left fa-plus pull-right add_addition mb-15">
                                                    <span><?php echo translate('add_more_specification');?></span>
                                                </span>
                                            </div>
                                        </section>
                                        
                                    </fieldset>
                                    
                                    <!-- Redirect browsers with JavaScript disabled to the origin page -->
                                    <fieldset>
                                        <noscript><input type="hidden" name="redirect" value=""></noscript>
                                        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
                                        <div class="row fileupload-buttonbar" style="margin-top:10px;">
                                            <div class="col-lg-12">
                                                <span class="btn btn-sm btn-base btn-icon btn-icon-left fa-camera pull-left fileinput-button">
                                                   
                                                    <span><?php echo translate('add_images'); ?></span>
                                                    <input type="file" name="files[]" multiple>
                                                </span>
                                                <!-- The global file processing state -->
                                                <span class="fileupload-process"></span>
                                            </div>
                                            <!-- The global progress state -->
                                            <div class="col-lg-5 fileupload-progress fade">
                                                <!-- The global progress bar -->
                                                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                                                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                                                </div>
                                                <!-- The extended global progress state -->
                                                <div class="progress-extended">&nbsp;</div>
                                            </div>
                                        </div>
                                        <!-- The table listing the files available for upload/download -->
                                        <div role="presentation" class="tableh tableh-striped" ><ul class="files" id="sortable"></ul></div>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-9">
                                                    <label class="checkbox">
                                                        <input type="checkbox" name="terms" id="subscription">
                                                        <i></i> <?php echo translate('i_accept_the'); ?> <a href="#"><?php echo translate('terms_and_conditions'); ?></a>.
                                                    </label>
                                                </div>
                                                <div class="col-md-3">
                                                    <span class="btn btn-base btn-icon btn-icon-right fa-upload pull-right upload_files">
                                                        <span class="submit_button" 
                                                        	data-ing="<?php echo translate('uploading..'); ?>"
                                                        	data-success="<?php echo translate('post_added_successfully'); ?>"
                                                        	data-unsuccessful="<?php echo translate('post_adding_unsuccessful'); ?>">
                                                            <?php echo translate('upload');?>
                                                        </span>
                                                    </span>
                                                </div>
                                        	</div>
                                        </section>
                                    </fieldset>
                                </form>
                            </div>
                            <div class="form-footer base">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </div>
        </div>
    </section>
 
  <script>
	  $('.addition').on('click','.remove_addition',function(){
		  $(this).closest('.addition_field').remove();
	  });
	  $('.add_addition').on('click',function(){
		  $('.addition').append(''
		  	+'<div class="row addition_field">'
			+'	<div class="col-xs-4">'
			+'		<div class="form-group">'
			+'			<div class="form-group">'
			+'				<label class="label"><?php echo translate('specification_title'); ?></label>'
			+'				<label class="input">'
			+'					<input type="text" name="stitle[]" placeholder="">'
			+'				</label>'
			+'			</div>'  
			+'		</div>'
			+'	</div>'
			+'	<div class="col-xs-6">'
			+'		<div class="form-group">'
			+'			<div class="form-group">'
			+'				<label class="label"><?php echo translate('specification_details'); ?></label>'
			+'				<label class="input">'
			+'					<input type="text" name="sdetails[]" placeholder="">'
			+'				</label>'
			+'			</div>'
			+'		</div>'
			+'	</div>'
			+'	<div class="col-xs-2">'
			+'		<div class="form-group">'
			+'			<div class="form-group">'
			+'				<label class="label"><?php echo translate('remove'); ?></label>'
			+'				<label class="input">'
			+'				    <span class="btn btn-sm btn-danger btn-icon btn-icon-right fa-trash remove_addition">'
			+'					    '
			+'					    <span><?php echo translate('remove'); ?></span>'
			+'				    </span>'
			+'				</label>'
			+'			</div>'  
			+'		</div>'
			+'	</div>'
			+'</div>');
	  });
	  $('.upload_files').on('click',function(){
		<?php
			if($this->db->get_where('general_settings',array('type'=>'post_without_login'))->row()->value == 'ok'){
		?>
		form_submit('fileupload');
		<?php
			} else {
		?>
        var state = check_login_stat('state');
        state.success(function (data) {
            if(data == 'hypass'){
				form_submit('fileupload');
            } else {
				signin();
			}
        }); 
		<?php
			}
		?>
				
	  });
	  
	  
	  $(function() {
		$( "#sortable" ).sortable({
		  placeholder: "ui-state-highlight"
		});
		$( "#sortable" ).disableSelection();
	  });
  </script>
  <div id="post_add_page"></div>
<!-- The template to display files available for upload -->
<script type="text/javascript">
	var upload_url = '<?php echo base_url();?>index.php/home/akiba_image_upload';
</script>
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <li class="template-upload fade ui-state-default row">
        <span class="col-md-2">
            <span class="preview"></span>
        </span>
        <span class="col-md-4">
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </span>
        <span class="col-md-3">
            <p class="size"><?php echo translate('processing.....'); ?></p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </span>
        <span class="col-md-3">
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span><?php echo translate('start'); ?></span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span><?php echo translate('cancel'); ?></span>
                </button>
            {% } %}
        </span>
    </li>
{% } %}
</script>
 
<style type="text/css">
    .ui-state-default{
        padding: 10px;
        border:1px solid #E6E6E6;
		border-radius:4px;
        margin: 10px;
		background: #F9F9F9;
		cursor:move;
    }
    .ui-state-highlight{
        height: 80px;
        width: 100%;
        padding: 10px;
        border: 1px dotted #E6E6E6;
		border-radius:4px;
        position: relative;
    }
    .ui-sortable-helper{
        height: 80px;
        width: 100%;
        position: relative;
    }
</style>

<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <li class="template-download fade ui-state-default row" style="position:relative;">
			<span class="col-md-2">
				<span class="preview">
					{% if (file.url) { %}
						<a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}" width="80" height="60"></a>
					{% } %}
				</span>
				<input type="hidden" name="files_data[]" value="{%=file.name%}" />
			</span>
			<span class="col-md-4">
				<p class="name">
					{% if (file.url) { %}
						<a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
					{% } else { %}
						<span>{%=file.name%}</span>
					{% } %}
				</p>
				{% if (file.error) { %}
					<div><span class="label label-danger"><?php echo translate('error'); ?></span> {%=file.error%}</div>
				{% } %}
			</span>
			<span class="col-md-3">
				<span class="size">{%=o.formatFileSize(file.size)%}</span>
			</span>
			<span class="col-md-3">
				{% if (file.deleteUrl) { %}
					<button class="btn btn-xs btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
						<i class="glyphicon glyphicon-trash"></i>
						<span><?php echo translate('delete'); ?></span>
					</button>
				{% } else { %}
					<button class="btn btn-xs btn-warning cancel">
						<i class="glyphicon glyphicon-ban-circle"></i>
						<span><?php echo translate('cancel'); ?></span>
					</button>
				{% } %}
			</span>
    </li>
{% } %}
</script>

<script>
    var base_url = '<?php echo base_url(); ?>';
    $(document).ready(function(){
        set_cart_map();
    });

    function set_cart_map(tty){
        //$('#maps').animate({ height: '400px' }, 'easeInOutCubic', function(){});
        initialize();
        var address = [];
        //$('#pos').show('fast');
        //$('#lnlat').show('fast');
        $('.address').each(function(index, value){
            if(this.value !== ''){
				//alert('-'+this.value+'-')
                address.push(this.value);
            }
        });
		
		address = address.toString();
        
        deleteMarkers();
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK || address == ' ') {
                if($('#langlat').val().indexOf(',')  == -1 || $('#first').val() == 'no' || tty == 'iio'){
					//alert('1');
                    deleteMarkers();
                    var location = results[0].geometry.location; 
                    var marker = addMarker(location);
                    map.setCenter(location);
                    $('#langlat').val(location);
                } else if($('#langlat').val().indexOf(',')  >= 0){
					//alert('2');
                    deleteMarkers();
                    var loca = $('#langlat').val();
                    loca = loca.split(',');
                    var lat = loca[0].replace('(','');
                    var lon = loca[1].replace(')','');
                    var marker = addMarker(new google.maps.LatLng(lat, lon));
                    map.setCenter(new google.maps.LatLng(lat, lon));
                }
                if($('#first').val() == 'yes'){
                    $('#first').val('no');
                }
                // Add dragging event listeners.
                google.maps.event.addListener(marker, 'drag', function() {
                    $('#langlat').val(marker.getPosition());
                });
            }
        }); 
    }

        var geocoder;
        var map;
        var markers = [];
        function initialize() {
            geocoder = new google.maps.Geocoder();
            var latlng = new google.maps.LatLng(-34.397, 150.644);
            var mapOptions = {
                zoom: 14,
                center: latlng
            }
            map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            google.maps.event.addListener(map, 'click', function(event) {
                deleteMarkers();
                var marker = addMarker(event.latLng);
                $('#langlat').val(event.latLng);    
                // Add dragging event listeners.
                google.maps.event.addListener(marker, 'drag', function() {
                    $('#langlat').val(marker.getPosition());
                });
                
            });     
        }
        

    /*
        var address = [];
        $('#maps').show('fast');
        $('#pos').show('fast');
        $('#lnlat').show('fast');
        $(".address").each(
        address.push(this.value);
        );
    */

        $('.address').on('blur', function(){
			$('#langlat').val('');
            set_cart_map();
        });

        // Add a marker to the map and push to the array.
        function addMarker(location) {
            var image = {
                url: base_url+'uploads/others/marker.png',
                size: new google.maps.Size(40, 60),
                origin: new google.maps.Point(0,0),
                anchor: new google.maps.Point(20, 62)
            };

            var shape = {
                coords: [1, 5, 15, 62, 62, 62, 15 , 5, 1],
                type: 'poly'
            };

            var marker = new google.maps.Marker({
                position: location,
                map: map,
                draggable:true,
                icon: image,
                shape: shape,
                animation: google.maps.Animation.DROP
            });
            markers.push(marker);
            return marker;
        }

        // Deletes all markers in the array by removing references to them.
        function deleteMarkers() {
            clearMarkers();
            markers = [];
        }

        // Sets the map on all markers in the array.
        function setAllMap(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }

        // Removes the markers from the map, but keeps them in the array.
        function clearMarkers() {
            setAllMap(null);
        }
        //google.maps.event.addDomListener(window, 'load', initialize);
				
		function get_cat(id){
			$('#sub_cat').load(base_url+'index.php/home/sub_by_cat/'+id,function(){set_select();});
		}
		
</script>

<script src="<?php echo base_url();?>template/front/file_upload/js/vendor/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="<?php echo base_url();?>template/front/file_upload/js/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="<?php echo base_url();?>template/front/file_upload/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="<?php echo base_url();?>template/front/file_upload/js/canvas-to-blob.min.js"></script>
<!-- blueimp Gallery script -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="<?php echo base_url();?>template/front/file_upload/js/jquery.fileupload-ui.js"></script>
<!-- The main application script -->
<script src="<?php echo base_url();?>template/front/file_upload/js/main.js"></script>

<script>
	$(document).ready(function(){
		$('.textarea').wysihtml5({
			"font-styles": true,
			"color": true,
			"emphasis": true,
			"lists": true,
			"html": true,
			"link": false,
			"image": false,
			events: {},
			parserRules: {
				classes: {
					// (path_to_project/lib/css/wysiwyg-color.css)
					"wysiwyg-color-silver" : 1,
					"wysiwyg-color-gray" : 1,
					"wysiwyg-color-white" : 1,
					"wysiwyg-color-maroon" : 1,
					"wysiwyg-color-red" : 1,
					"wysiwyg-color-purple" : 1,
					"wysiwyg-color-fuchsia" : 1,
					"wysiwyg-color-green" : 1,
					"wysiwyg-color-lime" : 1,
					"wysiwyg-color-olive" : 1,
					"wysiwyg-color-yellow" : 1,
					"wysiwyg-color-navy" : 1,
					"wysiwyg-color-blue" : 1,
					"wysiwyg-color-teal" : 1,
					"wysiwyg-color-aqua" : 1,
					"wysiwyg-color-orange" : 1
				},
				tags: {
					"b":  {},
					"i":  {},
					"br": {},
					"ol": {},
					"ul": {},
					"li": {},
					"h1": {},
					"h2": {},
					"h3": {},
					"h4": {},
					"h5": {},
					"h6": {},
					"blockquote": {},
					"u": 1,
					"img": {
						"check_attributes": {
							"width": "numbers",
							"alt": "alt",
							"src": "url",
							"height": "numbers"
						}
					},
					"a":  {
						check_attributes: {
							'href': "url", // important to avoid XSS
							'target': 'alt',
							'rel': 'alt'
						}
					},
					"span": 1,
					"div": 1,
					// to allow save and edit files with code tag hacks
					"code": 1,
					"pre": 1
				}
			},
			stylesheets: ["<?php echo base_url(); ?>template/front/wysihtml5/wysiwyg-color.css"], // (path_to_project/lib/css/wysiwyg-color.css)
			locale: "en"
		});
	});
</script>