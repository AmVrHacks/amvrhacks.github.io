<div class="col-md-12"> 
    <div class="panel panel-info">
        <div class="panel-heading" style="font-size:16px;text-align:center;">
            <h2>
                <?php echo translate('contact_on');?> : 
                <?php echo $this->Crud_model->get_type_name_by_id('product',$product,'title'); ?>
            </h2>
        </div>
        <div class="panel-body" style="padding:15px 4px;">
            <table class="table table-striped" style="border-radius:3px;"> 
                           
                <tr>
                    <th class="custom_td"><?php echo translate('email');?></th>
                    <td class="custom_td">
                        <?php echo $email; ?>
                    </td>
                </tr>  
                             
                <tr>
                    <th class="custom_td"><?php echo translate('phone');?></th>
                    <td class="custom_td">
                        <?php echo $phone; ?>
                    </td>
                </tr> 
                              
                <tr>
                    <th class="custom_td"><?php echo translate('product');?></th>
                    <td class="custom_td">
                        <?php echo $this->Crud_model->get_type_name_by_id('product',$product,'title'); ?>
                    </td>
                </tr> 
                
                <tr>
                    <th class="custom_td"><?php echo translate('date_&_time');?></th>
                    <td class="custom_td">
                        <?php echo $date; ?>
                    </td>
                </tr>
                           
                <tr>
                    <th class="custom_td"><?php echo translate('message');?></th>
                    <td class="custom_td">
                        <?php echo $msg; ?>
                    </td>
                </tr>
                
            </table>
        </div>
    </div>
</div>
<style>
.custom_td{
	border-right:1px solid #ccc;
	border-left:1px solid #ccc;
	border-bottom:1px solid #ccc;
}
</style>