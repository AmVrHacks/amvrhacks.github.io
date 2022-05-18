
    <div class="navbar navbar mega-nav mb-0 nav2_color" role="navigation">
        <div class="container">
            <div class="navbar-collapse collapse">
                <div class="row" style="height: 35px;text-align: center;">
                    <ul class="nav navbar-nav " style="float: none; display: inline-block;">
                    <?php
                        $menu = json_decode($this->db->get_where('ui_settings', array(
                            'type' => 'menu_serial'
                            ))->row()->value, true);
                        $already = array();
                        foreach($menu as $row){
                            if(!isset($row['children'])){
                                if($this->Crud_model->get_type_name_by_id('menu',$row['id'],'status') == 'ok'){
                                $already[] = $row['id'];
                    ?>
                        <li class="dropdown">
                            <?php
                                if($row['id'] == '1'){
                            ?>
                                <a href="<?php echo base_url(); ?>">
                                    <?php echo translate('home'); ?>
                                </a>
                            <?php
                                } else if($row['id'] == '2'){
                            ?>
                                <a href="<?php echo base_url(); ?>index.php/home/categories" class="dropdown-toggle" ><?php echo translate('categories'); ?></a>
                                <ul class="dropdown-menu">
                                    <?php
                                    $all_categories=$this->db->get('category')->result_array();
                                    foreach($all_categories as $rowy)
                                    {
                                        $sub_category_data=$this->db->get_where('sub_category',array('parent_category_id'=>$rowy['category_id']))->result_array();
                                    ?>
                                        <li class="dropdown-submenu">
                                            <a href="<?php echo base_url(); ?>index.php/home/categories/<?php echo $rowy['category_id']; ?>">
                                                <?php echo $rowy['name']; ?>
                                            </a>
                                            <ul class="dropdown-menu">
                                            <?php
                                                
                                                foreach($sub_category_data as $rrow)
                                                    {		
                                            ?>
                                                
                                                        <li>
                                                            <a href="<?php echo base_url(); ?>index.php/home/categories/<?php echo $rowy['category_id']; ?>/<?php echo $rrow['sub_category_id']; ?>">
                                                                <?php echo $rrow['name']; ?>
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
                                </ul>
                            <?php	
                                } else if($row['id'] == '3'){
                            ?>
                                <a href="<?php echo base_url(); ?>index.php/home/featured/">
                                    <?php echo translate('featured_items'); ?>
                                </a>
                            <?php	
                                } else if($row['id'] == '4'){
                            ?>
                                <a href="<?php echo base_url(); ?>index.php/home/latest/">
                                    <?php echo translate('latest_item'); ?>
                                </a>
                            <?php
                                } else if($row['id'] == '6'){
                            ?>
                             <a href="<?php echo base_url(); ?>index.php/home/blog/all" class="dropdown-toggle" ><?php echo translate('blog'); ?></a>
                            <ul class="dropdown-menu">
                                        
                                    <li>
                                        <a href="<?php echo base_url(); ?>index.php/home/blog/all">
                                             <?php echo translate('all_blogs'); ?>
                                        </a>
                                   </li>
                                    <?php
                                        $blog_category_data=$this->db->get('blog_category')->result_array();
                                        foreach($blog_category_data as $rrow)
                                            {	
                                    ?>
                                        
                                    <li>
                                        <a href="<?php echo base_url(); ?>index.php/home/blog/<?php echo $rrow['blog_category_id']; ?>">
                                             <?php echo $rrow['name']; ?>
                                        </a>
                                   </li>
                                    <?php		
                                        }
                                    ?>  
                              </ul>
                            <?php 
                                } else if($row['id'] == '5'){
                            ?>
                                <a href="<?php echo base_url(); ?>index.php/home/contact/">
                                    <?php echo translate('contact'); ?>
                                </a>
                            <?php
                                } else {
                            ?>
                            <?php
                                    $page_id=$this->db->get_where('menu',array('menu_id'=>$row['id']))->row()->page_name;
                                    if($page_id != ''){
                                        $page_parmalink=$this->db->get_where('page',array('page_id'=>$page_id))->row()->parmalink;
                            ?>
                                    <a href="<?php echo base_url(); ?>index.php/home/page/<?php echo $page_parmalink?>">
                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row['id'],'title');?>
                                    </a>
                                <?php 	
                                    } else {
                                        $link =$this->db->get_where('menu',array('menu_id'=>$row['id']))->row()->link;
                                ?>
                                    <a href="<?php echo $link?>">
                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row['id'],'title');?>
                                    </a>
                                    
                            <?php 
                                    }
                                }
                            ?>
                        </li>
                    <?php
                                }
                            } else {
                                if($this->Crud_model->get_type_name_by_id('menu',$row['id'],'status') == 'ok'){
                                $already[] = $row['id'];
                    ?>  
                        <li class="dropdown">
                            <?php
                                if($row['id'] == '1'){
                            ?>
                                <a href="<?php echo base_url(); ?>" class="dropdown-toggle" >
                                    <?php echo translate('home'); ?>
                                </a>
                            <?php
                                } else if($row['id'] == '3'){
                            ?>
                                <a href="<?php echo base_url(); ?>index.php/home/featured/" class="dropdown-toggle" >
                                    <?php echo translate('featured_items'); ?>
                                </a>
                            <?php	
                                } else if($row['id'] == '4'){
                            ?>
                                <a href="<?php echo base_url(); ?>index.php/home/latest/" class="dropdown-toggle" >
                                    <?php echo translate('latest_item'); ?>
                                </a>
                            <?php
                                } else if($row['id'] == '5'){
                            ?>
                                <a href="<?php echo base_url(); ?>index.php/home/contact/" class="dropdown-toggle" >
                                    <?php echo translate('contact'); ?>
                                </a>
                            <?php
                                } else {
                                        
                                ?>
                            <?php
                            $page_id=$this->db->get_where('menu',array('menu_id'=>$row['id']))->row()->page_name;
                                    if($page_id != ''){
                                        $page_parmalink=$this->db->get_where('page',array('page_id'=>$page_id))->row()->parmalink;
                            ?>
                                    <a href="<?php echo base_url(); ?>index.php/home/page/<?php echo $page_parmalink?>" class="dropdown-toggle" >
                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row['id'],'title');?>
                                    </a>
                                <?php 	
                                    } else {
                                        $link =$this->db->get_where('menu',array('menu_id'=>$row['id']))->row()->link;
                                ?>
                                    <a href="<?php echo $link?>" class="dropdown-toggle" >
                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row['id'],'title');?>
                                    </a>
                                    
                            <?php 
                                    }
                                }
                            ?>
                                
                            <ul class="dropdown-menu">
                                <?php
                                    $children = $row['children'];
                                    foreach($children as $row1){		
                                        if(!isset($row1['children'])){
                                            if($this->Crud_model->get_type_name_by_id('menu',$row1['id'],'status') == 'ok'){
                                            $already[] = $row1['id'];
                                ?>
                                    <li class="dropdown-submenu">
                                        <?php
                                            if($row1['id'] == '1'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>">
                                                <?php echo translate('home'); ?>
                                            </a>
                                        <?php
                                            } else if($row1['id'] == '3'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/featured/">
                                                <?php echo translate('featured_items'); ?>
                                            </a>
                                        <?php	
                                            } else if($row1['id'] == '4'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/latest/">
                                                <?php echo translate('latest_item'); ?>
                                            </a>
                                        <?php
                                            } else if($row1['id'] == '5'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/contact/">
                                                <?php echo translate('contact'); ?>
                                            </a>
                                        <?php
                                            } else {
                                                    
                                            ?>
                                        
                                        <?php
                                            $page_id=$this->db->get_where('menu',array('menu_id'=>$row1['id']))->row()->page_name;
                                                if($page_id != ''){
                                                    $page_parmalink=$this->db->get_where('page',array('page_id'=>$page_id))->row()->parmalink;
                                        ?>
                                                <a href="<?php echo base_url(); ?>index.php/home/page/<?php echo $page_parmalink?>">
                                                   <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row1['id'],'title');?>
                                                </a>
                                            <?php 	
                                                } else {
                                                    $link =$this->db->get_where('menu',array('menu_id'=>$row1['id']))->row()->link;
                                            ?>
                                                <a href="<?php echo base_url(); ?>index.php/home/page/<?php echo $link?>">
                                                   <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row1['id'],'title');?>
                                                </a>
                                                
                                        <?php 
                                                }
                                            }
                                        ?>
                                    </li>
                                <?php
                                            }
                                        } else {
                                            if($this->Crud_model->get_type_name_by_id('menu',$row1['id'],'status') == 'ok'){
                                            $already[] = $row1['id'];
                                ?>    
                                    <li class="dropdown-submenu">
                                        <?php
                                            if($row1['id'] == '1'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>" class="dropdown-toggle" >
                                                <?php echo translate('home'); ?>
                                            </a>
                                        <?php
                                            } else if($row1['id'] == '3'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/featured/"  >
                                                <?php echo translate('featured_items'); ?>
                                            </a>
                                        <?php	
                                            } else if($row1['id'] == '4'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/latest/"  >
                                                <?php echo translate('latest_item'); ?>
                                            </a>
                                        <?php
                                            } else if($row1['id'] == '5'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/contact/"  >
                                                <?php echo translate('contact'); ?>
                                            </a>
                                        <?php
                                            } else {
                                                    
                                            ?>
                                           
                                            <?php
                                                $page_id=$this->db->get_where('menu',array('menu_id'=>$row1['id']))->row()->page_name;
                                                    if($page_id != ''){
                                                        $page_parmalink=$this->db->get_where('page',array('page_id'=>$page_id))->row()->parmalink;
                                            ?>
                                                    <a href="<?php echo base_url(); ?>index.php/home/page/<?php echo $page_parmalink?>"  >
                                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row1['id'],'title');?>
                                                    </a>
                                                <?php 	
                                                    } else {
                                                        $link =$this->db->get_where('menu',array('menu_id'=>$row1['id']))->row()->link;
                                                ?>
                                                    <a href="<?php echo $link?>" >
                                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row1['id'],'title');?>
                                                    </a>
                                                    
                                            <?php 
                                                    }
                                                }
                                            ?>
                                        <ul class="dropdown-menu">
                                            <?php
                                                $children1 = $row1['children'];
                                                foreach($children1 as $row2){
                                                    if($this->Crud_model->get_type_name_by_id('menu',$row2['id'],'status') == 'ok'){
                                                    $already[] = $row2['id'];
                                            ?>
                                                <li>
                                            <?php
                                                if($row2['id'] == '1'){
                                            ?>
                                            <a href="<?php echo base_url(); ?>" >
                                                <?php echo translate('home'); ?>
                                            </a>
                                        <?php
                                            } else if($row2['id'] == '3'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/featured/" >
                                                <?php echo translate('featured_items'); ?>
                                            </a>
                                        <?php	
                                            } else if($row2['id'] == '4'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/latest/" >
                                                <?php echo translate('latest_item'); ?>
                                            </a>
                                        <?php
                                            } else if($row2['id'] == '5'){
                                        ?>
                                            <a href="<?php echo base_url(); ?>index.php/home/contact/" >
                                                <?php echo translate('contact'); ?>
                                            </a>
                                        <?php
                                            } else {
                                                    
                                            ?>
                                           
                                            <?php
                                            $page_id=$this->db->get_where('menu',array('menu_id'=>$row2['id']))->row()->page_name;
                                                    if($page_id != ''){
                                                        $page_parmalink=$this->db->get_where('page',array('page_id'=>$page_id))->row()->parmalink;
                                            ?>
                                                    <a href="<?php echo base_url(); ?>index.php/home/page/<?php echo $page_parmalink?>">
                                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row2['id'],'title');?>
                                                    </a>
                                                <?php 	
                                                    } else {
                                                        $link =$this->db->get_where('menu',array('menu_id'=>$row2['id']))->row()->link;
                                                ?>
                                                    <a href="<?php echo $link?>" >
                                                       <?php  echo $this->Crud_model->get_type_name_by_id('menu',$row2['id'],'title');?>
                                                    </a>
                                                    
                                            <?php 
                                                    }
                                                }
                                            ?>
                                                </li>
                                            <?php
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </li>
                                    
                                <?php
                                            }
                                        }
                                    }
                                ?>
                            </ul>
                        </li>
                        
                    <?php
                                }
                            }
                        }
                    ?>
                    
                </ul>
                </div>
            </div>
         </div>
    </div>