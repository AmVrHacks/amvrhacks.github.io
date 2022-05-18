<div id="popup-1" class="activeModal">
		
        <div class="window window1">
            <div class="window_set" style="overflow:auto;">
            
            </div>
        </div>
</div>
<div id="popup-2" class="activeModal">
		
        <div class="window window1">
            <div class="window_set" style="overflow:auto;">
            
            </div>
        </div>
</div>
<div id="popup-3" class="activeModal">
        <div class="window window2">
            <div class="window_set">
            
            </div>
        </div>
</div>
<div id="popup-4" class="activeModal">
        <div class="window window2">
            <div class="window_set">
            
            </div>
        </div>
</div>
<div id="popup-5" class="activeModal">
		
        <div class="window window1">
            <div class="window_set" style="overflow:auto;">
            
            </div>
        </div>
</div>
<div id="popup-6" class="activeModal">
		
        <div class="window window1">
            <div class="window_set" >
            
            </div>
        </div>
</div>
<div id="popup-7" class="activeModal">
		
        <div class="window window1">
            <div class="window_set" >
            
            </div>
        </div>
</div>
<div class="foiop" style="display:none;">
<span class="openactiveModal-1 manualLabel" id="poipoi" data-ajax=""></span>
<span class="openactiveModal-7 manualLabel" id="qoiqoi" data-ajax=""></span>
<span class="openactiveModal-5 manualLabel" id="etrcing" data-ajax=""></span>
<span class="openactiveModal-contact manualLabel" id="coicoi" data-ajax=""></span>
</div>
<!-- ========== END COPYING HERE ========== -->

        <style>
		.box{
			overflow: hidden;
			position:relative;
		}
		.box .box-img img{
			width:100%;
			height: auto;
		}
		.box .box-img:before{
			content: "";
			position: absolute;
			top: 5%;
			left: 4%;
			width: 92%;
			height: 90%;
			opacity: 0;
			z-index:1;
			transform: scale(0,1);
			border-top: 1px solid #fff;
			border-bottom: 1px solid #fff;
			transition:all 0.90s ease 0s;
		}
		.box .box-img:after{
			content: "";
			position: absolute;
			width: 92%;
			height: 90%;
			top: 5%;
			left: 4%;
			opacity: 0;
			transform: scale(1,0);
			border-left: 1px solid #fff;
			border-right: 1px solid #fff;
			transition:all 0.90s ease 0s;
		}
		.box:hover .box-img:before,
		.box:hover .box-img:after{
			opacity:1;
			transform: scale(1);
		}
		.box .box-img .over-layer{
			position: absolute;
			display:block;
			width:100%;
			height:100%;
			opacity:0;
			transition:all 0.90s ease 0s;
		}
		.box:hover .over-layer{
			opacity:1;
		}
		.box .over-layer ul{
			list-style: none;
			position: relative;
			top: 30%;
			padding: 0;
			text-align: center;
			z-index: 1;
			transition:all 0.6s ease 0s;
		}
		.box:hover .over-layer ul{
			top: 30%;
		}
		.box .over-layer ul li{
			padding:5px;
		}
		
		@media only screen and (max-width: 990px) {
			.box{
				margin-bottom:20px;
			}
		}
		.wp-block.product .price {
			padding:4px 0;
			font-size: 16px !important;
			font-weight: 300 !important;
			color: #272526 !important;
		}
		h1, h2, h3, h4, h5, h6 {
    		font-weight: 400 !important;
		}
		</style>
        
