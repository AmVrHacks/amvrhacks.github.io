<div class="row">
	<div class="col-md-12">
    	<table class="table table-orders table-bordered table-striped table-responsive no-margin">
            <tbody>
                <tr>
                    <th><?php echo translate('ticket_subject');?></th>
                    <th><?php echo translate('options');?></th>
                </tr>
                <?php                    
                    foreach($tickets as $row) {
                ?>
                <tr>                    
                    <td><?php echo $row['subject'];?>
                    <?php
                        $num = $this->Crud_model->ticket_unread_messages($row['ticket_id'],'user');
                        if($num > 0){
                    ?>
                        <span class="btn btn-base" style="margin-left:10px">
							<?php 
                                echo translate('new_message').' '.'('.' ';
                                echo $num .' '.')'; 
                            ?>
						</span>
                    <?php }?>    
                    </td>
                    <td>
                        <a class="btn btn-base btn-sm btn-icon fa-envelope" href="<?php echo base_url(); ?>index.php/home/ticket_message/<?php echo $row['ticket_id']?>"><span><?php echo translate('view_messages')?></span></a>
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