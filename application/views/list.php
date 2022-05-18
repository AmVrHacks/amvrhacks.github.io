					<?php
						if($type == 'list'){
							foreach($selected_product as $row)
							{
								
                    ?>
                    <div class="row">
                        <div class="wp-block property list">
                            <div class="wp-block-body col-md-12">
                                <div class="wp-block-img col-md-4" style="padding-left:0px;">
                                    <a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>">
                                    <?php
                                        if(file_exists('uploads/product_image/product_'.$row['product_id'].'_1.jpg')){
                                    ?>
                                    <img src="<?php echo base_url(); ?>uploads/product_image/product_<?php echo $row['product_id'];?>_1.jpg" class="img-responsive"  alt="">
                                    <?php
                                    }
                                    ?>
                                    </a>
                                </div>
                                <div class="wp-block-content clearfix col-md-8" style="padding-right:0px;">
                                    <a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>"><h4 class="content-title"><?php echo $row['title'];?></h4></a>
                                    <small>10 days only</small>
                                    <p class="description"><?php echo $row['description'];?></p>
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-sm-12">
                                            <div class="col-md-6 col-sm-4 col-lg-6">
                                                <span class="pull-left">
                                                    <span class="price"><?php echo currency();?><?php echo $row['price'];?></span> 
                                                </span>
                                            </div>
                                            <div class="col-md-4 col-sm-4 col-lg-4">
                                                <a href="#" class="btn btn-base btn-icon fa-heart pull-right">
                                                    <span><?php echo translate('favourite');?></span>
                                                </a>
                                            </div>
                                            <div class="col-md-2 col-sm-4 col-lg-2">
                                                <a href="#" class="btn btn-dark pull-right">
                                                    <span><?php echo translate('compare');?></span>
                                                </a>
                                            </div>
                                         </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wp-block-footer">
                                <ul class="aux-info">
                                    <li><i class="fa fa-tint"></i><small><?php echo translate('location');?></small></li>
                                    <li><i class="fa"></i> <small><?php echo $this->Crud_model->get_type_name_by_id('category',$row['category_id']);?></small></li>
                                    <li><i class="fa"></i> <small><?php echo $this->Crud_model->get_type_name_by_id('sub_category',$row['sub_category_id']);?></small></li>
                                    <li><i class="fa"></i> <small><a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>" class="btn btn-link">View Details</a></small></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php
                        	}
						} else if($type == 'grid'){
						
						$i=0;
						foreach($selected_product as $row)
						{
							if($i % 3==0)
                                        {
                                ?>
                                <div class="row">
                                <?php
                                        }
                                ?>
                                    <div class="col-md-4" >
                                        <div class="wp-block product style-2">
                                            <figure>
                                                <a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>">
                                                <?php
                                                    if(file_exists('uploads/product_image/product_'.$row['product_id'].'_1.jpg')){
                                                ?>
                                                <img src="<?php echo base_url(); ?>uploads/product_image/product_<?php echo $row['product_id'];?>_1.jpg" class="img-responsive img-center"  style="height:200px;" alt="">
                                                <?php
                                                }
                                                ?>
                                                </a>
                                            </figure>
                                            <div class="wp-block-body">
                                                <h3 class="text-center">
                                                    <a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>"><?php echo $row['title'];?></a>
                                                </h3>
                                            </div>
                                            <div class="wp-block-footer">
                                                <span class="col-md-6">
                                                    <span class="price"><?php echo $this->Crud_model->get_type_name_by_id('category',$row['category_id'],'name');?></span>
                                                 </span>
                                                 <span class="col-md-6">
                                                    <span class="price"><?php echo $this->Crud_model->get_type_name_by_id('sub_category',$row['sub_category_id']);?></span>
                                                 </span>
                                            </div>
                                            <div class="wp-block-footer">
                                                <span class="cell price-wr">
                                                    <span class="price"><?php echo currency();?><?php echo $row['price'];?></span>
                                                 </span>
                                            </div>
                                            <div class="wp-block-footer col-md-12" style="padding:5px;">
                                                <span class="col-md-6">
                                                    <?php
                                                    	if($this->Crud_model->is_wished($row['product_id']) == 'no'){
													?>
                                                    <span class="btn btn-xs btn-base pull-left wish_it" data-pid='<?php echo $row['product_id']; ?>'>
                                                        <span><?php echo translate('favorite');?></span>
                                                    </span>
                                                    <?php } else { ?>
                                                    <span class="btn btn-xs btn-base pull-left wished_it">
                                                        <span><?php echo translate('favoured');?></span>
                                                    </span>
                                                    <?php } ?>
                                                 </span>
                                                 <span class="col-md-6">
                                                    <span class="btn btn-xs btn-dark pull-right btn_compare" data-pid="<?php echo $row['product_id']; ?>">
                                                        <span><?php echo translate('compare');?></span>
                                                    </span>
                                                 </span>
                                            </div>
                                            <div class="wp-block-footer col-md-12"  style="padding:5px;">
                                                <span class="col-md-6">
                                                    <a href="#" class="btn btn-xs btn-light pull-left">
                                                        <span><?php echo translate('see_more');?></span>
                                                    </a>
                                                 </span>
                                                 <span class="col-md-6">
                                                    <div class="btn btn-xs btn-alt pull-right">
                                                        <span class="openactiveModal-1 manualLabel" data-ajax="<?php echo base_url(); ?>index.php/home/get_my_distance/<?php echo $row['product_id']; ?>"><?php echo translate('distance');?></span>
                                                    </div>
                                                 </span>
                                            </div>
                                        </div>
                                    </div>
                                <?php
                                        if($i%3==2)
                                        {
                                ?>
                                </div>
                                <?php
                                        }
                                        $i++;
							}
						}
					?>

<div class="text-center" style="display:none;" id="pagenation_set_links" >
    <?php echo $this->ajax_pagination->create_links(); ?>
</div><!--/end pagination-->

<script>
    set_modal();
</script>