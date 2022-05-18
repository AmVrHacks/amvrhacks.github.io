<?php 
	foreach($user_type_data as $row)
	{ 
?>
    <div id="content-container" style="padding-top:0px !important;">
        <div class="text-center pad-all">
            <div class="pad-ver">
                <img 
                    <?php if(file_exists('uploads/user_type_image/user_type_'.$row['user_type_id'].'.jpg')){ ?>
                        src="<?php echo base_url(); ?>uploads/user_type_image/user_type_<?php echo $row['user_type_id']; ?>.jpg"
                    <?php }  else { ?>
                        src="<?php echo base_url(); ?>template/front/uploads/img/user_type.jpg"
                    <?php } ?>
                    class="img-md img-border img-circle" alt="Profile Picture">
            </div>
            <h4 class="text-lg text-overflow mar-no"><?php echo $row['name']?></h4>
            <p class="text-sm"><?php echo translate('user_type');?></p>
            <hr>
        </div>
    
    
    <div class="row">
        <div class="col-sm-12">
            <div class="panel-body">
                <table class="table table-striped" style="border-radius:3px;">
                    <tr>
                        <th class="custom_td"><?php echo translate('name');?></th>
                        <td class="custom_td"><?php echo $row['name'] ?></td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('details');?></th>
                        <td class="custom_td">
                            <?php echo $row['details']?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('price');?></th>
                        <td class="custom_td"><?php echo $row['price']?></td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('status');?></th>
                        <td class="custom_td"><?php echo $row['status']?></td>
                    </tr>
                </table>
              </div>
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