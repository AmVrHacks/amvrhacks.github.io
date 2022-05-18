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
                            <?php
                                    $i=0;
                                    foreach($all_product as $row)
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
                                                    <a href="#" class="btn btn-xs btn-base pull-left">
                                                        <span>Favourite</span>
                                                    </a>
                                                 </span>
                                                 <span class="col-md-6">
                                                    <a href="#" class="btn btn-xs btn-dark pull-right">
                                                        <span>Compare</span>
                                                    </a>
                                                 </span>
                                            </div>
                                            <div class="wp-block-footer col-md-12"  style="padding:5px;">
                                                <span class="col-md-6">
                                                    <a href="#" class="btn btn-xs btn-light pull-left">
                                                        <span>See More</span>
                                                    </a>
                                                 </span>
                                                 <span class="col-md-6">
                                                    <div class="btn btn-xs btn-alt pull-right">
                                                        <span class="openactiveModal-1 manualLabel" data-ajax="<?php echo base_url(); ?>index.php/home/get_my_distance/<?php echo $row['product_id']; ?>">Distance</span>
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
                                ?>