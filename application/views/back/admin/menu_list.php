	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,2" data-show-toggle="true" data-show-columns="false" data-search="true" >

			<thead>
				<tr>
					<th><?php echo translate('no');?></th>
					<th><?php echo translate('title');?></th>
                    <th><?php echo translate('publish');?></th>
					<th class="text-right"><?php echo translate('options');?></th>
				</tr>
			</thead>

			<tbody >
			<?php
				$i = 0;
            	foreach($all_menus as $row){
            		$i++;
			?>
			<tr>
				<td><?php echo $i; ?></td>
				<td>
                	<?php
						if($row['menu_id']==1)
						{
							echo translate('home');
						}
						elseif($row['menu_id']==2)
						{
							echo translate('categories');
						}
						elseif($row['menu_id']==3)
						{
							echo translate('featured_items');
						}
						elseif($row['menu_id']==4)
						{
							echo translate('latest_item');
						}
						elseif($row['menu_id']==5)
						{
							echo translate('contact');
						}
						else
						{
							echo translate($row['title']);
						}
                    ?>
                </td>
                <td>
                	<input id="men_<?php echo $row['menu_id']; ?>" class='sw99' type="checkbox" data-id='<?php echo $row['menu_id']; ?>' <?php if($row['status'] == 'ok'){ ?>checked<?php } ?> />
                </td>
				<td class="text-right">
                	<?php if($i>5){?>
					<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    	onclick="ajax_modal('edit','<?php echo translate('edit_menu'); ?>','<?php echo translate('successfully_edited!'); ?>','menu_edit','<?php echo $row['menu_id']; ?>')" 
                        	data-original-title="Edit" data-container="body">
                            	<?php echo translate('edit');?>
                    </a>
					<a onclick="delete_confirm('<?php echo $row['menu_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" 
                    	data-original-title="Delete" data-container="body">
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
           
	<div id='export-div'>
		<h1 style="display:none;"><?php echo translate('menu'); ?></h1>
		<table id="export-table" data-name='menu' data-orientation='p' style="display:none;">
				<thead>
					<tr>
						<th><?php echo translate('no');?></th>
						<th><?php echo translate('title');?></th>
					</tr>
				</thead>
					
				<tbody >
				<?php
					$i = 0;
	            	foreach($all_menus as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['title']; ?></td>
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>

