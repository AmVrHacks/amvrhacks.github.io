
<body class="boxed">
	<div class="body-wrap">
        <!-- HEADER -->
    	<div id="divHeaderWrapper">
            <header class="header-standard-2"> 
            	<div class="top-header"> 
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <span class="aux-text col-md-2 hidden-xs">  
						<?php
                            if($set_lang = $this->session->userdata('language')){} else {
                                $set_lang = $this->db->get_where('general_settings',array('type'=>'language'))->row()->value;
                            }
                        ?>                                  
                    	<select class="demo-chosen-select btn btn-base btn-block" onChange="set_lang(this.value);">
						<?php
                            $fields = $this->db->list_fields('language');
                            foreach ($fields as $field)
                            {
                                if($field !== 'word' && $field !== 'word_id'){
                        ?>
                            <option value="<?php echo $field; ?>"
								<?php if($set_lang == $field){ ?>selected<?php } ?> >
                                    <?php echo $field; ?></option>
                        <?php
                                }
                            }
                        ?>
                        </select>
                        <script>
							function set_lang(lang){
								$.ajax({
									url: '<?php echo base_url(); ?>index.php/home/set_language/'+lang, 
									success: function(result){
										location.reload();
									}
								});
							}
						</script>
                    </span>
                    <nav class="top-header-menu">
                        <ul class="top-menu">
                        	
                            <?php 
                                if($this->session->userdata('user_login')=="yes")
                                {
                            ?>
                            <li>
                            	<a class="btn btn-base btn-xs btn-primary" href="<?php echo base_url(); ?>index.php/home/profile/">
									<?php echo translate('profile');?>
									<?php
                                        $num = $this->Crud_model->ticket_unread_messages('all','user');
                                        if($num > 0){
                                    ?>
                                    <span style="background:rgba(255, 255, 255, 0.26); border:1px solid #000; border-radius:100%; padding: 4px 7px; color: white; margin-left: 5px; ">
                                        <?php echo $num; ?>
                                    </span>
                                    <?php }?> 
                                </a>  
                            </li>
                            <?php		
                                }
                                if($this->session->userdata('user_login')=="yes")
                                {
                            ?>
                            <li><a class="btn btn-base btn-xs btn-primary" href="<?php echo base_url(); ?>index.php/home/logout/"><?php echo translate('logout');?></a></li>
                            <?php 
                                }
                                else
                                {
                            ?>
                            <li>
                            	<a class="btn btn-base btn-xs btn-primary openactiveModal-3 sign_in_btn" data-ajax="<?php echo base_url(); ?>index.php/home/login_set/login"><?php echo translate('login');?></a>
                            </li>
                            <?php 
                                }
                            ?>
                            <?php 
                                if($this->session->userdata('user_login')!="yes")
                                {
                            ?>
                            <li>
                            	<a class="btn btn-base btn-xs btn-primary openactiveModal-2" data-ajax="<?php echo base_url(); ?>index.php/home/login_set/registration"><?php echo translate('sign_up')?></a>
                            </li>
                            <?php }?>
                            <li><a class="btn btn-base btn-xs btn-primary"  href="<?php echo base_url(); ?>index.php/home/post_add"><?php echo translate('post_an_ad'); ?></a></li>
                            <li>
                            	<a class="btn btn-base btn-xs btn-primary " href="<?php echo base_url()?>index.php/home/compare/" >
                                	<span>
										<?php echo translate('compare'); ?>
                                        	(<span id="compare_num">
												<?php echo $this->Crud_model->compared_num(); ?>
                                             </span>)
                                    </span>
                               </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>    
    <!-- MAIN NAV -->
    <div class="navbar navbar mega-nav mb-0 nav1_color" role="navigation">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="navbar-header">
        
                        <a class="navbar-brand" href="<?php echo base_url(); ?>" style="padding: 2px 15px !important;" title="<?php echo $system_name; ?>">
                            <img src="<?php echo $this->Crud_model->logo('home_top_logo'); ?>" alt="<?php echo $system_name; ?>" style="width:210px;">
                        </a>
                        
                    </div>
                </div>
                
                <div class="col-md-9 pull-right">
                    <div class="row">
                        <div class="wp-section relative">
                            <?php
                                echo form_open(base_url() . 'index.php/home/advance_search/', array(
                                    'class' => 'form-horizontal form-light p-15',
                                    'method' => 'post',
                                    'role' => 'form'
                                ));
                            ?>
                            	
                                <div class="input-group">
                                    <input type="text" class="form-control" name="text" id="search" placeholder="<?php echo translate('i_want_to_find ...'); ?>" style="border-right:0px !important;" onKeyUp="search_loc();">
                                    <span class="input-group-btn" style="z-index:99;border-radius: 0px !important;">                                    	
                                        <?php echo $this->Crud_model->select_html('category','category','name','add','demo-chosen-select btn btn-base catsd','','','','search_loc'); ?>
                                    </span>
                                    <span class="input-group-btn" style="z-index:99;">                                    
                                        <select name="use_type" class="demo-chosen-select btn btn-base condi" onChange="search_loc();">
                                            <option value=""><?php echo translate('condition'); ?></option>
                                            <option value="used"><?php echo translate('used'); ?></option>
                                            <option value="new"><?php echo translate('new'); ?></option>
                                        </select>
                                    </span>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-base" type="button"><?php echo translate('go'); ?></button>
                                    </span>
                                </div>
                                
                            </form>
                        </div>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <i class="fa fa-bars icon-custom"></i>
                            </button>
                        </div>
                    
                    
                </div>
            
         </div>
         </div>
    </div>
    <?php include 'menu.php'; ?>
</header>
</div>
<style>
.navbar-nav>li>a{
    padding-top: 7px;
    padding-bottom: 7px;
	font-weight: normal;	
}
</style>   