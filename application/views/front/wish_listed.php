<div class="row">
	<div class="col-md-12">    
        <table class="table table-orders table-bordered table-striped table-responsive no-margin ">
            <tbody>
                <tr>
                    <th><?php echo translate('image');?></th>
                    <th><?php echo translate('product_title');?></th>
                    <th><?php echo translate('price');?></th>
                    <th><?php echo translate('option');?></th>
                </tr>
                <?php
    				foreach ($query as $row3) {	 
    			?>
                <tr>
                    <td><img src="<?php echo $this->Crud_model->product_image($row3['product_id']);?>" class="img-responsive"  alt="" width="100px"></td>
                    <td><?php echo $row3['title']; ?></td>
                    <td><?php  echo currency($row3['price']); ?></td>
                    <td>
                          <small><a href="<?php echo base_url(); ?>index.php/home/product_view/<?php echo $row3['product_id']?>" class="btn btn-base btn-icon fa-location-arrow btn-sm"><span><?php echo translate('view_details');?></span></a></small>
                    </td>
                </tr>
                <?php
                 }
                ?>
            </tbody>
        </table>
    </div>
</div>

<div class="text-center" style="display:block;" id="pagenation_set_links" >
    <?php echo $this->ajax_pagination->create_links(); ?>
</div><!--/end pagination-->