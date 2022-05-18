
<div>
	<?php
        echo form_open(base_url() . 'index.php/admin/menu/do_serial/', array(
            'class' => 'form-horizontal',
            'method' => 'post',
            'id' => 'menu_serial',
            'enctype' => 'multipart/form-data'
        ));
    ?>
        <div class="panel-body">
    		<textarea style="display:none" name="serial" id="nestable3-output"></textarea>
            <div class="cf nestable-lists col-md-12">
                <div class=" dd" id="nestable3">
                    <ol class="dd-list">
                        <?php
							$already = array();
                        	foreach($menu as $row){
								if(!isset($row['children'])){
									if($this->Crud_model->get_type_name_by_id('menu',$row['id'],'status') == 'ok'){
									$already[] = $row['id'];
						?>
                            <li class="dd-item dd3-item" data-id="<?php echo $row['id']; ?>">
                                <div class="dd-handle">
                                	<div class="dd3-handle">Drag</div>
                                    <div class="dd3-content">
                                    <?php
                                        if($row['id'] == '1'){
                                            echo translate('home');	
                                        } else if($row['id'] == '2'){
                                            echo translate('categories');	
                                        } else if($row['id'] == '3'){
                                            echo translate('featured_items');	
                                        } else if($row['id'] == '4'){
                                            echo translate('latest_item');	
                                        } else if($row['id'] == '5'){
                                            echo translate('contact');
                                                
                                        } else if($row['id'] == '6'){
                                            echo translate('blog');	
                                        } else {
                                            
                                        
                                    ?>
                                    <?php echo $this->Crud_model->get_type_name_by_id('menu',$row['id'],'title'); 			?>
                                    <?php }?>
                                    </div>
                                </div>
                            </li>
                        <?php
									}
								} else {
									if($this->Crud_model->get_type_name_by_id('menu',$row['id'],'status') == 'ok'){
									$already[] = $row['id'];
						?>    
                            <li class="dd-item dd3-item" data-id="<?php echo $row['id']; ?>">
                                <div class="dd-handle">
                                	<div class="dd3-handle">Drag</div>
                                	<div class="dd3-content">
                                	<?php
										if($row['id'] == '1'){
											echo translate('home');	
										} else if($row['id'] == '2'){
											echo translate('categories');	
										} else if($row['id'] == '3'){
											echo translate('featured_items');	
										} else if($row['id'] == '4'){
											echo translate('latest_item');	
										} else if($row['id'] == '5'){
											echo translate('contact');	
										} else if($row['id'] == '6'){
											echo translate('blog');	
										} else {
											
									?>
									<?php echo $this->Crud_model->get_type_name_by_id('menu',$row['id'],'title'); ?>
                                    <?php }?>
                                    </div>
                                </div>
                                <ol class="dd-list">
                                	<?php
										$children = $row['children'];
                                    	foreach($children as $row1){		
											if(!isset($row1['children'])){
												if($this->Crud_model->get_type_name_by_id('menu',$row1['id'],'status') == 'ok'){
												$already[] = $row1['id'];
									?>
										<li class="dd-item dd3-item" data-id="<?php echo $row1['id']; ?>">
                                            <div class="dd-handle">
                                                <div class="dd3-handle">Drag</div>
                                                <div class="dd3-content">
                                            	<?php
													if($row1['id'] == '1'){
														echo translate('home');	
													} else if($row1['id'] == '2'){
														echo translate('categories');	
													} else if($row1['id'] == '3'){
														echo translate('featured_items');	
													} else if($row1['id'] == '4'){
														echo translate('latest_item');	
													} else if($row1['id'] == '5'){
														echo translate('contact');	
													} else if($row1['id'] == '6'){
														echo translate('blog');	
													} else {
									?>
												<?php echo $this->Crud_model->get_type_name_by_id('menu',$row1['id'],'title'); ?>
                                                <?php }?>
                                                </div>
											</div>
										</li>
									<?php
												}
											} else {
												if($this->Crud_model->get_type_name_by_id('menu',$row1['id'],'status') == 'ok'){
												$already[] = $row1['id'];
									?>    
										<li class="dd-item dd3-item" data-id="<?php echo $row1['id']; ?>">
                                            <div class="dd-handle">
                                                <div class="dd3-handle">Drag</div>
												<div class="dd3-content">
                                            	<?php
													if($row1['id'] == '1'){
														echo translate('home');	
													} else if($row1['id'] == '2'){
														echo translate('categories');	
													} else if($row1['id'] == '3'){
														echo translate('featured_items');	
													} else if($row1['id'] == '4'){
														echo translate('latest_item');	
													} else if($row1['id'] == '5'){
														echo translate('contact');	
													} else if($row1['id'] == '6'){
														echo translate('blog');	
													} else {
												?>
												<?php echo $this->Crud_model->get_type_name_by_id('menu',$row1['id'],'title'); ?>
                                                <?php }?>
                                                </div>
											</div>
											<ol class="dd-list">
												<?php
													$children1 = $row1['children'];
													foreach($children1 as $row2){
														if($this->Crud_model->get_type_name_by_id('menu',$row2['id'],'status') == 'ok'){
														$already[] = $row2['id'];
												?>
                                                    <li class="dd-item dd3-item" data-id="<?php echo $row2['id']; ?>">
                                                        <div class="dd-handle">
                                                            <div class="dd3-handle">Drag</div>
                                                            <div class="dd3-content">
                                                        	<?php
																if($row2['id'] == '1'){
																	echo translate('home');	
																} else if($row2['id'] == '2'){
																	echo translate('categories');	
																} else if($row2['id'] == '3'){
																	echo translate('featured_items');	
																} else if($row2['id'] == '4'){
																	echo translate('latest_item');	
																} else if($row2['id'] == '5'){
																	echo translate('contact');	
																} else if($row2['id'] == '6'){
																	echo translate('blog');	
																} else {
															?>
                                                        	
                                                            <?php echo $this->Crud_model->get_type_name_by_id('menu',$row2['id'],'title'); ?>
                                                            <?php }?>
                                                            </div>
                                                        </div>
                                                    </li>
												<?php
														}
													}
												?>
											</ol>
										</li>
										
									<?php
												}
											}
										}
									?>
                                </ol>
                            </li>
                            
                        <?php
									}
								}
							}
						?>
						<?php
                            $all_menus = $this->db->get_where('menu',array('status'=>'ok'))->result_array();
                            foreach($all_menus as $row){
                                if(!in_array($row['menu_id'],$already)){
                        ?>
                            <li class="dd-item dd3-item" data-id="<?php echo $row['menu_id']; ?>">
                                <div class="dd-handle">
                                	<div class="dd3-handle">Drag</div>
                                    <div class="dd3-content">
                                	<?php
										if($row['menu_id'] == '1'){
											echo translate('home');	
										} else if($row['menu_id'] == '2'){
											echo translate('categories');	
										} else if($row['menu_id'] == '3'){
											echo translate('featured_items');	
										} else if($row['menu_id'] == '4'){
											echo translate('latest_item');	
										} else if($row['menu_id'] == '5'){
											echo translate('contact');	
										} else if($row['menu_id'] == '6'){
											echo translate('blog');	
										} else {
									?>
                                    <?php echo $this->Crud_model->get_type_name_by_id('menu',$row['menu_id'],'title'); ?>
                                    <?php }?>
                                    </div>
                                </div>
                            </li>
                        <?php
                                }
                            }
                        ?>
                    </ol>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <div class="row">
                <div class="col-md-11">
                    <span class="btn btn-purple btn-labeled fa fa-refresh pro_list_btn pull-right" 
                        onclick="ajax_set_full('serial','<?php echo translate('menu_serial'); ?>','<?php echo translate('successfully_serialized!'); ?>','menu_serial',''); "><?php echo translate('reset');?>
                    </span>
                </div>
                
                <div class="col-md-1">
                    <span class="btn btn-success btn-md btn-labeled fa fa-upload pull-right" onclick="form_submit('menu_serial','<?php echo translate('menu_serial_saved!'); ?>');" ><?php echo translate('save');?></span>
                </div>
                
            </div>
        </div>
	</form>
</div>
<script>

$(document).ready(function()
{

    var updateOutput = function(e)
    {
        var list   = e.length ? e : $(e.target),
            output = list.data('output');
        if (window.JSON) {
            output.val(window.JSON.stringify(list.nestable('serialize')));//, null, 2));
        } else {
            output.val('JSON browser support required for this demo.');
        }
    };

       // activate Nestable for list 2
    $('#nestable3').nestable({
        group: 1
    })
    .on('change', updateOutput);

    // output initial serialised data
    updateOutput($('#nestable3').data('output', $('#nestable3-output')));

    $('#nestable-menu').on('click', function(e)
    {
        var target = $(e.target),
            action = target.data('action');
        if (action === 'expand-all') {
            $('.dd').nestable('expandAll');
        }
        if (action === 'collapse-all') {
            $('.dd').nestable('collapseAll');
        }
    });


});
</script>