<script type="text/javascript">
	
 
	//google.maps.event.addDomListener(window, 'load', initialize);
	/**/
	
	function tooltip_set(){
		$('[data-toggle="tooltip"]').tooltip(); 
	} 
	
	function isValidEmailAddress(emailAddress) {
		var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
		return pattern.test(emailAddress);
	}
	
	$(document).ready(function(){ 
		tooltip_set();
		opc_color();
		setTimeout(function(){ slide_color(); }, 1000);
			
		
		window.addEventListener("keydown", checkKeyPressed, false);
		 
		function checkKeyPressed(e) {
			if (e.keyCode == "13") {
				$(":focus").each(function() {
					event.preventDefault();
					$(this).closest('form').find('.enterer').click();
				});
			}
		}
		
		$('.subscriber').on('click', function(){
			var here = $(this); // alert div for show alert message
			var text = here.html(); // alert div for show alert message
			var form = here.closest('form');
			var email = form.find('#subscr').val();
			if(isValidEmailAddress(email)){
				//var form = $(this);
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
						here.addClass('disabled');
						here.html('...'); // change submit button text
					},
					success: function(data) {
						here.fadeIn();
						here.html(text);
						here.removeClass('disabled');
						if(data == 'done'){
							notify(subscribe_success,'info','bottom','right');
						} else if(data == 'already'){
							notify(subscribe_already,'warning','bottom','right');
						} else if(data == 'already_session'){
							notify(subscribe_sess,'warning','bottom','right');
						} else {
							notify(data,'warning','bottom','right');
						}
					},
					error: function(e) {
						console.log(e)
					}
				});
			} else {
				notify(mbe,'warning','bottom','right');
			}
		});
		
		
		/*
		if($('#location').length > 0){
			//Autocomplete variables
			var input = document.getElementById('location');
			var searchform = document.getElementById('form1');
			var place;
			var autocomplete = new google.maps.places.Autocomplete(input);
			
			
			//Google Map variables
			var map;
			var marker;
			
			//Add listener to detect autocomplete selection
			google.maps.event.addListener(autocomplete, 'place_changed', function () {
				place = autocomplete.getPlace();
				//console.log(place);
			});
			 
			//Reset the inpout box on click
			input.addEventListener('click', function(){
				input.value = "";
			});
		}
	 	*/
	 
		
	});

	function slide_color(){
		var rgb = $('.base').css('background-color');
		$('.active-bg-base').css('background-color',rgb);	
	}
	
	function opc_color(){
		var rgb = $('.base').css('background-color');
		var new_arr = rgb.split(')');
		var rgba = new_arr[0]+',.6)';
		$('.base_opc').css('background-color',rgba);	
	}

	function get_contact(id){
		$('#coicoi').data('ajax','<?php echo base_url(); ?>index.php/home/contact_author/'+id);
		$('#coicoi').click();
	}
	function get_distance(id){
		$('#poipoi').data('ajax','<?php echo base_url(); ?>index.php/home/get_my_distance/'+id);
		$('#poipoi').click();
	}
	function quick_view(urlh){
		$('#qoiqoi').data('ajax',urlh);
		$('#qoiqoi').click();
	}
	function tracing_view(urlh){
		$('#etrcing').data('ajax',urlh);
		$('#etrcing').click();
	}
	
	function set_select(){
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({width:'100%'});
	}
	$(document).ready(function() {
		set_select();
		$('.drops').dropdown();
	});
	function check_login_stat(thing){
		return $.ajax({
			url: '<?php echo base_url(); ?>index.php/home/check_login/'+thing
		});
	}
	
	function signin(){
		$('.sign_in_btn').click();
	}
	
	function reg(){
		$('.regis_btn').click();
	}
	
	function reload_page(){
		var loc = location.href;
		location.replace(loc);
	}
	
	
	function notify(message,type,from,align){		
		$.notify({
			// options
			message: message 
		},{
			// settings
			type: type,
			placement: {
				from: from,
				align: align
			}
		});
		
	}
	
	function form_submit(form_id){
		var form = $('#'+form_id);
		var button = form.find('.submit_button');
		var prv = button.html();
		var ing = button.data('ing');
		var success = button.data('success');
		var unsuccessful = button.data('unsuccessful');
		var redirect_url = button.data('redirect_url');
		form.find('.summernotes').each(function() {
			var now = $(this);
			now.closest('div').find('.val').val(now.code());
		});
		
		//var form = $(this);
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
				button.html(ing); // change submit button text
			},
			success: function(data) {
				var alls = data.split('#-#-#');
				var part1 = alls[0];
				var part2 = alls[1];
				if(part1 == 'success'){
					notify(success,'success','bottom','right');
					location.replace(part2);
				} else {
					var text = '<div>'+unsuccessful+'</div>'+part1;
					notify(text,'warning','bottom','right');
				}
				button.html(prv);
				
			},
			error: function(e) {
				console.log(e)
			}
		});
				
	}
	
	// Plugin invoke
	function set_modal(){
		
		$("#popup-1").activeModals({
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
			windowWidth: "800px",
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
			reopenClass: "openactiveModal-1",
		});
		
		$("#popup-2").activeModals({
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
			overlayBgColor: "rgba(255, 255, 255, 0.721569)",
			overlayTransition: "ease",
			overlayTransitionSpeed: "0.4",
	
			// Background effects
			bgEffect: "scaled",
			blurBgRadius: "2px",
			scaleBgValue: "1",
	
			// Window options
			windowWidth: "500px",
			windowHeight: "650px",
			windowLocation: "center",
			windowTransition: "fadeIn",
			windowTransitionSpeed: "0.4",
			windowTransitionEffect: "fadeIn",
			windowShadowOffsetX: "0",
			windowShadowOffsetY: "0",
			windowShadowBlurRadius: "20px",
			windowShadowSpreadRadius: "0",
			windowShadowColor: "rgba(0,0,0,0.3)",
			windowBackground: "rgba(255,255,255,1)",
			windowRadius: "0px",
			windowMargin: "10px",
			windowPadding: "10px",
	
			// Close and reopen button
			closeButton: "icon",
			reopenClass: "openactiveModal-2",
		});
		$("#popup-3").activeModals({
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
			windowWidth: "460px",
			windowHeight: "420px",
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
			windowMargin: "30px",
			windowPadding: "30px",
	
			// Close and reopen button
			closeButton: "icon",
			reopenClass: "openactiveModal-3",
		});
		$("#popup-4").activeModals({
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
			windowMargin: "30px",
			windowPadding: "30px",
	
			// Close and reopen button
			closeButton: "icon",
			reopenClass: "openactiveModal-contact",
		});	
		$("#popup-5").activeModals({
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
			overlayBgColor: "rgba(0, 0, 0, 0.75)",
			overlayTransition: "ease",
			overlayTransitionSpeed: "0.4",
	
			// Background effects
			bgEffect: "scaled",
			blurBgRadius: "2px",
			scaleBgValue: "1",
	
			// Window options
			windowWidth: "600px",
			windowHeight: "450px",
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
			reopenClass: "openactiveModal-5",
		});
		$("#popup-6").activeModals({
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
			overlayBgColor: "rgba(255, 255, 255, 0.721569)",
			overlayTransition: "ease",
			overlayTransitionSpeed: "0.4",
	
			// Background effects
			bgEffect: "scaled",
			blurBgRadius: "2px",
			scaleBgValue: "1",
	
			// Window options
			windowWidth: "500px",
			windowHeight: "600px",
			windowLocation: "center",
			windowTransition: "fadeIn",
			windowTransitionSpeed: "0.4",
			windowTransitionEffect: "fadeIn",
			windowShadowOffsetX: "0",
			windowShadowOffsetY: "0",
			windowShadowBlurRadius: "20px",
			windowShadowSpreadRadius: "0",
			windowShadowColor: "rgba(0,0,0,0.3)",
			windowBackground: "rgba(255,255,255,1)",
			windowRadius: "0px",
			windowMargin: "10px",
			windowPadding: "10px",
	
			// Close and reopen button
			closeButton: "icon",
			reopenClass: "openactiveModal-6",
		});
		$("#popup-7").activeModals({
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
			windowWidth: "1000px",
			windowHeight: "500px",
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
			windowMargin: "10px",
			windowPadding: "30px",
	
			// Close and reopen button
			closeButton: "icon",
			reopenClass: "openactiveModal-7",
		});	
	}
	$(document).ready(function () {
		set_modal();	
		
		$.ajax({url: '<?php echo base_url(); ?>index.php/home/surfer_info'});
		
		$('.window_set').on('click','.author_contact_submitter',function(event){
			event.preventDefault();
			var now = $(this);
			var btntxt = now.html();
			var form = now.closest('form');  
			var success = now.data('success');
			var unsuccessful = now.data('unsuccessful');
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
					now.html('<span>submitting...</span>');
				},
				success: function(data) {
					if(data == 'success'){
						notify(success,'success','bottom','right');
						$(".closeModal").click();
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
		
		$('.window_set').on('click','.signup_btn',function(event){
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
					now.html('<span>submitting...</span>');
				},
				success: function(data) {
					if(data == 'done'){
						notify(success,'success','bottom','right');
						if(rld == 'ok'){
							setInterval(reload_page(), 2000);
						}
						$(".closeModal").click();
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
		
		$('body').on('click', '.wish_it', function(){
			var state = check_login_stat('state');
			var product = $(this).data('pid');
			var button = $(this);
			
			state.success(function (data) {
				if(data == 'hypass'){
					$.ajax({
						url: base_url+'index.php/home/wishlist/add/'+product,
						beforeSend: function() {
							button.html('<span><?php echo translate('working...'); ?></span>');
						},
						success: function(data) {
							button.html('<span><?php echo translate('favored'); ?></span>');
							button.removeClass("wish_it");
							button.addClass("wished_it");
							button.closest('ul').data('originalTitle',wishlist_add1);
							notify(wishlist_add,'info','bottom','right');
							sound('successful_wish');
						},
						error: function(e) {
							console.log(e)
						}
					});
				} else {
					signin();
				}
			});
		});
		
		$('body').on('click', '.btn_wish', function(){
			var state = check_login_stat('state');
			var product = $(this).data('pid');
			var button = $(this);
			state.success(function (data) {
				if(data == 'hypass'){
					$.ajax({
						url: base_url+'index.php/home/wishlist/add/'+product,
						beforeSend: function() {
							button.html(wishlist_adding); // change submit button text
						},
						success: function(data) {
							button.removeClass("btn_wish");
							button.addClass("btn_wished");
							button.html('<span>'+wishlist_add1+'</span>');
							notify(wishlist_add,'info','bottom','right');
							sound('successful_wish');
						},
						error: function(e) {
							console.log(e)
						}
					});
				} else {
					signin();
				}
			});
		});
	
		$('body').on('click', '.remove_from_wish', function(){
			var product = $(this).data('pid');
			var button = $(this);
			$.ajax({
				url: base_url+'index.php/home/wishlist/remove/'+product,
				beforeSend: function() {
					button.parent().parent().hide('fast');
				},
				success: function(data) {
					ajax_load(base_url+'index.php/home/wishlist/num/','wishlist_num');
					button.parent().parent().remove();
					notify(wishlist_remove,'info','bottom','right');
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
		
		$('body').on('click', '.btn_compare', function(){
			var product = $(this).data('pid');
			var button = $(this);
			var old_txt = button.html();
			$.ajax({
				url: base_url+'index.php/home/compare/add/'+product,
				beforeSend: function() {
					if(button.hasClass("tooltips")){
						compare_adding = '';
					}
					button.html('<span>'+compare_adding+'</span>'); // change submit button text
				},
				success: function(data) {
					if(data == 'cat_full'){
						notify(compare_cat_full,'warning','bottom','right');
						button.html(old_txt);
					} else if (data == 'already'){
						notify(compare_already,'warning','bottom','right');
						button.html(old_txt);
					} else {
						$('#compare_num').load(base_url+'index.php/home/compare/num/');
						button.removeClass("btn_compare");
						button.addClass("btn_compared");
						if(button.hasClass("tooltips")){
							button.addClass("wished_it");
							compare_add1 = '';
						}
						button.html('<span>'+compare_add1+'</span>');
						notify(compare_add,'info','bottom','right');
						sound('successful_compare');
					}
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
	
		$('body').on('click', '.remove_from_compare', function(){
			var product = $(this).data('pid');
			var button = $(this);
			$.ajax({
				url: base_url+'index.php/home/compare/remove/'+product,
				beforeSend: function() {
					button.parent().parent().hide('fast');
				},
				success: function(data) {
					$('#compare_num').load(base_url+'index.php/home/compare/num/');
					button.parent().parent().remove();
					notify(compare_remove,'info','bottom','right');
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
		
		$('body').on('click','.logup_btn', function(){
			var here = $(this); // alert div for show alert message
			var form = here.closest('form');
			var can = '';
			var ing = here.data('ing');
			var msg = here.data('msg');
			var prv = here.html();
			
			//var form = $(this);
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
					here.html(ing); // change submit button text
				},
				success: function(data) {
					here.fadeIn();
					here.html(prv);
					if(data == 'done'){
						$('.closeModal').click();
						setInterval(signin(), 2000);
						notify('Signup successful','success','bottom','right'); 
						sound('successful_logup');  		
					} else {
						here.closest('.modal-content').find('#close_logup_modal').click();
						notify('Signup failed'+'<br>'+data,'warning','top','center');
						sound('unsuccessful_logup');
					}
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
		
		$("body").on('click','.login_btn',function(){
			var here = $(this); // alert div for show alert message
			var text = here.html(); // alert div for show alert message
			var form = here.closest('form');
			var logging = here.data('ing');
			//var form = $(this);
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
					here.addClass('disabled');
					here.html(logging); // change submit button text
				},
				success: function(data) {
					here.fadeIn();
					here.html(text);
					here.removeClass('disabled');
					if(data == 'done'){
						$('.closeModal').click();
						notify('<?php echo translate('successful_login'); ?>','info','bottom','right');
						if($('#post_add_page').length){} else {
							setInterval(reload_page(), 2000);
						}
						sound('successful_login');
					} else if(data == 'failed'){
						notify('<?php echo translate('login_failed'); ?>','warning','bottom','right');
						sound('unsuccessful_login');
					} else {
						notify(data,'warning','bottom','right');
					}
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
		
		
		$("body").on('click','.forget_btn',function(){
			var here = $(this); // alert div for show alert message
			var text = here.html(); // alert div for show alert message
			var form = here.closest('form');
			var submitting = here.data('ing');
			//var form = $(this);
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
					here.addClass('disabled');
					here.html(submitting); // change submit button text
				},
				success: function(data) {
					here.fadeIn();
					here.html(text);
					here.removeClass('disabled');
					if(data == 'email_sent'){
						notify(email_sent,'info','bottom','right');
						$(".closeModal").click();
					} else if(data == 'email_nay'){
						$(".closeModal").click();
						notify(email_noex,'info','bottom','right');
					} else if(data == 'email_not_sent'){
						$(".closeModal").click();
						notify(email_fail,'info','bottom','right');
					} else {
						notify(data,'warning','bottom','right');
					}
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
		
		
		
	});
</script>

<style>
	.loading_parent{
		height:500px;
		width:100%;	
		position:absolute;
	}
	#loading-center-relative {
		position: relative;
		left: 50%;
		top: 50%;
		height: 150px;
		width: 150px;
		margin-top: -75px;
		margin-left: -75px;
	}
	.object_on{
		width: 20px;
		height: 20px;
		float: left;
		margin-right: 20px;
		margin-top: 65px;
		-moz-border-radius: 50% 50% 50% 50%;
		-webkit-border-radius: 50% 50% 50% 50%;
		border-radius: 50% 50% 50% 50%;
		zoom: .5;
	}
	
	#object_one_on {	
		-webkit-animation: object_one 1.5s infinite;
		animation: object_one 1.5s infinite;
	}
	#object_two_on {
		-webkit-animation: object_two 1.5s infinite;
		animation: object_two 1.5s infinite;
		-webkit-animation-delay: 0.25s; 
		animation-delay: 0.25s;
	}
	#object_three_on {
		-webkit-animation: object_three 1.5s infinite;
		animation: object_three 1.5s infinite;
		-webkit-animation-delay: 0.5s;
		animation-delay: 0.5s;
	}
	
	@-webkit-keyframes object_one_on {
	75% { -webkit-transform: scale(0); }
	}
	
	@keyframes object_one_on {
	  75% { 
		transform: scale(0);
		-webkit-transform: scale(0);
	  }
	}
	@-webkit-keyframes object_two_on {
	  75% { -webkit-transform: scale(0); }
	}
	
	@keyframes object_two_on {
	  75% { 
		transform: scale(0);
		-webkit-transform:  scale(0);
	  }
	}
	@-webkit-keyframes object_three_on {
	  75% { -webkit-transform: scale(0); }
	}
	@keyframes object_three_on {
	  75% { 
		transform: scale(0);
		-webkit-transform: scale(0);
	  }
	}
</style>


<style>

#loading-center1{
	width: 100%;
	height: 100%;
	position: relative;
}
#loading-center-absolute1 {
	position: absolute;
	left: 50%;
	top: 50%;
	height: 150px;
	width: 150px;
	margin-top: -75px;
	margin-left: -75px;
}
.object1{
	width: 20px;
	height: 20px;
	float: left;
	margin-right: 20px;
	margin-top: 65px;
	-moz-border-radius: 50% 50% 50% 50%;
	-webkit-border-radius: 50% 50% 50% 50%;
	border-radius: 50% 50% 50% 50%;
}

#object_one1 {	
	-webkit-animation: object_one1 1.5s infinite;
	animation: object_one1 1.5s infinite;
	}
#object_two1 {
	-webkit-animation: object_two1 1.5s infinite;
	animation: object_two1 1.5s infinite;
	-webkit-animation-delay: 0.25s; 
    animation-delay: 0.25s;
	}
#object_three1 {
    -webkit-animation: object_three1 1.5s infinite;
	animation: object_three1 1.5s infinite;
	-webkit-animation-delay: 0.5s;
    animation-delay: 0.5s;
	
	}


@-webkit-keyframes object_one1 {
75% { -webkit-transform: scale(0); }
}

@keyframes object_one1 {

  75% { 
    transform: scale(0);
    -webkit-transform: scale(0);
  }

}

@-webkit-keyframes object_two1 {
 

  75% { -webkit-transform: scale(0); }


}

@keyframes object_two1 {
  75% { 
    transform: scale(0);
    -webkit-transform:  scale(0);
  }

}

@-webkit-keyframes object_three1 {

  75% { -webkit-transform: scale(0); }

}

@keyframes object_three1 {

  75% { 
    transform: scale(0);
    -webkit-transform: scale(0);
  }
  
}

</style>
<div id="loading1" style="display:none;">
    <div id="loading-center1">
        <div id="loading-center-absolute1">
            <div class="object1 base" id="object_one1"></div>
            <div class="object1 base" id="object_two1"></div>
            <div class="object1 base" id="object_three1"></div>
        </div>
	</div>
</div>



<input type="hidden" id="page_num" value="0" />
<script>
	var loading = $('#loading1').html();
	var base = $('.base').css('background');
	loading = '<span class="loading_parent col-md-12">'+loading+'</span>';
    function filter(page){
		if(page == 'no'){
			page = $('#page_num').val();	
		} else {
			$('#page_num').val(page);
		}
        var form = $('#filter_form');
        var alert = $('#result');
        var formdata = false;
        if (window.FormData){
            formdata = new FormData(form[0]);
        }
        $.ajax({
            url: form.attr('action')+page+'/', // form action url
			type: 'POST', // form submit method get/post
			dataType: 'html', // request type html/json/xml
			data: formdata ? formdata : form.serialize(), // serialize form data 
			cache       : false,
			contentType : false,
			processData : false,
            beforeSend: function() {
				alert.fadeOut();
                alert.html(loading).fadeIn(); // change submit button text
				$('.loading_parent').find("#loading-center").show();
				$('.loading_parent').find(".object1").addClass('base');
            },
            success: function(data) {
				setTimeout(function(){
                	alert.html(data); // fade in response data
				}, 20);
				setTimeout(function(){
                	alert.fadeIn(); // fade in response data
					$('.pagination_links').html($('#pagenation_set_links').html());
				}, 30);
				$('.loading_parent').find("#loading-center1").hide();
            },
            error: function(e) {
                console.log(e)
            }
        });
        
    }
	
	$(document).ready(function() {
		<?php 
			if($page_name == 'home' 
				|| $page_name == 'product_list' 
					|| $page_name == 'blog_list' 
						|| $page_name == 'featured' 
							|| $page_name == 'latest'){ 
		?>
        filter('0');
		<?php } ?>
    });
    
</script>

<script>
		function load_textarea(){
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
								'rel': 'alt',
								
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
		}
</script>