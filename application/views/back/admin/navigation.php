<nav id="mainnav-container">
    <div id="mainnav">
        <!--Menu-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content"  id="nanocontent" style="overflow-x: auto;">
                    <ul id="mainnav-menu" class="list-group">
                        <!--Category name-->
                        <li class="list-header"></li>
                        <!--Menu list item-->
                        <li <?php if($page_name=="dashboard"){?> class="active-link" <?php } ?> 
                        	style="border-top:1px solid #EDF0F5;">
                            <a href="<?php echo base_url(); ?>index.php/admin/">
                                <i class="fa fa-tachometer"></i>
                                <span class="menu-title">
									<?php echo translate('dashboard');?>
                                </span>
                            </a>
                        </li>
            			<?php
                        	if($this->Crud_model->admin_permission('category') ||
								$this->Crud_model->admin_permission('sub_category') || 
									$this->Crud_model->admin_permission('product') ){
						?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="category" || 
                                        $page_name=="sub_category" || 
                                            $page_name=="product" ){?>
                                                     class="active-sub" 
                                                        <?php } ?> >
                            <a href="#">
                                <i class="fa fa-folder"></i>
                                    <span class="menu-title">
                                        <?php echo translate('advertisement');?>
                                    </span>
                                	<i class="fa arrow"></i>
                            </a>
            
                            <!--PRODUCT------------------>
                            <ul class="collapse <?php if($page_name=="category" || 
                                                            $page_name=="sub_category" ||  
                                                                $page_name=="product" ){?>
                                                                             in
                                                                                <?php } ?> >" >
                                
								<?php
                                    if($this->Crud_model->admin_permission('category')){
                                ?>                                            
                                    <li <?php if($page_name=="category"){?> class="active-link" <?php } ?> >
                                        <a href="<?php echo base_url(); ?>index.php/admin/category">
                                        	<i class="fa fa-circle fs_i"></i>
                                        		<?php echo translate('advertise_category');?>
                                        </a>
                                    </li>
								<?php
									} if($this->Crud_model->admin_permission('sub_category')){
                                ?>
                                    <li <?php if($page_name=="sub_category"){?> class="active-link" <?php } ?> >
                                        <a href="<?php echo base_url(); ?>index.php/admin/sub_category">
                                            <i class="fa fa-circle fs_i"></i>
                                            	<?php echo translate('advertise_sub-category');?>
                                        </a>
                                    </li>
                                    
								<?php
									} if($this->Crud_model->admin_permission('product')){
                                ?>
                                    <li <?php if($page_name=="product"){?> class="active-link" <?php } ?> >
                                        <a href="<?php echo base_url(); ?>index.php/admin/product">
                                        	<i class="fa fa-circle fs_i"></i>
                                            	<?php echo translate('all_advertise');?>
                                        </a>
                                    </li>
								<?php
									}
                                ?>
                            </ul>
                        </li>
                      
            			<?php
							}
						?>  
                        
                        <?php
                            if($this->Crud_model->admin_permission('blog') || $this->Crud_model->admin_permission('blog_category') ){
                        ?>
                        <li <?php if($page_name=="blog" || $page_name=="blog_category" ){?>
                                     class="active-sub" 
                                        <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/blog_category/">
                                <i class="fa fa-newspaper-o"></i>
                                <span class="menu-title">
                                    <?php echo translate('blog');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="blog" || $page_name=="blog_category"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
                                <?php
                                    if($this->Crud_model->admin_permission('blog')){
                                ?>
                                <li <?php if($page_name=="blog"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/blog/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('all_blogs');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->Crud_model->admin_permission('blog_category')){
                                ?>
                                <!--Menu list item-->
                                <li <?php if($page_name=="blog_category"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/blog_category/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('all_blog_categories');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
                        <?php
                            }
                        ?>
                        
                        <!--SALE-------------------->
                        <?php
                            if($this->Crud_model->admin_permission('email_tracing')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="sales"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>index.php/admin/email_tracing/">
                                <i class="fa fa-envelope-o"></i>
                                    <span class="menu-title">
                                        <?php echo translate('email_tracing');?>
                                    </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
                        
                        
                        <!--SALE-->
                        <?php
                            if($this->Crud_model->admin_permission('payments')){
                        ?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="sales"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>index.php/admin/payments/">
                                <i class="fa fa-credit-card"></i>
                                    <span class="menu-title">
                                        <?php echo translate('payments');?>
                                    </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>

                        <?php
							if($this->Crud_model->admin_permission('ticket')){
						?>
                        <li <?php if($page_name=="sales"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>index.php/admin/ticket/">
                                <i class="fa fa-life-ring"></i>
                                    <span class="menu-title">
                                		<?php echo translate('Ticket');?>
                                    </span>
                            </a>
                        </li>
                        <?php
							}
						?>
                        
                        <?php
							if($this->Crud_model->admin_permission('user')){
						?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="sales"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>index.php/admin/user/">
                                <i class="fa fa-male"></i>
                                    <span class="menu-title">
                                		<?php echo translate('users');?>
                                    </span>
                            </a>
                        </li>
                        <?php
							}
						?>
						
                        <li <?php if($page_name=="report" || 
										$page_name=="report_wish" || $page_name=="report_most_viewed" ){?>
												 class="active-sub" 
													<?php } ?>>
                            <a href="#">
                                <i class="fa fa-file-text"></i>
                                    <span class="menu-title">
                                		<?php echo translate('reports');?>
                                    </span>
                                		<i class="fa arrow"></i>
                            </a>
                            
                            <!--REPORT-------------------->
                            <ul class="collapse <?php if($page_name=="report" || 
															$page_name=="report_wish" || 
															    $page_name=="report_most_viewed" ){?>
																	in
																		<?php } ?> ">
                                <li <?php if($page_name=="report"){?> class="active-link" <?php } ?> >
                                	<a href="<?php echo base_url(); ?>index.php/admin/report/">
                                    	<i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('category_wise_ads');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="report_wish"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/report_wish/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('favoured_ads');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="report_most_viewed"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/report_most_viewed/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('most_viewed_ads');?>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        
                        <?php
							if($this->Crud_model->admin_permission('product_type') || $this->Crud_model->admin_permission('user_type')){
						?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="product_package" || 
										$page_name=="user_package" ){?>
												 class="active-sub" 
													<?php } ?>>
                            <a href="#">
                                <i class="fa fa-puzzle-piece"></i>
                                <span class="menu-title">
                                    <?php echo translate('packages');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
                            
                            <!--REPORT-------------------->
                            <ul class="collapse <?php if($page_name=="product_type" || 
															$page_name=="user_type" ){?>
																		 in
																			<?php } ?> ">
                                <?php
                                    if($this->Crud_model->admin_permission('product_type')){
                                ?>
                                <li <?php if($page_name=="product_type"){?> class="active-link" <?php } ?> >
                                	<a href="<?php echo base_url(); ?>index.php/admin/product_type/">
                                    	<i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('product_package');?>
                                    </a>
                                </li>

                                <?php
                                    }
                                    if($this->Crud_model->admin_permission('user_type')){
                                ?>
                                <li <?php if($page_name=="user_type"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/user_type/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('user_package');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
                        <?php
							}
						?>
                        
                        
                        
							<?php
                                if($this->Crud_model->admin_permission('page')){
                            ?> 
                            <!--Menu list item-->
                            <li <?php if($page_name=="page" || 
                                            $page_name=="menu" ){?>
                                                     class="active-sub" 
                                                        <?php } ?>>
                                <a href="#">
                                    <i class="fa fa-code"></i>
                                        <span class="menu-title">
                                            <?php echo translate('pages_&_menu');?>
                                        </span>
                                        <i class="fa arrow"></i>
                                </a>
                                
                                <!--REPORT-------------------->
                                <ul class="collapse <?php if($page_name=="page" || 
                                                                $page_name=="menu" ){?>
                                                                             in
                                                                                <?php } ?> ">
                                    <li <?php if($page_name=="page"){?> class="active-link" <?php } ?> >
                                        <a href="<?php echo base_url(); ?>index.php/admin/page/">
                                            <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('page');?>
                                        </a>
                                    </li>
                                    <li <?php if($page_name=="menu"){?> class="active-link" <?php } ?> >
                                        <a href="<?php echo base_url(); ?>index.php/admin/menu/">
                                            <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('menus');?>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        <?php
                            }
                        ?>
                        
                        <?php
							if($this->Crud_model->admin_permission('widget')){
						?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="widget"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>index.php/admin/widget/">
                                <i class="fa fa-cubes"></i>
                                    <span class="menu-title">
                                		<?php echo translate('widgets');?>
                                    </span>
                            </a>
                        </li>
                        <?php
							}
						?>
                        
                        <?php
							if($this->Crud_model->admin_permission('site_settings')){
						?>
                        <!--Menu list item-->
                        <li <?php if($page_name=="site_settings"){?> class="active-link" <?php } ?>>
                            <a href="<?php echo base_url(); ?>index.php/admin/site_settings/">
                                <i class="fa fa-desktop"></i>
                                    <span class="menu-title">
                                		<?php echo translate('site_settings');?>
                                    </span>
                            </a>
                        </li>
                        <?php
							}
						?>
                        
                        
            			<?php
                        	if($this->Crud_model->admin_permission('role') ||
								$this->Crud_model->admin_permission('admin') ){
						?>
                        <li <?php if($page_name=="role" || 
                                        $page_name=="admin" ){?>
                                             class="active-sub" 
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span class="menu-title">
                                	<?php echo translate('staffs');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="admin" || 
															$page_name=="role"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
								<?php
                                    if($this->Crud_model->admin_permission('admin')){
                                ?>
                                <li <?php if($page_name=="admin"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/admins/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('all_staffs');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->Crud_model->admin_permission('role')){
                                ?>
                                <!--Menu list item-->
                                <li <?php if($page_name=="role"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/role/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('staff_permissions');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>
                        
            			<?php
                        	if($this->Crud_model->admin_permission('newsletter') ||
								$this->Crud_model->admin_permission('contact_message') ){
						?>
                        <li <?php if($page_name=="newsletter" || 
                                        $page_name=="contact_message" ){?>
                                             class="active-sub" 
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-envelope"></i>
                                <span class="menu-title">
                                	<?php echo translate('messaging');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
            
                            <ul class="collapse <?php if($page_name=="newsletter" || 
															$page_name=="contact_message"){?>
                                                                 in
                                                                    <?php } ?>" >
                                
								<?php
                                    if($this->Crud_model->admin_permission('newsletter')){
                                ?>
                                <li <?php if($page_name=="newsletter"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/newsletter">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('newsletters/bulk_email');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                
                                <?php
                                    if($this->Crud_model->admin_permission('contact_message')){
                                ?>
                                <li <?php if($page_name=="contact_message"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>index.php/admin/contact_message">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('contact_messages');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>

                        <?php
                            if($this->Crud_model->admin_permission('seo')){
                        ?>
                        <li <?php if($page_name=="seo_settings"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/seo_settings">
                                <i class="fa fa-search-plus"></i>
                                <span class="menu-title">
                                    SEO
                                </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
                        
                        <?php
                            if($this->Crud_model->admin_permission('language')){
                        ?> 
                        <li <?php if($page_name=="language"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/language_settings">
                                <i class="fa fa-language"></i>
                                <span class="menu-title">
                                    <?php echo translate('language');?>
                                </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
                        
                        
                        <?php
							if($this->Crud_model->admin_permission('business_settings')){
						?>
                        <li <?php if($page_name=="business_settings"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/business_settings/">
                                <i class="fa fa-briefcase"></i>
                                <span class="menu-title">
                                	<?php echo translate('business_settings');?>
                                </span>
                            </a>
                        </li>
                        <?php
							}
						?>
                        
                        <li <?php if($page_name=="manage_admin"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>index.php/admin/manage_admin/">
                                <i class="fa fa-lock"></i>
                                <span class="menu-title">
                                	<?php echo translate('manage_admin_profile');?>
                                </span>
                            </a>
                        </li>
                </div>
            </div>
        </div>
    </div>
</nav>