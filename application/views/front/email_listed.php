<div class="row">
	<div class="col-md-12">
        <table class="table table-orders table-bordered table-striped table-responsive no-margin">
            <tbody>
                <tr>
                    <th><?php echo translate('date');?></th>
                    <th><?php echo translate('product_title');?></th>
                    <th><?php echo translate('email');?></th>
                    <th><?php echo translate('phone_no');?></th>
                    <th><?php echo translate('message');?></th>
                </tr>
                <?php
                    
                    foreach($email as $row) {
                ?>
                <tr>
                    <td><?php echo $row['date'];?></td>
                    <td><?php echo $this->Crud_model->get_type_name_by_id('product',$row['product'],'title');?></td>
                    <td><?php echo $row['email'];?></td>
                    <td><?php echo $row['phone'];?></td>
                    <td><a class="btn btn-base btn-sm btn-icon fa-envelope" onclick="tracing_view('<?php echo base_url(); ?>index.php/home/message/<?php echo $row['email_tracing_id']?>')"><span><?php echo translate('view_message')?></span></a>
                    <!--<?php echo substr($row['massage'],0,1000);?>-->
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