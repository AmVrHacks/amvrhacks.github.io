<!--CONTENT CONTAINER-->
<?php 
		foreach($payments_data as $row)
        { 
?>

<h4 class="modal-title text-center padd-all"><?php echo translate('paument_details');?> </h4>
	<hr style="margin: 10px 0 !important;">
    <div class="row">
    <div class="col-md-12">
        <div class="text-center pad-all">
            <div class="col-md-12">
                <table class="table table-striped col-md-12" style="border-radius:3px;">
                    <tr>
                        <th class="custom_td"><?php echo translate('user');?></th>
                        <td class="custom_td">
                            <?php echo $this->Crud_model->get_field('user',$row['user'],'username'); ?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('package');?></th>
                        <td class="custom_td">
                            <?php 
                                echo translate($row['cause']);
                                echo ' : ';
                                if($row['cause'] == 'product_package'){
                                    echo $this->Crud_model->get_field('product_type',$row['package'],'name');
                                    echo '<br>';
                                    echo translate('product');
                                    echo ' : ';
                                    echo $this->Crud_model->get_field('product',$row['info'],'title');
                                } elseif($row['cause'] == 'user_package'){ 
                                    echo $this->Crud_model->get_field('user_type',$row['package'],'name');
                                }
                            ?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('amount');?></th>
                        <td class="custom_td">
                            <?php echo currency($row['amount']); ?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('time');?></th>
                        <td class="custom_td">
                            <?php echo date('d m Y, h:i:s A',$row['timestamp']); ?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('details');?></th>
                        <td class="custom_td">
                            <?php 
                                if($all = json_decode($row['details'],true)){
                                    foreach ($all as $key => $value) {
                                        echo '<b>'.$key.'</b> : '.$value.'</br>';
                                    }
                                }
                            ?>
                        </td>
                    </tr>
                </table>
            </div>
            <hr>
        </div>
    </div>
</div>				

<?php 
	}
?>
            
<style>
.custom_td{
border-left: 1px solid #ddd;
border-right: 1px solid #ddd;
border-bottom: 1px solid #ddd;
}
</style>

<script>
	$(document).ready(function(e) {
        $('.btn-purple').hide();
		proceed('to_list');
	});
</script>