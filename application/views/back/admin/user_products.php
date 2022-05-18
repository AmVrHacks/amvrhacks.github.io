
    
        <div class="col-sm-8 col-sm-offset-2">
            <div class="panel-body"  id="demo_s">
                <table id="demo-table-in" class="table table-striped"  data-pagination="true" data-show-refresh="false" data-ignorecol="0,2" data-show-toggle="false" data-show-columns="false" data-search="true" >
        		<thead>
                    <tr>
                        <th class="custom_td"><?php echo translate('image');?></th>
                        <th class="custom_td"><?php echo translate('title');?></th>
                        <th class="custom_td"><?php echo translate('category');?></th>
                        <th class="custom_td"><?php echo translate('view');?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
						foreach($products as $row)
						{ 
					?>
                    <tr>
                        <td class="custom_td">
                        	<img src="<?php echo $this->Crud_model->product_image($row['product_id']); ?>" height="80" />
                        </td>
                        <td class="custom_td">
							<?php echo $row['title']; ?>
                        </td>
                        <td class="custom_td">
							<?php echo $this->db->get_where('category',array('category_id'=>$row['category_id']))->row()->name; ?>
                        </td>
                        <td class="custom_td">
							<a class="btn btn-primary btn-xs" target="_blank" href="<?php echo $this->Crud_model->product_link($row['product_id']); ?>" ><?php echo translate('view'); ?></a>
                            	
                        </td>
                    </tr>
                    <?php
						}
					?>
        		</tbody>
                </table>
              </div>
            </div>
            
    
            
<style>
.custom_td{
border-left: 1px solid #ddd;
border-right: 1px solid #ddd;
border-bottom: 1px solid #ddd;
}
</style>

<script>
	$(document).ready(function(){
		$('#demo-table-in').bootstrapTable();
	});
</script>