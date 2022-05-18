<div class="pg-opt">
	<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<h2><?php echo translate('blog'); ?></h2>
			</div>
			<div class="col-xs-6">
				<ol class="breadcrumb">
					<li><a href="#"><?php echo translate('home'); ?></a></li>
					<li><a href="#"><?php echo translate('blog'); ?></a></li>
					<li class="active"><?php echo translate($page_name);?></li>
				</ol>
			</div>
		</div>
	</div>
</div>
<section class="slice bg-white">
<div class="wp-section">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
                <div class="wp-block default product-list-filters light-gray">
						<?php
                            echo form_open(base_url() . 'index.php/home/blog_listed/', array(
                                'class' => 'form-horizontal',
                                'method' => 'post',
                                'id' => 'filter_form'
                            ));
                        ?>
                        	<input type="hidden" name="blog_category" value="<?php echo $blog_category?>" />
                        </form>
                    </div>
                    <div id="result">
                        
                    </div>
			</div>
			<div class="col-md-3">
				<!-- SIDEBAR - BLOG -->
				<?php echo $this->Crud_model->get_sidebar_blog(); ?>
			</div>
		</div>
	</div>
</div>
</section>
<script>
	
    function filter_blog(page){
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
                alert.html('loading...').fadeIn(); // change submit button text
            },
            success: function(data) {
				setTimeout(function(){
                	alert.html(data); // fade in response data
				}, 20);
				setTimeout(function(){
                	alert.fadeIn(); // fade in response data
				}, 30);
            },
            error: function(e) {
                console.log(e)
            }
        });
        
    }
	
	$(document).ready(function() {
        filter_blog('0');
    });
    
</script>