<!--CONTENT CONTAINER-->
                <div>
                    <!--Form for user-->
					<?php 
					foreach($user_data as $row)
                        { 
                    ?>
					<?php
                        echo form_open(base_url() . 'index.php/admin/user/update/'.$row['user_id'], array(
                            'class' => 'form-horizontal',
                            'method' => 'post',
                            'id' => 'user_edit',
                            'enctype' => 'multipart/form-data'
                        ));
                    ?>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('user_name');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="username" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['username']?>" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('sur_name');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="surname" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['surname']?>" >
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('email');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="email" name="email" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['email']?>" >
                </div>
           </div>
           <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('phone');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="phone" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['phone']?>" >
                </div>
           </div>
           <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('address');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="address1" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['address1']?>" >
                </div>
           </div>
           <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('country');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="address2" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['address2']?>" >
                </div>
          </div>
          <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('city');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="city" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['city']?>" >
                </div>
          </div>
          <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('zip');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="zip" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['zip']?>">
                </div>
          </div>
          <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('password');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="password" name="password" id="demo-hor-1" 
                    	class="form-control required" value="<?php echo $row['password']?>" >
                </div>
          </div>
          <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('google_plus');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="google_plus" id="demo-hor-1" 
                    	class="form-control " value="<?php echo $row['google_plus']?>">
                </div>
          </div>
          <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('skype');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="skype" id="demo-hor-1" 
                    	class="form-control " value="<?php echo $row['skype']?>" >
                </div>
          </div>
          <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('facebook');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="facebook" id="demo-hor-1" 
                    	class="form-control " value="<?php echo $row['facebook']?>" >
                </div>
          </div>
          <div class="form-group">
                <label for="demo-is-inputlarge" class="col-sm-4 control-label"><?php echo translate('Photo');?></label>
                <div class="col-sm-6">
                    <span class="pull-left btn btn-default btn-file">
                         <?php echo translate('Choose your photo');?> <input type="file" name="img">
                    </span>
               </div>
          </div>
	</form>
    <?php }?>
</div>

<script>
	$(document).ready(function() {
		$("form").submit(function(e){
			return false;
		});
	});
</script>