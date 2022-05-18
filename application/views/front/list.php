<!--- homepage list and grid view---->  
<!---list.php------------------>
<?php 
	if ($this->agent->is_mobile()){
		$type = 'grid';
	}
?>
					<?php
						if($type == 'list'){
					?>
                    <ul class="list-listings-2">
                    <?php
							foreach($selected_product as $row)
							{		
                    ?>
								
                    	 <li class="featured">
                                <div class="listing-image" style="height:200px; width:200px; background:url(<?php echo $this->Crud_model->product_image($row['product_id'],'thumb'); ?>) no-repeat center center; background-size: 100% auto;">
                                    <a href="<?php echo $this->Crud_model->product_link($row['product_id']); ?>" class="btn btn-lg btn-square btn-base btn-block-bm btn-icon btn-icon-go">
                                    <span><?php echo translate('see_more');?></span>
                                    </a>
                                </div>
                                <div class="cell">
                                    <div class="listing-body clearfix">
                                        <h3><a href="<?php echo $this->Crud_model->product_link($row['product_id']); ?>"><?php echo limit_chars($row['title'],80);?></a></h3>
                                        <h4><strong><?php echo translate('price : ') ;?></strong> <?php echo currency($row['price']);?></h4>
                                        <p>
                                        	<?php echo limit_chars($row['description'],200);?>
                                        </p>
                                    </div>
                                    <div class="listing-footer">
                                        <ul class="aux-info">
                                            <li>
                                                <strong><?php echo translate('category');?> : </strong> 
												<?php echo $this->Crud_model->get_type_name_by_id('category',$row['category_id']);?>
                                            </li>
                                            <li>
                                                <strong><?php echo translate('sub Category');?> : </strong> 
												<?php echo $this->Crud_model->get_type_name_by_id('sub_category',$row['sub_category_id']);?>
                                            </li>
                                            <li>
                                                <strong><?php echo translate('condition');?> : </strong> 
												<?php echo $row['condition'];?>
                                            </li>
                                            <li>
                                                <strong><?php echo translate('date');?> : </strong> 
												<?php echo date('d M,Y',$row['date']); ?>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="listing-footer" >
                                        <ul class="aux-info">
                                            <li>
                                                <div class="btn btn-base btn-xs btn-icon fa-eye openactiveModal-7"  onclick="quick_view('<?php echo $this->Crud_model->product_link($row['product_id'],'quick'); ?>');" >
                                                    <span><?php echo translate('quick_view');?></span>
                                                </div>                                          
                                            </li>
                                            <li>
                                                <span class="btn btn-base btn-xs btn-icon fa-random btn_compare" data-pid="<?php echo $row['product_id']; ?>">
                                                    <span><?php echo translate('compare');?></span>
                                               </span>                                            
                                            </li>
                                            <li>
												<?php
                                                    if($this->Crud_model->is_wished($row['product_id']) == 'no'){
                                                ?>
                                                <span class="btn btn-base btn-xs btn-icon fa-thumbs-up wish_it" data-pid='<?php echo $row['product_id']; ?>'>
                                                    <span><?php echo translate('favorite');?></span>
                                                </span>
                                                <?php } else { ?>
                                                <span class="btn btn-base btn-xs btn-icon fa-thumbs-up wished_it">
                                                    <span><?php echo translate('favoured');?></span>
                                                </span>
                                                <?php } ?>
                                            
                                            </li>
                                            <li>
                                                <div class="btn btn-xs btn-base btn-icon fa-map-marker pull-right">
                                                    <span onclick="get_distance('<?php echo $row['product_id']; ?>');"><?php echo translate('distance');?></span>
                                                </div>
                                            
                                            </li>
                                            <li>
                                                <button type="button" name="submit" class="btn btn-base btn-xs btn-icon fa-envelope" onclick="get_contact('<?php echo $row['product_id']; ?>');" >
                                                    <span><?php echo translate('contact_author');?></span>
                                                </button>                                            
                                            </li>
                                        </ul>
                                    </div>
                                </div> 
                            </li>
                    <?php
                        	}
					?>
                    </ul>
                    <?php
						} else if($type == 'grid'){
						
						$i=0;
						foreach($selected_product as $row)
						{
							if($i % 3==0) {
                                ?>
                                <div class="row">
                                <?php
                                    }
                                ?>
                                <div class="col-md-4 item <?php if($i == 1){ ?>active<?php } ?>" >
                                    <div class="wp-block product style-2 col-md-12">                            
                                    <div class="box">
                                        <div class="box-img">
                                            <span class="over-layer base_opc">
                                                <ul>
                                                    <li>
                                                        <span class="btn btn-xs btn-base btn-icon fa-eye openactiveModal-7"  onclick="quick_view('<?php echo $this->Crud_model->product_link($row['product_id'],'quick'); ?>');">
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
                                            <a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id']; ?>">        
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
                                            <button class="button button--itzel button--text-thick col-md-12"  onclick="get_contact('<?php echo $row['product_id']; ?>');"><i class="button__icon fa fa-envelope"></i><span><?php echo translate('contact');?></span></button>
                                         </span>
                                        <span class="col-md-6">
                                            <button class="button button--itzel button--text-thick col-md-12"  onclick="get_distance('<?php echo $row['product_id']; ?>');"><i class="button__icon fa fa-map-marker"></i><span><?php echo translate('distance');?></span></button>
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
<style>
	.wp-block.product.style-2:hover{
		-webkit-box-shadow: -1px 2px 35px 6px rgba(156,156,156,0.55);
		-moz-box-shadow: -1px 2px 35px 6px rgba(156,156,156,0.55);
		box-shadow: -1px 2px 35px 6px rgba(156,156,156,0.55);
	}
</style>
<script>
	$(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip();   
		opc_color();
	});
</script>