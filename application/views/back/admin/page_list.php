	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,6" data-show-toggle="false" data-show-columns="false" data-search="true" >
			<thead>
				<tr>
					<th><?php echo translate('no');?></th>
					<th><?php echo translate('page_name');?></th>					
					<th><?php echo translate('publish');?></th>		
					<th class="text-right"><?php echo translate('options');?></th>
				</tr>
			</thead>
	
			<tbody >
			<?php
				$i=0;
            	foreach($all_page as $row){
            		$i++;
			?>
			<tr>
				<td><?php echo $i; ?></td>
				<td><?php echo translate($row['page_name']); ?></td>
                <td>
                    <?php if($row['fixed'] == 'ok'){?>
                    	<?php echo translate('fixed_page'); ?>
                    <?php } else {?>
                		<input id="pag_<?php echo $row['page_id']; ?>" class='sw1' type="checkbox" data-id='<?php echo $row['page_id']; ?>' <?php if($row['status'] == 'ok'){ ?>checked<?php } ?> />
                    <?php } ?>
                </td>
				<td class="text-right">
                	<?php if($row['fixed']== 'ok'){?>
                	<?php if($row['page_id']==1){?>
                    <a class="btn btn-info btn-xs btn-labeled fa fa-location-arrow" 
                    	href="<?php echo base_url(); ?>" target="_blank" >
                        	<?php echo translate('preview');?>
                    </a>
                    <?php }else {?>
                	<a class="btn btn-info btn-xs btn-labeled fa fa-location-arrow" 
                    	href="<?php echo base_url(); ?>index.php/home/<?php echo $row['page_name']?>" target="_blank" >
                        	<?php echo translate('preview');?>
                    </a>
                    <?php }?>
                    <?php } else {?>
                    <a class="btn btn-info btn-xs btn-labeled fa fa-location-arrow" 
                    	href="<?php echo base_url(); ?>index.php/home/page/<?php echo $row['parmalink']; ?>" target="_blank" >
                        	<?php echo translate('preview');?>
                    </a>
                    <?php }?>
                    <?php if($row['fixed'] == 'ok'){?>
                    	<button class="btn btn-success btn-xs btn-labeled fa fa-wrench" 
                        	onclick="ajax_set_full('serial','<?php echo translate('widget_serial'); ?>','<?php echo translate('successfully_serialized!'); ?>','page_serial','<?php echo $row['page_id']; ?>'); ">
								<?php //echo translate($row['page_name']) ; 
									echo translate(' page_widget_serial');?>
                        </button>
                        
                     <?php } else { ?>
                        <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                            onclick="ajax_set_full('edit','<?php echo translate('edit_page'); ?>','<?php echo translate('successfully_edited!'); ?>','page_edit','<?php echo $row['page_id']; ?>')" data-original-title="Edit" data-container="body">
                                <?php echo translate('edit');?>
                        </a>
                        
                        <a onclick="delete_confirm('<?php echo $row['page_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')" 
                            class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body">
                                <?php echo translate('delete');?>
                        </a>
                    <?php }?>
				</td>
			</tr>
            <?php
            	}
			?>
			</tbody>
		</table>
	</div>
    <div id='export-div' style="padding:40px;">
		<h1 id ='export-title' style="display:none;"><?php echo translate('page');?></h1>
		<table id="export-table" class="table" data-name='page' data-orientation='p' data-width='1200' style="display:none;">
				<colgroup>
					<col width="50">
					<col width="150">
					<col width="150">
					<col width="150">
					<col width="150">
					<col width="150">
					<col width="150">
					<col width="150">
				</colgroup>
				<thead>
					<tr>
						<th><?php echo translate('no');?></th>
						<th><?php echo translate('title');?></th>
						<th><?php echo translate('category');?></th>
						<th><?php echo translate('sub-category');?></th>
						<th><?php echo translate('brand');?></th>
						<th><?php echo translate('quantity');?></th>
						<th><?php echo translate('sale_price');?></th>
						<th><?php echo translate('creation_date');?></th>
					</tr>
				</thead>



				<tbody >
				<?php
					$i = 0;
	            	foreach($all_page as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['title']; ?></td>
					<td><?php echo $this->Crud_model->get_field('category',$row['category'],'category_name'); ?></td>
					<td><?php echo $this->Crud_model->get_field('sub_category',$row['sub_category'],'sub_category_name'); ?></td>
					<td><?php echo $this->Crud_model->get_field('brand',$row['brand'],'name'); ?></td>
					<td><?php echo $row['current_stock']; ?> <?php echo $row['unit']; ?>(s)</td>
					<td><?php echo currency().$row['sale_price']; ?></td>
					<td><?php echo date('d M, Y',$row['add_timestamp']); ?></td>
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>
    