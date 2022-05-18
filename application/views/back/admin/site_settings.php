<?php
    $map_api = $this->db->get_where('general_settings',array('type' => 'map_api'))->row()->value;
?>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false&key=<?php echo $map_api; ?>"></script>
<div id="content-container"> 
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('manage_site');?></h1>
    </div>
    <div class="tab-base">
        <div class="panel">
            <div class="tab-base tab-stacked-left">
                <ul class="nav nav-tabs">
                    <li class="active" >
                        <a data-toggle="tab" href="#demo-stk-lft-tab-1"><?php echo translate('general_settings');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#color_schemes"><?php echo translate('theme_color');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-font"><?php echo translate('fonts');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-2"><?php echo translate('logo');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#preloader"><?php echo translate('preloader');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-3"><?php echo translate('favicon');?></a>
                    </li>
                    <li >
                        <a data-toggle="tab" href="#demo-stk-lft-tab-4"><?php echo translate('social_media');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-7"><?php echo translate('social_login_configuaration');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-c"><?php echo translate('product_comment_settings');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-8"><?php echo translate('captcha_settings');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-6"><?php echo translate('terms_&_condition');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-p"><?php echo translate('privacy_policy');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-home"><?php echo translate('home_page');?></a>
                    </li>
                    <li >
                        <a data-toggle="tab" href="#demo-contact"><?php echo translate('contact_page');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-footer"><?php echo translate('footer');?></a>
                    </li>
                </ul>

                <div class="tab-content bg_grey">
                    <div id="demo-stk-lft-tab-1" class="tab-pane fade active in">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('general_settings');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/set/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => 'gen_set',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('system_name');?></label>
                                        <div class="col-sm-6">
                                            <input type="text" name="system_name" value="<?php echo $this->Crud_model->get_type_name_by_id('general_settings','1','value'); ?>"  class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('system_email');?></label>
                                        <div class="col-sm-6">
                                            <input type="text" name="system_email" value="<?php echo $this->Crud_model->get_type_name_by_id('general_settings','2','value'); ?>"  class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('system_title');?></label>
                                        <div class="col-sm-6">
                                            <input type="text" name="system_title" value="<?php echo $this->Crud_model->get_type_name_by_id('general_settings','3','value'); ?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('homepage_cache_time');?> (Munites)</label>
                                        <div class="col-sm-4">
                                            <input type="number" min='0' step='.01' name="cache_time" value="<?php echo $this->Crud_model->get_type_name_by_id('general_settings','59','value'); ?>" class="form-control">
                                        </div>
                                        <div class="col-sm-2">
                                            Munites
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('language');?></label>
                                        <div class="col-sm-6">
                                            <select name="language" class="demo-cs-multiselect">
                                            <?php
                                                $set_lang = $this->db->get_where('general_settings',array('type'=>'language'))->row()->value;
                                                $fields = $this->db->list_fields('language');
                                                foreach ($fields as $field)
                                                {
                                                    if($field !== 'word' && $field !== 'word_id'){
                                            ?>
                                                <option value="<?php echo $field; ?>" <?php if($set_lang == $field){ echo 'selected'; } ?> ><?php echo ucfirst($field); ?></option>
                                            <?php
                                                    }
                                                }
                                            ?>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('number_of_search_product_result');?></label>
                                        <div class="col-sm-6">
                                            <input type="number"  min="1" step="1" name="list_product_count" value="<?php echo $this->Crud_model->get_type_name_by_id('ui_settings','23','value'); ?>"  class="form-control">
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter" type="submit"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <span id="genset"></span>
                    <div id="demo-home" class="tab-pane fade">             
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('home_page');?></h3>
                            </div>
                            <div class="panel-body">
                            <?php //echo $this->Crud_model->get_type_name_by_id('ui_settings','19','value'); ?>
								<?php
                                    echo form_open(base_url() . 'index.php/admin/ui_settings/ui_home/update/', array(
                                        'class' => 'form-horizontal',
                                        'method' => 'post',
                                        'id' => '',
                                        'enctype' => 'multipart/form-data'
                                    ));
                                ?>
                                    <?php 
                                        $contact_address = $this->db->get_where('general_settings',array('general_settings_id'=>38,'type'=>'contact_address'))->row()->value;
                                        $lat_lang        = $this->db->get_where('general_settings',array('general_settings_id'=>63,'type'=>'contact_lat_lang'))->row()->value;
                                        $map_api         = $this->db->get_where('general_settings',array('type' => 'map_api'))->row()->value;
                                    ?>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('home_map');?></label>
                                        <div class="col-sm-6">
                                            <input id="set_map" class='sw4' data-set='set_map' type="checkbox" <?php if($this->Crud_model->get_type_name_by_id('general_settings','66','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('google_map_API');?></label>
                                        <div class="col-sm-6">
                                            <input type="text" name="map_api" value="<?php echo $map_api; ?>"  class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('sidebar_position');?></label>
                                        <div class="col-sm-6">
                                            <select name="sidebar_home_pos" class="demo-cs-multiselect">
                                            <?php
                                                $sidebar_home_pos = $this->db->get_where('ui_settings',array('type'=>'side_bar_pos'))->row()->value;
                                            ?>
                                                <option value="right" <?php if($sidebar_home_pos == 'right'){ echo 'selected'; } ?> ><?php echo translate('right'); ?></option>
                                                <option value="left" <?php if($sidebar_home_pos == 'left'){ echo 'selected'; } ?> ><?php echo translate('left'); ?></option>
                                            <?php
                                            ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('parallax_title');?></label>
                                        <div class="col-sm-6">
                                            <input type="text" name="p_title" value="<?php echo $this->Crud_model->get_type_name_by_id('ui_settings','19','value'); ?>"  class="form-control">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group margin-top-10">
                                    	<label class="col-sm-3 control-label margin-top-10" for="demo-hor-inputemail"><?php echo translate('parallax_image');?></label>
                                        <div class="col-sm-9">
                                            <div class="col-sm-5" style="margin:2px;padding:2px;">
                                                <img class="img-responsive img-md img-border" style="width:100%;height:150px" src="<?php echo base_url(); ?>uploads/others/parralax.jpg" id="blah" >
                                            </div>
                                            <br />
                                            <br />
                                            <br />
                                            <div class="col-sm-2">
                                                <span class="pull-left btn btn-default btn-file margin-top-10">
                                                    <?php echo translate('select_image');?>
                                                    <input type="file" name="par" class="form-control" id="imgInp">
                                                </span>
                                            </div>
                                            <div class="col-sm-2"></div>
                                        </div>
                                	</div>
                                    
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('number_of_blogs');?></label>
                                        <div class="col-sm-6">
                                            <input type="number" min="1" step="1" name="blog_count" value="<?php echo $this->Crud_model->get_type_name_by_id('ui_settings','20','value'); ?>"  class="form-control">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ><?php echo translate('homepage_featured_product_number');?></label>
                                        <div class="col-sm-6">
                                            <input type="number"  min="1" step="1" name="home_featured_count" value="<?php echo $this->Crud_model->get_type_name_by_id('ui_settings','22','value'); ?>"  class="form-control">
                                        </div>
                                    </div>
                                    
                                    <hr>
                                    <div class="panel-footer text-right">
                                        <span class="btn btn-success btn-labeled fa fa-check submitter" type= data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                            <?php echo translate('save');?>
                                        </span>
                                    </div>
                                </form>     
                            </div>
                        </div>
                    </div>
                    
                    <div id="demo-stk-lft-tab-2" class="tab-pane fade">
                        <div class="col-md-12 col-sm-12">
                             <div class="col-md-12">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><?php echo translate('upload_logo');?></h3>
                                </div>
                                <div class="form-group" id="drpzu">
                                    <label class="col-sm-1 control-label" for="demo-hor-inputemail"></label>
                                    <div class="col-sm-10" id="dropz"><?php include 'dropzone.php'; ?></div>
                                </div>
                             </div>
                         </div>
                         <br>
                         <div class="col-md-12 col-sm-12" style="margin-top:20px;">
                             <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><?php echo translate('all_logos');?></h3>
                                </div>
                                <div class="panel-body" id="list" >

                                </div>
                            </div>
                        </div>
                        <form >
                         <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><?php echo translate('select_logo');?></h3>
                                </div>
                                <?php
                                    $admin_login_logo = $this->db->get_where('ui_settings',array('type' => 'admin_login_logo'))->row()->value;
                                    $admin_nav_logo = $this->db->get_where('ui_settings',array('type' => 'admin_nav_logo'))->row()->value;
                                    $home_top_logo = $this->db->get_where('ui_settings',array('type' => 'home_top_logo'))->row()->value;
                                    $home_bottom_logo = $this->db->get_where('ui_settings',array('type' => 'home_bottom_logo'))->row()->value;
                                ?>
                                
                                <div class="panel-body">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th><?php echo translate('place');?></th>
                                                <th><?php echo translate('logo');?></th>
                                                <th class="text-right"><?php echo translate('options');?></th>
                                            </tr>
                                        </thead>
                                            
                                        <tbody>
                                            <tr>
                                                <td><?php echo translate('admin_logo');?></td>
                                                <td>
                                                	<div class="inner-div tr-bg img-fixed">
                                                    	<img class="img-responsive img-sm" src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $admin_login_logo; ?>.png" id="admin_login_logo">
                                                    </div>
                                                </td>
                                                <td class="text-right">
                                                    <span class="btn btn-info btn-labeled fa fa-plus-circle" 
                                                        onclick="ajax_modal('show_all/selectable','<?php echo translate('select_logo'); ?>','<?php echo translate('successfully_selected!'); ?>','logo_set','admin_login_logo')">
                                                            <?php echo translate('change');?>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><?php echo translate('homepage_header_logo');?></td>
                                                <td>
                                                	<div class="inner-div tr-bg img-fixed">
                                                    	<img class="img-responsive img-sm" src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $home_top_logo; ?>.png" id="home_top_logo" >
                                                    </div>
                                                </td>
                                                <td class="text-right">
                                                    <span class="btn btn-info btn-labeled fa fa-plus-circle" 
                                                        onclick="ajax_modal('show_all/selectable','<?php echo translate('select_logo'); ?>','<?php echo translate('successfully_selected!'); ?>','logo_set','home_top_logo')">
                                                            <?php echo translate('change');?>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><?php echo translate('homepage_footer_logo');?></td>
                                                <td>
                                                	<div class="inner-div tr-bg img-fixed">
                                                    	<img class="img-responsive img-sm" src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $home_bottom_logo; ?>.png" id="home_bottom_logo" alt="User_Image" >
                                                    </div>
                                                </td>
                                                <td class="text-right">
                                                    <span class="btn btn-info btn-labeled fa fa-plus-circle" 
                                                        onclick="ajax_modal('show_all/selectable','<?php echo translate('select_logo'); ?>','<?php echo translate('successfully_selected!'); ?>','logo_set','home_bottom_logo')">
                                                            <?php echo translate('change');?>
                                                    </span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                             </div>         
                         </div>
                         </form>
                    </div>
                    
                    <!--UPLOAD : FAVICON---------->
                    <div id="demo-stk-lft-tab-3" class="tab-pane fade">
                         <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><?php echo translate('select_favicon');?></h3>
                                </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/favicon_settings/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="form-group margin-top-10">
                                    <label class="col-sm-3 control-label margin-top-10" for="demo-hor-inputemail">Favicon</label>
                                    <div class="col-sm-9">
                                        <div class="col-sm-2">
                                            <?php $ext =  $this->db->get_where('ui_settings',array('type' => 'fav_ext'))->row()->value;?>
                                            <img class="img-responsive img-md img-circle img-border" src="<?php echo base_url(); ?>uploads/others/favicon.<?php echo $ext; ?>" id="blah" >
                                        </div>
                                        <div class="col-sm-2">
                                        <span class="pull-left btn btn-default btn-file margin-top-10">
                                            <?php echo translate('select_favicon');?>
                                            <input type="file" name="fav" class="form-control" id="imgInp">
                                        </span>
                                        </div>
                                        <div class="col-sm-5"></div>
                                    </div>
                                </div>
                                <br />
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>	
                            </div>              
                        </div>
                    </div>
                    
                    <!--UPLOAD : SOCIAL LINKS---------->
                    <div id="demo-stk-lft-tab-4" class="tab-pane fade <?php if($tab_name=="social_links") {?>active in<?php } ?>">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('social_links');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/social_links/set/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <!--FACEBOOK---------->
                                    <div class="form-group mar-btm">
                                        <label class="col-sm-3 control-label"></label>
                                        <div class="col-sm-6">
                                            <div class="input-group mar-btm">
                                                <span class="input-group-addon fb_font">
                                                    <i class="fa fa-facebook-square fa-lg"></i>
                                                </span>
                                                <input type="text" name="facebook" value="<?php echo $this->Crud_model->get_type_name_by_id('social_links','1','value'); ?>" id="demo-hor-inputemail" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <!--G+---------->
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ></label>
                                        <div class="col-sm-6">
                                            <div class="input-group mar-btm">
                                                <span class="input-group-addon g_font">
                                                    <i class="fa fa-google-plus-square fa-lg"></i>
                                                </span>
                                                <input type="text" name="google-plus" value="<?php echo $this->Crud_model->get_type_name_by_id('social_links','2','value'); ?>" id="demo-hor-inputemail" class="form-control">
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!--TWITTER---------->
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ></label>
                                        <div class="col-sm-6">
                                            <div class="input-group mar-btm">
                                                <span class="input-group-addon tw_font">
                                                    <i class="fa fa-twitter-square fa-lg"></i>
                                                </span>
                                                <input type="text" name="twitter" value="<?php echo $this->Crud_model->get_type_name_by_id('social_links','3','value'); ?>" id="demo-hor-inputemail" class="form-control">
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!--PINTEREST---------->
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ></label>
                                        <div class="col-sm-6">
                                            <div class="input-group mar-btm">
                                                <span class="input-group-addon pin_font">
                                                    <i class="fa fa-pinterest fa-lg"></i>
                                                </span>
                                                <input type="text" name="pinterest" value="<?php echo $this->Crud_model->get_type_name_by_id('social_links','5','value'); ?>" id="demo-hor-inputemail" class="form-control">
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!--SKYPE---------->
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ></label>
                                        <div class="col-sm-6">
                                            <div class="input-group mar-btm">
                                                <span class="input-group-addon skype_font">
                                                    <i class="fa fa-skype fa-lg"></i>
                                                </span>
                                                <input type="text" name="skype" value="<?php echo $this->Crud_model->get_type_name_by_id('social_links','4','value'); ?>" id="demo-hor-inputemail" class="form-control">
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!--YOUTUBE---------->
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" ></label>
                                        <div class="col-sm-6">
                                            <div class="input-group mar-btm">
                                                <span class="input-group-addon youtube_font">
                                                    <i class="fa fa-youtube fa-lg"></i>
                                                </span>
                                                <input type="text" name="youtube" value="<?php echo $this->Crud_model->get_type_name_by_id('social_links','6','value'); ?>" id="demo-hor-inputemail" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--SAVE---------->
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--UPLOAD : SOCIAL LINKS END---------->
                    <div id="demo-stk-lft-tab-c" class="tab-pane fade">
                        <div class="col-md-12">
                            <div class="panel">
                            <?php 
                                $discus_id = $this->db->get_where('general_settings',array('type'=>'discus_id'))->row()->value;
                                $fb_id = $this->db->get_where('general_settings',array('type'=>'fb_comment_api'))->row()->value;
                                $comment_type = $this->db->get_where('general_settings',array('type'=>'comment_type'))->row()->value;
                            ?>
								<?php
                                    echo form_open(base_url() . 'index.php/admin/product_comment/', array(
                                        'class' => 'form-horizontal',
                                        'method' => 'post',
                                        'id' => '',
                                        'enctype' => 'multipart/form-data'
                                    ));
                                ?>
                                    <div class="panel-heading margin-bottom-15">
                                        <h3 class="panel-title"><?php echo translate('product_comment_settings');?></h3>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('type');?>
                                                </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <select class="demo-chosen-select" name="type">
                                                    <option value=""><?php echo translate('none'); ?></option>
                                                    <option value="facebook" <?php if($comment_type == 'facebook'){ ?>selected<?php } ?>><?php echo translate('facebook_comment'); ?></option>
                                                    <option value="disqus" <?php if($comment_type == 'disqus'){ ?>selected<?php } ?>><?php echo translate('disqus_comment'); ?></option>
                                                    <option value="google" <?php if($comment_type == 'google'){ ?>selected<?php } ?>><?php echo translate('google_comment'); ?></option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('discus_ID');?>
                                                </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="discus_id" value="<?php echo $discus_id; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('fb_comment_id');?>
                                                </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="fb_comment_api" value="<?php echo $fb_id; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="panel-footer text-right">
                                        <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                            <?php echo translate('save');?>
                                        </span>
                                    </div>
                                </form> 
                            </div>                
                        </div>
                    </div>
                    <!--UPLOAD : SOCIAL LINKS END---------->
                    <div id="demo-stk-lft-tab-7" class="tab-pane fade">
                        <div class="col-md-12">
                            <div class="panel">
                <?php 
                    $appid =  $this->db->get_where('general_settings',array('type' => 'fb_appid'))->row()->value;
                    $secret =  $this->db->get_where('general_settings',array('type' => 'fb_secret'))->row()->value;                    
                    $application_name =  $this->db->get_where('general_settings',array('type' => 'application_name'))->row()->value;
                    $client_id =  $this->db->get_where('general_settings',array('type' => 'client_id'))->row()->value;
                    $client_secret =  $this->db->get_where('general_settings',array('type' => 'client_secret'))->row()->value;
                    $redirect_uri =  $this->db->get_where('general_settings',array('type' => 'redirect_uri'))->row()->value;
                    $api_key =  $this->db->get_where('general_settings',array('type' => 'api_key'))->row()->value;
					$fb_login_set = $this->Crud_model->get_type_name_by_id('general_settings','51','value');
					$g_login_set = $this->Crud_model->get_type_name_by_id('general_settings','52','value');
                ?>
							<?php
                                echo form_open(base_url() . 'index.php/admin/social_login_settings/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                            <style>
                        	<?php if($fb_login_set !== 'ok'){ ?>
								.fb_log_ins{
									display: none;
								}
                        	<?php } if($g_login_set !== 'ok'){ ?>
								.g_log_ins{
									display: none;
								}
                        	<?php } ?>
							</style>
                                    <div class="panel-heading margin-bottom-15">
                                        <h3 class="panel-title"><?php echo translate('facebook_login_settings');?></h3> 
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail"><?php echo translate('status');?></label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input id="fb_login_set" class='sw5' data-set='fb_login_set' type="checkbox" <?php if($fb_login_set == 'ok'){ ?>checked<?php } ?> />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group fb_log_ins">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">App ID</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="appid" value="<?php echo $appid; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group fb_log_ins">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">Secret</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="secret" value="<?php echo $secret; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="panel-heading margin-bottom-15">
                                        <h3 class="panel-title"><?php echo translate('google+_login_settings');?></h3>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail"><?php echo translate('status');?></label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input id="g_login_set" class='sw5' data-set='g_login_set' type="checkbox" <?php if($g_login_set == 'ok'){ ?>checked<?php } ?> />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group g_log_ins" >
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
											Application Name
                                            	</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="application_name" value="<?php echo $application_name; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="form-group g_log_ins">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                        	Client Id
                                            	</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="client_id" value="<?php echo $client_id; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group g_log_ins">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                        	Client Secret
                                            	</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="client_secret" value="<?php echo $client_secret; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group g_log_ins">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
											Redirect URI
                                            	</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="redirect_uri" value="<?php echo $redirect_uri; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group g_log_ins">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
											API key
                                            	</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="api_key" value="<?php echo $api_key; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="panel-footer text-right">
                                        <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                            <?php echo translate('save');?>
                                        </span>
                                    </div>
                                </form> 
                            </div>                
                        </div>
                    </div>
                    
                    <div id="demo-stk-lft-tab-8" class="tab-pane fade">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading margin-bottom-15">
                                    <h3 class="panel-title"><?php echo translate('save');?><?php echo translate('captcha_settings'); ?></h3>
                                </div>
                                <?php $cpub =  $this->db->get_where('general_settings',array('type' => 'captcha_public'))->row()->value;?>
                                <?php $cprv =  $this->db->get_where('general_settings',array('type' => 'captcha_private'))->row()->value;?>
								<?php
                                    echo form_open(base_url() . 'index.php/admin/captcha_settings/', array(
                                        'class' => 'form-horizontal',
                                        'method' => 'post',
                                        'id' => '',
                                        'enctype' => 'multipart/form-data'
                                    ));
                                ?>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
											<?php echo translate('public_key');?>
                                            	</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="cpub" value="<?php echo $cpub; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
											<?php echo translate('private_key');?>
                                            	</label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="cprv" value="<?php echo $cprv; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="panel-footer text-right">
                                        <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                            <?php echo translate('save');?>
                                        </span>
                                    </div>
                                </form> 
                            </div>                
                        </div>
                    </div>
                    
                    <div id="demo-stk-lft-tab-p" class="tab-pane fade">
                    	<div class="panel">
                            <?php
								$privacy_policy		=  $this->db->get_where('general_settings',array('type' => 'privacy_policy'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('privacy_policy');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/privacy_policy/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <textarea class="summernotes" data-height='700' data-name='privacy_policy' ><?php echo $privacy_policy; ?></textarea>
                                    <!--===================================================-->
                                    <!-- End Summernote -->
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>                        
                        </div>
                    </div>
                    <div id="preloader" class="tab-pane fade">
                        <div class="panel">
                            <?php 
								$preloader_bg	=  $this->db->get_where('general_settings',array('type' => 'preloader_bg'))->row()->value;
								$preloader_obj	=  $this->db->get_where('general_settings',array('type' => 'preloader_obj'))->row()->value;
								$preloader		=  $this->db->get_where('general_settings',array('type' => 'preloader'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('privacy_policy');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/preloader/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                            	<div class="col-sm-12 ">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('preloader_color'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-12">
                                                <div class="input-group demo2">
                                                   <input type="text" value="<?php echo $preloader_obj; ?>" name="preloader_obj" class="form-control" />
                                                   <span class="input-group-addon"><i></i></span>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('preloader_background'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-12">
                                                <div class="input-group demo2">
                                                   <input type="text" value="<?php echo $preloader_bg; ?>" name="preloader_bg" class="form-control" />
                                                   <span class="input-group-addon"><i></i></span>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                            	<div class="col-sm-12 ">
                                    <div class="form-group">
                                        <?php
                                            for($i=1;$i<=30;$i++){
                                        ?>
                                        <div class="col-sm-4">
                                            <div class="delete-div-wrap cc-selector">
                                                <input id="pre_<?php echo $i; ?>" type="radio" value="<?php echo $i; ?>" name="preloader" <?php if($i == $preloader){ echo 'checked'; } ?> >
                                                <label class="inner-div tr-bg drinkcard-cc aad col-md-12" style="margin-bottom:0px;background-image:none; height:175px; z-index:99999;" for="pre_<?php echo $i; ?>">
                                                </label>
                                                <div class="col-md-12" style="height:0px;z-index:1;top:-164px;position:relative;">
                                                    <iframe style="width:100%" src="<?php echo base_url(); ?>index.php/admin/preloader_view/<?php echo $i; ?>"  data-id="<?php echo $i; ?>" ></iframe>
                                                </div>
                                            </div>
                                        </div> 
                                        <?php
                                            }
                                        ?>
                                    </div>
                                </div>
                            	<div class="col-sm-12 ">
                                    <div class="panel-footer text-right">
                                        <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                            <?php echo translate('save');?>
                                        </span>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div id="demo-stk-lft-tab-6" class="tab-pane fade">
                        <div class="panel">
                            <?php 
                                $terms_conditions =  $this->db->get_where('general_settings',array('type' => 'terms_conditions'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('terms_&_condition');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/terms/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <textarea class="summernotes" data-height='700' data-name='terms' ><?php echo $terms_conditions; ?></textarea>
                                    <!--===================================================-->
                                    <!-- End Summernote -->
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <div id="demo-contact" class="tab-pane fade">
                        <div class="panel">
                            <?php 
                                $contact_address =  $this->db->get_where('general_settings',array('type' => 'contact_address'))->row()->value;
                                $contact_phone =  $this->db->get_where('general_settings',array('type' => 'contact_phone'))->row()->value;
                                $contact_email =  $this->db->get_where('general_settings',array('type' => 'contact_email'))->row()->value;
                                $contact_website =  $this->db->get_where('general_settings',array('type' => 'contact_website'))->row()->value;
                                $contact_about =  $this->db->get_where('general_settings',array('type' => 'contact_about'))->row()->value;
								$lat_lang =  $this->db->get_where('general_settings',array('type' => 'contact_lat_lang'))->row()->value;
                            ?>
                            <script>
								 $("a[href='#demo-contact']").on('shown.bs.tab', function(e) {
									  set_cart_map();
								 });
                            </script>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('contact_page');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/contact', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('contact_address'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-8">
                                                <input type="text" name="contact_address" value="<?php echo $contact_address; ?>" class="form-control address"  onblur="set_cart_map('iio');">
                                            </div>
                                        </div>
                                    </div>
                                
                                    <section class="col-md-8" id="lnlat" style="display:none;">
                                        <label class="input">
                                            <i class="icon-append fa fa-home"></i>   
                                            <input id="langlat" type="text" placeholder="langitude - latitude" name="lat_lang" value="<?php echo $lat_lang; ?>" class="form-control required" readonly>
                                        </label>
                                    </section>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-4"></label>
                                        <div class="col-sm-8">
                                            <div class="" id="maps" style="height:400px;" >
                                                <div id="map-canvas" style="height:400px;"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('contact_phone'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="contact_phone" value="<?php echo $contact_phone; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('contact_email'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="contact_email" value="<?php echo $contact_email; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('contact_website'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <input type="text" name="contact_website" value="<?php echo $contact_website; ?>" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('contact_about'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <textarea class="summernotes" data-height='400' data-name='contact_about'><?php echo $contact_about; ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <div id="demo-footer" class="tab-pane fade">
                        <div class="panel">
                            <?php 
                                $footer_text =  $this->db->get_where('general_settings',array('type' => 'footer_text'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('terms_&_condition');?></h3>
                            </div>
                            <?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/footer', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('footer_text'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                            <div class="col-sm-">
                                                <textarea class="summernotes" data-height='400' data-name='footer_text'><?php echo $footer_text; ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    
                    <div id="demo-stk-lft-font" class="tab-pane fade">
                        <div class="panel">
                            <?php 
                                $font =  $this->db->get_where('ui_settings',array('type' => 'font'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('font');?></h3>
                            </div>
                            <?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/font', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('choose_font'); ?>
                                        </label>
                                        <div class="col-sm-8">
                                        	<?php
                                            	$fonts = array(
															'Slabo+27px'=>'Slabo 27px',
															'Roboto'=>'Roboto',
															'Oswald'=>'Oswald',
															'Ubuntu'=>'Ubuntu',
															'Fjalla+One'=>'Fjalla One',
															'Lato'=>'Lato',
															'Lobster'=>'Lobster',
															'Salsa'=>'Salsa',
															'Fjord+One'=>'Fjord One',
															'New+Rocker'=>'New Rocker'
														);
												foreach($fonts as $n => $font){
											?>
                                                <div class="cc-selector col-sm-4">
                                                    <input id="font_<?php echo str_replace('+','_',$n); ?>" type="radio" value="<?php echo $n; ?>" name="font" <?php if($font == $n){ echo 'checked'; } ?> >
                                                    <label class="drinkcard-cc" for="font_<?php echo str_replace('+','_',$n); ?>" 
                                                        style="margin-bottom:0px; width:100%; overflow:hidden; height:100px;">
                                                    		<?php /*?><h3><?php echo $font; ?></h3>  <?php */?>
                                                           
                                                            <img src="<?php echo base_url() ?>uploads/fonts/<?php echo str_replace('+','_',$n); ?>.jpg" width="100%" height="100%" alt="<?php echo $font; ?>" />
                                                           
                                                    </label>
                                                </div>
                                            <?php
                                            	}
											?>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <div id="color_schemes" class="tab-pane fade">
                        <div class="panel">
                            <?php 
                                $header_color =  $this->db->get_where('ui_settings',array('type' => 'header_color'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('choose_theme');?></h3>
                            </div>
                            <?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/color', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                        	<?php
                                            	$colors = array(
															'blue'=>'blue',
															'bw'=>'grey',
															'green'=>'green',
															'orange'=>'orange',
															'red'=>'red',
															'violet'=>'violet',
															'pink'=>'pink',
															'mint'=>'#9EEFCB',
															'cream'=>'#E7DDC4',
															'brown'=>'#DBDDDE',
															'purple'=>'#DBDDDE',
															'yellow'=>'#DBDDDE'
														);
														
												foreach($colors as $n => $color){
											?>
                                            <div class="col-sm-4">
                                                <div class="delete-div-wrap cc-selector col-sm-12" style="border:0px;">
                                                    <input id="theme_color_<?php echo $n; ?>" type="radio" value="<?php echo $n; ?>" name="header_color" <?php if($header_color == $n){ echo 'checked'; } ?> >
                                                    <label class="tr-bg drinkcard-cc" for="theme_color_<?php echo $n; ?>" 
                                                        style="margin-bottom:0px;  height:auto; width:100%;
                                                            background:<?php echo $color; ?>">
                                                            
                                                            <img src="<?php echo base_url() ?>uploads/themes/<?php echo $n; ?>.jpg" width="100%" />
                                                            
                                                    </label>
                                                </div>
                                            </div>
                                            <?php
                                            	}
											?>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>
<div style="display:none;" id="site"></div>
<!-- for logo settings -->
<script>
    function load_logos(){
        ajax_load('<?php echo base_url(); ?>index.php/admin/logo_settings/show_all','list','');
    }
    function load_dropzone(){
        //$('#dropz').remove();
        //$('#drpzu').append('<div class="col-sm-10" id="dropz"></div>');
        //$('#dropz').load('<?php echo base_url(); ?>index.php/admin/load_dropzone');
        // DROPZONE.JS
        // =================================================================
        // Require Dropzone
        // http://www.dropzonejs.com/
        // =================================================================
        Dropzone.options.demoDropzone = { // The camelized version of the ID of the form element
            // The configuration we've talked about above
            autoProcessQueue: true,
            uploadMultiple: true,
            parallelUploads: 25,
            maxFiles: 25,
    
            // The setting up of the dropzone
            init: function() {
                var myDropzone = this;
                this.on("queuecomplete", function (file) {
                    load_logos();
                });
            }
        }
        load_logos();
    }

	$(document).ready(function() {
		
        $('.summernotes').each(function() {
            var now = $(this);
            var h = now.data('height');
            var n = now.data('name');
            now.closest('div').append('<input type="hidden" class="val" name="'+n+'">');
            now.summernote({
                height: h,
                onChange: function() {
                    now.closest('div').find('.val').val(now.code());
                }
            });
			now.closest('div').find('.val').val(now.code());
			now.focus();
        });
        load_dropzone();
        load_logos();
		
	});

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#wrap').hide('fast');
                $('#blah').attr('src', e.target.result);
                $('#wrap').show('fast');
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#imgInp").change(function(){
        readURL(this);
    });


    var base_url = '<?php echo base_url(); ?>'
    var user_type = 'admin';
    var module = 'logo_settings';
    var list_cont_func = 'show_all';
    var dlt_cont_func = 'delete_logo';
</script>
<!-- for logo settings -->



<script type="text/javascript">

    $(document).ready(function() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
    });


    function sets(now){
        $(".range-def").each(function(){
            var min = $(this).data('min');
            var max = $(this).data('max');
            var start = $(this).data('start');
            $(this).noUiSlider({
                start: Number(start) ,
                range: {
                    'min': Number(min),
                    'max': Number(max)
                }
            }, true);
            if(now == 'first'){
                $(this).noUiSlider({
                    start: 500 ,
                    connect : 'lower',
                    range: {
                        'min': 0 ,
                        'max': 10
                    }
                },true).Link('lower').to($("#nowslide"));
                $(this).closest(".form-group").find(".range-def-val").html(start);
                $(this).closest(".form-group").find("input").val(start);
            } else if(now == 'later'){
                var than = $(this).closest(".form-group").find(".range-def-val").html();
                
                if(than !== 'undefined'){
                    $(this).noUiSlider({
                        start: than,
                        connect : 'lower',
                        range: {
                            'min': min ,
                            'max': max
                        }
                    },true).Link('lower').to($("#nowslide"));
                } 
                $(this).closest(".form-group").find(".range-def-val").html(than);
                $(this).closest(".form-group").find("input").val(than);
            }
        });
    }
	$(document).ready(function() {
        sets('later');
		$("form").submit(function(e){
			return false;
		});

	});
</script>
<script src="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js">
</script>

<script>
    
    $(document).ready(function(){
        set_cart_map();
		createColorpickers();
    });

	function createColorpickers() {
	
		$('.demo2').colorpicker({
			format: 'rgba'
		});
		
	}
	
    function set_cart_map(tty){
        //$('#maps').animate({ height: '400px' }, 'easeInOutCubic', function(){});
        initialize();
        var address = [];
        //$('#pos').show('fast');
        //$('#lnlat').show('fast');
        $('.address').each(function(index, value){
            if(this.value !== ''){
                address.push(this.value);
            }
        });
        address = address.toString();
        deleteMarkers();
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if($('#langlat').val().indexOf(',')  == -1 || $('#first').val() == 'no' || tty == 'iio'){
                    deleteMarkers();
                    var location = results[0].geometry.location; 
                    var marker = addMarker(location);
                    map.setCenter(location);
                    $('#langlat').val(location);
                } else if($('#langlat').val().indexOf(',')  >= 0){
                    deleteMarkers();
                    var loca = $('#langlat').val();
                    loca = loca.split(',');
                    var lat = loca[0].replace('(','');
                    var lon = loca[1].replace(')','');
                    var marker = addMarker(new google.maps.LatLng(lat, lon));
                    map.setCenter(new google.maps.LatLng(lat, lon));
                }
                if($('#first').val() == 'yes'){
                    $('#first').val('no');
                }
                // Add dragging event listeners.
                google.maps.event.addListener(marker, 'drag', function() {
                    $('#langlat').val(marker.getPosition());
                });
            }
        }); 
    }

        var geocoder;
        var map;
        var markers = [];
        function initialize() {
            geocoder = new google.maps.Geocoder();
            var latlng = new google.maps.LatLng(-34.397, 150.644);
            var mapOptions = {
                zoom: 14,
                center: latlng
            }
            map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            google.maps.event.addListener(map, 'click', function(event) {
                deleteMarkers();
                var marker = addMarker(event.latLng);
                $('#langlat').val(event.latLng);    
                // Add dragging event listeners.
                google.maps.event.addListener(marker, 'drag', function() {
                    $('#langlat').val(marker.getPosition());
                });
                
            });     
        }
        

    /*
        var address = [];
        $('#maps').show('fast');
        $('#pos').show('fast');
        $('#lnlat').show('fast');
        $(".address").each(
        address.push(this.value);
        );
    */

        $('.address').on('blur', function(){
			$('#langlat').val('');
            set_cart_map();
        });

        // Add a marker to the map and push to the array.
        function addMarker(location) {
            var image = {
                url: base_url+'uploads/others/marker.png',
                size: new google.maps.Size(40, 60),
                origin: new google.maps.Point(0,0),
                anchor: new google.maps.Point(20, 62)
            };

            var shape = {
                coords: [1, 5, 15, 62, 62, 62, 15 , 5, 1],
                type: 'poly'
            };

            var marker = new google.maps.Marker({
                position: location,
                map: map,
                draggable:true,
                icon: image,
                shape: shape,
                animation: google.maps.Animation.DROP
            });
            markers.push(marker);
            return marker;
        }

        // Deletes all markers in the array by removing references to them.
        function deleteMarkers() {
            clearMarkers();
            markers = [];
        }

        // Sets the map on all markers in the array.
        function setAllMap(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }

        // Removes the markers from the map, but keeps them in the array.
        function clearMarkers() {
            setAllMap(null);
        }
        //google.maps.event.addDomListener(window, 'load', initialize);
		
		
		$('.delete-div-wrap .aad').on('click', function() {
			var id = $(this).closest('.delete-div-wrap').find('iframe').data('id');
		});
	
		
</script>

<style>
.img-fixed{
	width: 100px;	
}
.tr-bg{
background-image: url(http://www.mikechambers.com/files/html5/canvas/exportWithBackgroundColor/images/transparent_graphic.png)	
}

.cc-selector input{
    margin:0;padding:0;
    -webkit-appearance:none;
       -moz-appearance:none;
            appearance:none;
}
 
.cc-selector input:active +.drinkcard-cc
{
	opacity: 1;
	border:4px solid #169D4B;
}
.cc-selector input:checked +.drinkcard-cc{
	-webkit-filter: none;
	-moz-filter: none;
	filter: none;
	border:4px solid black;
}
.drinkcard-cc{
	cursor:pointer;
	background-size:contain;
	background-repeat:no-repeat;
	display:inline-block;
	-webkit-transition: all 100ms ease-in;
	-moz-transition: all 100ms ease-in;
	transition: all 100ms ease-in;
	-webkit-filter:opacity(.5);
	-moz-filter:opacity(.5);
	filter:opacity(.5);
	transition: all .6s ease-in-out;
	border:4px solid transparent;
	border-radius:5px !important;
}
.drinkcard-cc:hover{
	-webkit-filter:opacity(1);
	-moz-filter: opacity(1);
	filter:opacity(1);
	transition: all .6s ease-in-out;
	border:4px solid #8400C5;
			
}

</style>

