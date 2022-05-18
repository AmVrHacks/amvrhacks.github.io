<?php
	$this->load->helper('date');	
	$datestring = " %d %m %Y  ";
	$time = time();
	$date=mdate($datestring, $time);
	
?>
<!-- MAIN CONTENT -->
<div>
        <div class="wp-section shop">
              <div class="row">
                    <div class="col-md-12">
                        <?php
                            foreach($product_data as $row)
                            {
                                $prodect_id=$row['product_id'];
                        ?>
                        <div class="row">
                            <div class="col-md-5">
                                  <div class="col col-md-12 maui">
                                    <div class="mag-eg-el-wrap img-thumbnail">
                                      <div class="proportion">
                                        <div mag-thumb="outer" class="mag-eg-el">
                                          <img src="<?php echo $this->Crud_model->product_image($row['product_id']); ?>" />
                                        </div>
                                        <div class="filler"></div>
                                      </div>
                                    </div>
                                  </div>
                                
                                <div class="product-gallery col-md-12">
                                    <div class="owl-carousel owl-carousel-44 thumbnail-images style-2">
                                        <?php
                                            $main = $this->Crud_model->product_image($row['product_id'],'','all');
                                            $thumb = $this->Crud_model->product_image($row['product_id'],'thumb','all');
                                            foreach($main as $i=>$row2){
                                        ?>
                                        <div class="item">
                                            <a href="<?php echo $row2; ?>" class="theater" rel="group">
                                                <img src="<?php echo $thumb[$i]; ?>" alt="">
                                            </a>
                                        </div>
                                        <?php
                                            }
                                        ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-6">
                            
                                <div class="mag-eg-el-wrap zoom_show img-thumbnail" style="height:0px;width:100%; display:none;">
                                  <div style="height: 400px; width:100%;" class="zoom_show_div" >
                                    <div mag-zoom="outer" class="mag-eg-el" style="float: right;position:relative;overflow:hidden; background:transparent">
                                      <img src="<?php echo $this->Crud_model->product_image($row['product_id']); ?>" height="100%" />
                                    </div>
                                  </div>
                                </div>
                                
                                <div class="product-info col-md-12">
                                	<div class="pg-opt" style="background-color:white; color:black !important ;">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <h2><?php echo translate('Product_name : ');?><?php echo $row['title'];?></h2>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <hr>
                                    <div class="pg-opt" style="background-color:white; color:black !important ;">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <h2><?php echo translate('Price : ');?><?php echo currency($row['price']);?></h2>
                                                </div>
                                                <div class="col-md-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-3 col-sm-6">
                                                <?php
                                                    if($this->Crud_model->is_wished($row['product_id']) == 'no'){
                                                ?>
                                                
                                                <button class="btn btn-mint btn-xs btn-icon fa-thumbs-up wish_it col-md-11" style="height:25px;" data-pid='<?php echo $row['product_id']; ?>'>
                                                    <span><?php echo translate('favorite');?></span>
                                                </button>
                                                <?php } else { ?>
                                                <span class="btn btn-mint btn-xs btn-icon fa-thumbs-up wished_it col-md-11" style="height:25px;">
                                                    <span><?php echo translate('favoured');?></span>
                                                </span>
                                                <?php } ?>
                                            </div>
                                                <div class="col-md-3 col-sm-6">
                                                <button name="submit" class="btn btn-violet btn-xs btn-icon fa-random btn_compare col-md-11" style="height:25px" data-pid="<?php echo $row['product_id']; ?>">
                                                    <span><?php echo translate('compare');?></span>
                                                </button>
                                            </div>
                                                <div class="col-md-3 col-sm-6">
                                                        <button class="openactiveModal-1 manualLabel btn btn-xs btn-alt btn-icon fa-map-marker col-md-11" style="height:25px" data-ajax="<?php echo base_url(); ?>index.php/home/get_my_distance/<?php echo $row['product_id']; ?>"><span><?php echo translate('distance');?></span></button>
                                                </div>
                                                <div class="col-md-3 col-sm-6" >
                                                    <button name="submit" class="btn btn-dark-blue btn-xs btn-icon fa-envelope openactiveModal-contact manualLabel col-md-11" style="height:25px"  data-ajax="<?php echo base_url(); ?>index.php/home/contact_author/<?php echo $row['product_id']; ?>">
                                                        <span><?php echo translate('contact_author');?></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <br />
                                    <br />
                                    <br />
                                    <div class="product-short-info col-md-12">
                                        <p><i class="fa fa-heart"></i><strong><?php echo translate('model');?></strong>: <?php echo $row['model'];?></p>
                                        <p><i class="fa fa-inbox"></i><strong><?php echo translate('category');?></strong>: <?php echo $this->Crud_model->get_type_name_by_id('category',$row['category_id']);?></p>
                                        <p><i class="fa fa-check"></i><strong><?php echo translate('condition');?></strong>: <?php echo $row['condition'];?></p>
                                        <p><i class="fa fa-tag"></i><strong><?php echo translate('tags');?></strong>: <?php echo $row['tag'];?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>
                            $('.maui').on('mouseenter',function(){
                                $('.zoom_show_div').height($('.product-info').height()-32);
                                $('.zoom_show').show();
                                $('.product-info').hide();
                            });
                            
                            $('.maui').on('mouseleave',function(){
                                $('.zoom_show').hide();
                                $('.product-info').show();
                            });
                        
                        </script>
                        
                        <?php
                            }
                        ?>
                    </div>
                </div>
        </div>
</div>
<script>
	var valid_email = '<?php echo translate('must_be_a_valid_email_address'); ?>';
	var required = '<?php echo translate('required'); ?>';
	var sent = '<?php echo translate('message_sent!'); ?>';
	var required = '<?php echo translate('required'); ?>';
	var base_url = '<?php echo base_url(); ?>';


	$(document).ready(function() {
		$('#share').share({
			networks: ['facebook','googleplus','twitter','linkedin','tumblr','in1','stumbleupon','digg'],
			theme: 'square'
		});
		
		$(".owl-carousel-44").owlCarousel({
			items : 3,
			lazyLoad : true,
			pagination : false,
			autoPlay: 5000,
			stopOnHover: true
		}); 
	});

	(function () {
		var $host;
		$host = $('[mag-thumb="outer"]');
		$host.mag({
		  mode: 'outer',
  		  ratio: 1 / 1.6
		});
	})();

</script>
