
        
    <section class="prlx-bg inset-shadow-1" data-stellar-ratio="3" style="padding: 20px 0; background-image: url(<?php echo base_url();?>uploads/others/parralax.jpg); background-position: 0 -120px;">
        <div class="mask mask-2"></div>
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="no-margin owl-carousel owl-carousel-4" data-owl-pagination="smth">
                    <?php
					$i = 0;
                    foreach($featured_product as $row)
                    {
							$i++;
                    ?>
                            <div class="col-md-12 item <?php if($i == 1){ ?>active<?php } ?>" >
                                <div class="wp-block product style-2 col-md-12">                            
                                    <div class="box">
                                        <div class="box-img">
                                            <span class="over-layer base_opc">
                                                <ul>
                                                    <li>
                                                        <span class="btn btn-xs btn-base btn-icon fa-eye openactiveModal-7 manualLabel" data-ajax="<?php echo $this->Crud_model->product_link($row['product_id'],'quick'); ?>">
                                                        <span><?php echo translate('quick_view');?></span>
                                                    </span>
                                                    </li>
                                                    <li>
                                                        <span class="btn btn-xs btn-base btn-icon fa-random  btn_compare" data-pid="<?php echo $row['product_id']; ?>">
                                                            <span><?php echo translate('compare');?></span>
                                                        </span>
                                                    </li>
                                                    <li>
                                                        <span class="btn btn-xs btn-base btn-icon fa-thumbs-up  wish_it" data-pid='<?php echo $row['product_id']; ?>'>
                                                            <span><?php echo translate('favorite');?></span>
                                                        </span>
                                                    </li>
                                                    <li>                                                
                                                        <a href="<?php echo $this->Crud_model->product_link($row['product_id']); ?>" class="btn btn-xs btn-base btn-icon fa-check">
                                                            <span><?php echo translate('see_more');?></span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </span>
                                            <a href="<?php echo $this->Crud_model->product_link($row['product_id']); ?>">        
                                            <div style="height:250px; width:100%; background: url('<?php echo $this->Crud_model->product_image($row['product_id'],'thumb'); ?>') no-repeat center center; background-size: 80% auto;" ></div>
                                            </a>
                                        </div>
                                    </div>
                                    
                                    <div class="wp-block-body no-padding">
                                        <h5 class="text-center mt-10" style="padding-bottom:0 !important;line-height:1.0em !important;">
                                            <a href="<?php echo $this->Crud_model->product_link($row['product_id']); ?>"><?php echo limit_chars($row['title'],20);?></a>
                                        </h5>
                                        <p class="price text-center no-padding" style="padding-bottom:0 !important;line-height: 5px !important;">
                                            <?php echo currency();?><?php echo $row['price'];?>
                                        </p>
                                    </div>
                                
                                    <div class="col-md-12 mb-10">
                                        <span class="col-md-6">
                                            <button class="button button--itzel button--text-thick col-md-12 openactiveModal-contact manualLabel" data-ajax="<?php echo base_url(); ?>index.php/home/contact_author/<?php echo $row['product_id']; ?>"><i class="button__icon fa fa-envelope"></i><span><?php echo translate('contact');?></span></button>
                                         </span>
                                        <span class="col-md-6">
                                            <button class="button button--itzel button--text-thick col-md-12 openactiveModal-1 manualLabel" data-ajax="<?php echo base_url(); ?>index.php/home/get_my_distance/<?php echo $row['product_id']; ?>"><i class="button__icon fa fa-map-marker"></i><span><?php echo translate('distance');?></span></button>
                                         </span>
                                     </div>
                                         
                                    
                                </div>
                            </div>
                    <?php
                    }
                    ?>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        
        
        
    <section class="slice bg-white bb">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    <?php
						$sidebar_home_pos = $this->db->get_where('ui_settings',array('type'=>'side_bar_pos'))->row()->value;;
                    ?>
                        <?php if($sidebar_home_pos == 'left'){ ?>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                        	<?php echo $this->Crud_model->get_sidebar(1); ?>
                        </div>
                        <?php } ?>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                            <div class="wp-block default product-list-filters light-gray">
        						<?php
                                    echo form_open(base_url() . 'index.php/home/listed/', array(
                                        'class' => 'form-horizontal',
                                        'method' => 'post',
                                        'id' => 'filter_form'
                                    ));
                                ?>
                                    <span class="pagination_links"></span>
                                    <div class="filter sort-filter">
                                        <div class="form-inline form-light">
                                        <span class="view-mode hidden-xs hidden-sm" <?php if ($this->agent->is_mobile()){ ?>style="display:none;"<?php } ?>>
                                            <label for="grid_view">
                                            	<i class="fa fa-th"></i>
                                            </label>
                                            <label for="list_view">
                                            	<i class="fa fa-bars"></i>
                                            </label>
                                                <input type="radio" name="show_type" style="display:none;" value="list" onclick="filter('no')" id="list_view">
                                                <input type="radio" name="show_type" style="display:none;" value="grid" checked onclick="filter('no')" id="grid_view">
                                        </span>
                                            <select class="form-control demo-chosen-select" name="sort" onChange="filter('no')">
                                                <option value=""><?php echo translate('sort_by');?></option>
                                                <option value="price_low"><?php echo translate('price_low_to_high');?></option>
                                                <option value="price_high"><?php echo translate('price_high_to_low');?></option>
                                                <option value="condition_old"><?php echo translate('oldest');?></option>
                                                <option value="condition_new"><?php echo translate('newest');?></option>
                                                <option value="most_viewed" ><?php echo translate('most_viewed');?></option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="filter sort-filter">                                
                                        <input type="hidden" name="category" value="" />
                                    	<input type="hidden" name="sub_category" value="" />
                                    	<input type="text" class="form-control" placeholder="<?php echo translate('I want to find...'); ?>" name="text" style="padding-top:4px !important;" onkeyup="set_tex(this,this.value)" value="<?php //echo $text; ?>" />
                                    </div>
                                </form>
                            </div>
                            <div id="result" class="col">
                            
                        	</div>
                        	<span class="pagination_links"></span>
                        </div>	
                        <?php if($sidebar_home_pos == 'right'){ ?>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <?php echo $this->Crud_model->get_sidebar(1); ?>
                        </div>
                        <?php } ?>						
                    </div>   
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function set_tex(wen,val){
            setTimeout(function(){
                if($(wen).val() == val){
                    filter('no');
                }
            },800);
        }
    </script>    
