    <!-- MAIN CONTENT -->
    <section class="slice p-15 base">
        <div class="cta-wr">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h1 class="text-normal">
                            <strong>Boomerang 2</strong> delivers content beyond the desktop. Make it yours!
                        </h1>
                    </div>
                    <div class="col-md-4">
                        <a href="<?php echo base_url(); ?>index.php/home/post_add" class="btn btn-lg btn-b-white btn-icon btn-icon-right btn-check pull-right">
                            <span>Post An Ad</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>      
        
    <section class="prlx-bg inset-shadow-1" data-stellar-ratio="2" style="padding: 20px 0; background-image: url(<?php echo base_url();?>template/front/images/sections/section-bg-2.jpg); background-position: 0 -500px;">
            <div class="mask mask-2"></div>
            <div class="wp-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="no-margin owl-carousel owl-carousel-4" data-owl-pagination="smth">
                        <?php
                        foreach($featured_product as $row)
                        {
                        ?>
                            <div class="item">
                                <div class="wp-block product">
                                    <figure>
                                        <a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>">
                                        <?php
                                            if(file_exists('uploads/product_image/product_'.$row['product_id'].'_1.jpg')){
                                        ?>
                                        <img src="<?php echo base_url(); ?>uploads/product_image/product_<?php echo $row['product_id'];?>_1.jpg" class="img-responsive img-center" style="height:180px;" alt="">
                                        <?php
                                        }
                                        ?>
                                        </a>
                                    </figure>
                                    <h2 class="product-title"><a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>"><?php echo $row['title'];?></a></h2>
                                    <p>
                                    Product Description/anything else
                                    </p>
                                    <div class="wp-block-footer">
                                        <span class="price pull-left"><?php echo currency();?><?php echo $row['price'];?></span>
                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-heart pull-right">
                                            <span>Favourite</span>
                                        </a>
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
                        $filter_pos_home='right';
                    ?>
                        <div class="col-lg-3 col-md-3 col-sm-3 pull-<?php echo $filter_pos_home; ?>">
                        	<?php echo $this->Crud_model->get_sidebar(1); ?>
                        </div>
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
                            <!-----------
                            <span class="view-mode hidden-xs hidden-sm">
                                        <a href="">
                                            <i class="fa fa-th"></i>
                                        </a>
                                        <a href="">
                                            <i class="fa fa-bars"></i>
                                        </a>
                                    </span>--->
                            <div class="filter sort-filter">
                                <div class="form-inline form-light">
                                    <label>Sort by</label>
                                    <a href="">
                                        <i class="fa fa-arrow-down"></i>
                                    </a>
                                    <select class="form-control" name="sort" onChange="filter('no')">
                                        <option value="">Choose One</option>
                                        <option value="price_low">Price low</option>
                                        <option value="price_high">Price high</option>
                                        <option value="condition_old">Old</option>
                                        <option value="condition_new">New</option>
                                        <option value="most_viewed" >Most Viewed</option>
                                    </select>
                                </div>
                            </div>
                            <div class="filter sort-filter">
                            	<label class="radio-inline"><input type="radio" name="show_type"  value="list" checked onclick="filter('no')">List</label>
                                <label class="radio-inline "><input type="radio" name="show_type" value="grid" onclick="filter('no')">Grid</label>
                                
                                <input type="hidden" name="category" value="" />
                            	<input type="hidden" name="sub_category" value="" />
                            	<label class="radio-inline "><input type="text" class="form-control" placeholder="I want to find..." name="text" value="<?php //echo $text; ?>" /></label><!------>
                            </div>
                        </div>
                        </form>
                        <div id="result">
                        
                    	</div>
                        <span class="pagination_links"></span>
                    </div>							
                </div>   
            </div>
        </div>
    </div>    
</section>    
    <section class="slice light-gray">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        
                        <div id="carouselTestimonial" class="carousel carousel-testimonials slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carouselTestimonial" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselTestimonial" data-slide-to="1" class=""></li>
                                <li data-target="#carouselTestimonial" data-slide-to="2" class=""></li>
                            </ol>
    
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="text-center">
                                        <h4><i class="fa fa-quote-left fa-3x"></i></h4>
                                        <p class="testimonial-text">
                                        Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt, Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt.
                                        Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt.
                                        </p>
                                        <p>
                                            John Doe – Company Inc
                                        </p>
                                        <span class="clearfix"></span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="text-center">
                                        <h4><i class="fa fa-quote-left fa-3x"></i></h4>
                                        <p class="testimonial-text">
                                        Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt, Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt.
                                        Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt.
                                        </p>
                                        <p>
                                            John Doe – Company Inc
                                        </p>
                                        <span class="clearfix"></span>
                                    </div>
                                </div>
                                <div class="item ">
                                    <div class="text-center">
                                        <h4><i class="fa fa-quote-left fa-3x"></i></h4>
                                        <p class="testimonial-text">
                                        Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt, Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt.
                                        Lorem ipsum dolor sit amet, consectetur adipisg elitm Ut tincidunt purus iaculis ipsum dctum non dtum quam consectetur adipisg elitm Ut tincidunt.
                                        </p>
                                        <p>
                                            John Doe – Company Inc
                                        </p>
                                        <span class="clearfix"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> 

									
  
    
    
    
     

