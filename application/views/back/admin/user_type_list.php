	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,2" data-show-toggle="true" data-show-columns="false" data-search="true" >

			<thead>
				<tr>
					<th><?php echo translate('no');?></th>
                    <th><?php echo translate('image');?></th>
					<th><?php echo translate('name');?></th>
                    <th><?php echo translate('product_type');?></th>
                    <th><?php echo translate('duration');?></th>
                    <th><?php echo translate('price');?></th>
                    <th><?php echo translate('status');?></th>
					<th class="text-right"><?php echo translate('options');?></th>
				</tr>
			</thead>

			<tbody >
			<?php
				$i = 0;
            	foreach($all_user_types as $row){
            		$i++;
			?>
			<tr>
				<td><?php echo $i; ?></td>
                <td><img class="img-sm img-circle img-border"
                    <?php if(file_exists('uploads/user_type_image/user_type_'.$row['user_type_id'].'.jpg')){ ?>
                        src="<?php echo base_url(); ?>uploads/user_type_image/user_type_<?php echo $row['user_type_id']; ?>.jpg"
                    <?php }
					else { ?>
                        src="<?php echo base_url(); ?>uploads/user_image/default.png"
                    <?php } ?>  />
                    
                </td>
				<td><?php echo $row['name']; ?></td>
                <td>
					<?php
						$details = json_decode($row['product_type'],true);
						foreach($details as $row1){
							$product_type_name = $this->Crud_model->get_type_name_by_id('product_type',$row1['product_type']);
					?>
                    	<?php echo $product_type_name; ?> (<?php echo $row1['piece'].' '.translate('pieces'); ?>) <br>
                    <?php
						}
					?>
                </td>
                <td>
					 <?php
					 	if($row['details'] == 'unlimited'){
							echo translate('unlimited');
						} else {
							$data1=json_decode($row['details'],true);
							echo str_replace('-',' ',$data1);
						}
					?>
                </td>
                <td><?php echo currency($row['price']); ?></td>
                <td><input class='aiz_switchery' type="checkbox" 
                	data-set='status' 
                    	data-id='<?php echo $row['user_type_id']; ?>' 
                        	data-tm='<?php echo translate('user_package_published'); ?>' 
                            	data-fm='<?php echo translate('user_package_unpublished'); ?>' 
									<?php if($row['status'] == 'ok'){ ?>checked<?php } ?> /></td>
				<td class="text-right">
					<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    	onclick="ajax_modal('edit','<?php echo translate('edit_user_package'); ?>','<?php echo translate('successfully_edited!'); ?>','user_type_edit','<?php echo $row['user_type_id']; ?>')" 
                        	data-original-title="Edit" data-container="body">
                            	<?php echo translate('edit');?>
                    </a>
					<a onclick="delete_confirm('<?php echo $row['user_type_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" 
                    	data-original-title="Delete" data-container="body">
                        	<?php echo translate('delete');?>
                    </a>
				</td>
			</tr>
            <?php
            	}
			?>
			</tbody>
		</table>
	</div>
           
	<div id='export-div'>
		<h1 style="display:none;"><?php echo translate('user_type'); ?></h1>
		<table id="export-table" data-name='user_type' data-orientation='p' style="display:none;">
				<thead>
					<tr>
						<th><?php echo translate('no');?></th>
						<th><?php echo translate('name');?></th>
					</tr>
				</thead>
					
				<tbody >
				<?php
					$i = 0;
	            	foreach($all_user_types as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['name']; ?></td>
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>