</section>    
    <section class="slice light-gray">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        
                        <div id="carouselTestimonial" class="carousel carousel-testimonials slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <?php
                                    $this->db->limit($blog_count);
                                    $this->db->order_by('blog_id','desc');
                                    $blogs = $this->db->get('blog')->result_array();
                                    $i = -1;
                                    foreach ($blogs as $row) {
                                        $i++;
                                ?>
                                <li data-target="#carouselTestimonial" data-slide-to="<?php echo $i; ?>" class="<?php if($i == 0){ ?>active<?php } ?>"></li>
                                <?php
                                    }
                                ?>
                            </ol>
    
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">

                                <?php
                                    $i = -1;
                                    foreach ($blogs as $row) {
                                        $i++;
                                ?>
                                <div class="item <?php if($i == 0){ ?>active<?php } ?>">
                                    <div class="text-center">
                                        <h4><i class="fa fa-quote-left fa-3x"></i></h4>
                                        <h5><?php echo $row['title']; ?></h5>
                                        <p class="testimonial-text">                                        
                                            <?php echo $row['summery']; ?>
                                        </p>
                                        <p>
                                            <?php echo $row['author']; ?>
                                        </p>
                                        <span class="clearfix"></span>
                                    </div>
                                </div>
                                <?php
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> 

									
  <style>
  .wp-block.product.style-2:hover{
	-webkit-box-shadow: -1px 2px 35px 6px rgba(156,156,156,0.55);
	-moz-box-shadow: -1px 2px 35px 6px rgba(156,156,156,0.55);
	box-shadow: -1px 2px 35px 6px rgba(156,156,156,0.55);  
  }
  </style>
    
    
    
     

