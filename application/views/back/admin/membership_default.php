
<div>
	<?php
        echo form_open(base_url() . 'index.php/admin/membership/default_set/', array(
            'class' => 'form-horizontal',
            'method' => 'post',
            'id' => 'membership_edit',
            'enctype' => 'multipart/form-data'
        ));
    ?>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                    <?php echo translate('maximum_products');?>
                        </label>
                <div class="col-sm-6">
                    <input type="number" name="product_limit" placeholder="<?php echo translate('maximum_products'); ?>"
                        value="<?php echo $this->db->get_where('general_settings',array('type'=>'default_member_product_limit'))->row()->value; ?>" class="form-control required">
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label" for="demo-hor-2"><?php echo translate('membership_seal');?></label>
            <div class="col-sm-6">
                <span class="pull-left btn btn-default btn-file">
                    <?php echo translate('select_membership_seal');?>
                    <input type="file" name="img" id='imgInp' accept="image">
                </span>
                <br><br>
                <span id='wrap' class="pull-left" >
                    <img src="<?php echo $this->Crud_model->file_view('membership',0,'100','','thumb','src','','','.png') ?>" 
                        width="48.5%" id='blah' > 
                </span>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
    });


	$(document).ready(function() {
		$("form").submit(function(e){
			return false;
		});
	});
</script>
<script src="<?php echo base_url(); ?>template/back/js/custom/brand_form.js"></script>
