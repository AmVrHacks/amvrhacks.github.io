<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('no');?></th>
                <th><?php echo translate('image');?></th>
                <th><?php echo translate('name');?></th>
                <th class="text-right"><?php echo translate('options');?></th>
            </tr>
        </thead>				
        <tbody >
        <?php
            $i = 0;
            foreach($all_users as $row){
                $i++;
        ?>                
        <tr>
            <td><?php echo $i; ?></td>
            <td>
                <img class="img-sm img-circle img-border"
                    <?php if(file_exists('uploads/user_image/user_'.$row['user_id'].'.jpg')){ ?>
                        src="<?php echo base_url(); ?>uploads/user_image/user_<?php echo $row['user_id']; ?>.jpg"
                    <?php } else if($row['fb_id'] !== ''){ ?>
                        src="https://graph.facebook.com/<?php echo $row['fb_id']; ?>/picture?type=large" data-im='fb'
                    <?php } else if($row['g_id'] !== ''){ ?>
                    	src="<?php echo $row['g_photo']; ?>"
					<?php } else { ?>
                        src="<?php echo base_url(); ?>uploads/user_image/default.png"
                    <?php } ?>  />
            </td>
            <td><?php echo $row['username']; ?></td>
            <td class="text-right">
                <a class="btn btn-mint btn-xs btn-labeled fa fa-user" data-toggle="tooltip" 
                    onclick="ajax_modal('view','<?php echo translate('view_profile'); ?>','<?php echo translate('successfully_viewed!'); ?>','user_view','<?php echo $row['user_id']; ?>')" data-original-title="View" data-container="body">
                        <?php echo translate('profile');?>
                </a>
                <a class="btn btn-info btn-xs btn-labeled fa fa-location-arrow" data-toggle="tooltip" 
                    onclick="ajax_set_full('products','<?php echo translate('view_profile'); ?>','<?php echo translate('successfully_viewed!'); ?>','user_view','<?php echo $row['user_id']; ?>');  proceed('to_list');" data-original-title="View" data-container="body">
                        <?php echo translate('uploaded_ads');?>
                </a>
                 <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    onclick="ajax_modal('edit','<?php echo translate('edit_user'); ?>','<?php echo translate('successfully_edited!'); ?>','user_edit','<?php echo $row['user_id']; ?>')" data-original-title="Edit" data-container="body">
						<?php echo translate('edit');?>
                </a>
                <a onclick="delete_confirm('<?php echo $row['user_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')" class="btn btn-xs btn-danger btn-labeled fa fa-trash" data-toggle="tooltip" 
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
    
    <div id='export-div' style="padding:40px;">
		<h1 id ='export-title' style="display:none;"><?php echo translate('users'); ?></h1>
		<table id="export-table" class="table" data-name='users' data-orientation='p' data-width='1500' style="display:none;">
				<colgroup>
					<col width="50">
					<col width="150">
					<col width="150">
					<col width="150">
				</colgroup>
				<thead>
					<tr>
						<th><?php echo translate('no');?></th>
                        <th><?php echo translate('name');?></th>
                        <th><?php echo translate('e-mail');?></th>
					</tr>
				</thead>



				<tbody >
				<?php
					$i = 0;
	            	foreach($all_users as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['username']; ?> <?php echo $row['surname']; ?></td>
					<td><?php echo $row['email']; ?></td>          	
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>
           