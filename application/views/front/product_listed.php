<div class="row">
	<div class="col-md-12">
    	<table class="table table-orders table-bordered table-striped table-responsive no-margin">
            <tbody>
                <tr>
                    <th><?php echo translate('image');?></th>
                    <th><?php echo translate('advertisement_title');?></th>
                    <th><?php echo translate('price');?></th>
                    <th><?php echo translate('show');?></th>
                    <th><?php echo translate('option');?></th>
                </tr>
                <?php
                    
                    foreach($products as $row) {
                ?>
                <tr>
                    <td><img src="<?php echo $this->Crud_model->product_image($row['product_id']);?>" class="img-responsive"  alt="" width="100px"></td>
                    <td><?php echo $row['title']?></td>
                    <td><?php echo currency($row['price']);?></td>
                    <td>
                        <input class='aiz_switchery' type="checkbox" 
                            data-set='published' 
                                data-id='<?php echo $row['product_id']; ?>' 
                                    data-tm='<?php echo translate('advertisement_shown'); ?>' 
                                        data-fm='<?php echo translate('advertisement_hidden'); ?>' 
                                            <?php if($row['shown'] == 'ok'){ ?>checked<?php } ?> />
                    </td>
                    <td>
                         <small>
                            <a class="btn btn-base btn-sm btn-primary" 
                                data-toggle="tooltip" title="<?php echo translate('edit'); ?>"
                                    href="<?php echo base_url(); ?>index.php/home/product_edit/<?php echo $row['product_id'] ?>" >
                                <i class="fa fa-wrench no-margin"></i>
                            </a>
                         </small>
                         <small>
                             <a class="btn btn-base btn-sm" 
                                data-toggle="tooltip" title="<?php echo translate('view_product'); ?>"
                                    href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id'] ?>/temp_viewer/<?php echo $row['product_trace_key'] ?>/nope">
                                <i class="fa fa-location-arrow no-margin"></i>
                            </a>
                         </small>
                         <small>
                            <a class="btn btn-base btn-sm" 
                                data-toggle="tooltip" title="<?php echo translate('change_package'); ?>"
                                    href="<?php echo base_url(); ?>index.php/home/product_package/<?php echo $row['product_id'] ?>">
                                <i class="fa fa-usd no-margin"></i>
                            </a>
                         </small>
                         <small>
                            <a class="btn btn-danger btn-sm" 
                                onclick="return confirm('<?php echo translate('do_you_rellay_want_to_delete_this_product?'); ?>');" 
                                    href="<?php echo base_url(); ?>index.php/home/product_delete/<?php echo $row['product_id'] ?>" 
                                        data-toggle="tooltip" title="<?php echo translate('delete'); ?>" >
                                 <i class="fa fa-trash no-margin"></i>
                            </a>
                         </small>
                    </td>
                </tr>
                
                <?php }?>
            </tbody>
        </table>
    </div>
</div>

<div class="text-center" style="display:block;" id="pagenation_set_links" >
    <?php echo $this->ajax_pagination->create_links(); ?>
</div><!--/end pagination-->

<script>
	$(document).ready(function(){ 
		tooltip_set();
	});
</script>