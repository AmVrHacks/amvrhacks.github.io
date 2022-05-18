
<!-- MAIN CONTENT -->
<section class="slice bg-white bb">
    <div class="wp-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="panel panel-default panel-sidebar-1">
                        <div class="panel-heading" style="padding:10px 15px !important;"><h2><?php echo translate('search_for_products')?></h2></div>
                        <div class="panel-body">
                            <div class="form-light"> 
                            	
                                <div class="form-group">
                                    <label><?php echo translate('Search_for_products');?></label>
                                    <input type="text" class="form-control filter_set_blur text_sidebar" name="text" placeholder="<?php echo translate('i_want_to_find...')?>" value="<?php echo urldecode($text); ?>">
                                </div>

                                <div class="form-group">
                                    <label><?php echo translate('area');?></label>
                                    <input type="text" class="form-control filter_set_blur location_sidebar" id="location" name="location" placeholder="<?php ?>" value="<?php echo urldecode($location); ?>">
                                    
                                </div>

                                <div class="form-group">
                                    <label><?php echo translate('condition').$condition.'-';?></label>                          
                                    <select class="form-control filter_set_change type_sidebar  demo-chosen-select" name="type">
                                         <option value=""><?php echo translate('select_condition');?></option>
                                         <option value="new" <?php if($condition == 'new'){ echo 'selected'; } ?>>
                                            <?php echo translate('new');?>
                                         </option>
                                         <option value="used" <?php if($condition == 'used'){ echo 'selected'; } ?>>
                                            <?php echo translate('used');?>
                                         </option>
                                    </select>
                                </div>
                                
                                <div class="form-group">
                                    <label><?php echo translate('price')?></label>
                                    <div class="row" style="margin: 30px 0 20px 0;">
                                        <div id="range1"></div>
                                    </div>

                                    <input type="hidden" name="min" id="value-input1-min" class="min_sidebar" value="<?php echo $min; ?>" />
                                    <input type="hidden" name="max" id="value-input1-max" class="max_sidebar" value="<?php echo $max; ?>" />
                        
                                </div>
                                
                                
                                <style>
                                    .category_sidebar_set{
                                        cursor: pointer;	
                                    }
                                    .sub_category_sidebar_set{
                                        cursor: pointer;	
                                    }
                                </style>
                                <script>
                                    $(document).ready(function(){								
                                        function filter_set(){
                                            $('.min').val($('.min_sidebar').val());
                                            $('.max').val($('.max_sidebar').val());
                                            $('.text').val($('.text_sidebar').val());
                                            $('.location').val($('.location_sidebar').val());
                                            $('.type').val($('.type_sidebar').val());
                                            $('.category').val($('.category_sidebar').val());
                                            $('.sub_category').val($('.sub_category_sidebar').val());
                                            filter(0);
                                        }
                                        
                                        $('.filter_set_click').on('click',function(){
                                            filter_set();
                                        });
                                        $('.filter_set_blur').on('keyup',function(){
                                            filter_set();
                                        });
                                        $('.filter_set_change').on('change',function(){
                                            filter_set();
                                        });
                                        
                                        $('.category_sidebar_set').on('click',function(){
                                            var id = $(this).data('cid');
                                            $('.category_sidebar').val(id);
                                            $('.sub_category_sidebar').val('');
                                            $('.sub_category_sidebar_set').removeClass('base');
                                            filter_set();
                                        });
                                        
                                        $('.sub_category_sidebar_set').on('click',function(){
                                            $('.sub_category_sidebar_set').removeClass('base');
                                            $(this).addClass('base');
                                            var id = $(this).data('scid');
                                            $('.sub_category_sidebar').val(id);
                                            filter_set();
                                        });
                                    });
                                    
                                </script>
                                <?php
                                    $this->db->select_min('price');
                                    $this->db->where('status','approved');
                                    $min_all = $this->db->get('product')->row()->price;

                                    $this->db->select_max('price');
                                    $this->db->where('status','approved');
                                    $max_all = $this->db->get('product')->row()->price;
                                    if($min == 0){
                                        $min = $min_all;
                                    }
                                    if($max == 0){
                                        $max = $max_all;
                                    }
                                    if($min == $max){
                                        $max = $min+1;	
                                    }
                                    if($min_all == $max_all){
                                        $max_all = $min_all+1;	
                                    }
                                ?>
                                <script type="text/javascript">
                                    $(document).ready(function(){

                                        var slider = document.getElementById('range1');

                                        noUiSlider.create(slider, {
                                            start: [ <?php echo $min; ?>, <?php echo $max; ?> ], // Handle start position,
                                            tooltips: [ true, wNumb({ decimals: 1 }) ],
                                            step: 1, // Slider moves in increments of '10'
                                            connect: true, // Display a colored bar between the handles
                                            orientation: 'horizontal', // Orient the slider vertically
                                            behaviour: 'tap-drag', // Move handle on tap, bar is draggable
                                            range: { // Slider can select '0' to '100'
                                                'min': <?php echo $min_all; ?>,
                                                'max': <?php echo $max_all; ?>
                                            }
                                        });

                                        var valueInput1 = document.getElementById('value-input1-max'),
                                            valueInput2 = document.getElementById('value-input1-min');


                                        var valueInputMain1 = document.getElementById('value-input-main1-max'),
                                            valueInputMain2 = document.getElementById('value-input-main1-min');

                                        // When the slider value changes, update the input and span
                                        slider.noUiSlider.on('update', function( values, handle ) {
                                            if ( handle ) {
                                                valueInput1.value = values[handle];
                                            } else {
                                                valueInput2.value = values[handle];
                                            }
                                        });


                                        slider.noUiSlider.on('end', function( values, handle ) {
                                            if ( handle ) {
                                                valueInputMain1.value = values[handle];
                                            } else {
                                                valueInputMain2.value = values[handle];
                                            }

                                            filter(0);
                                        });

                                    })
                                </script>   
                                    
                                <input type="hidden" class="category_sidebar" value="<?php echo $category; ?>" />
                                <input type="hidden" class="sub_category_sidebar" value="<?php echo $sub_category; ?>" />
                                </div>
                        </div>
                     </div>
                     <div class="widget">   
                        <div class="panel-group" id="accordion">
                                <?php
                                $all_categories=$this->db->get('category')->result_array();
                                foreach($all_categories as $row)
                                {
                                    $sub_category_data = $this->db->get_where('sub_category',array('parent_category_id'=>$row['category_id']))->result_array();
                                ?>
                                <div class="panel panel-default">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $row['category_id'];?>" class="<?php if($row['category_id'] !== $category){ ?>collapsed<?php } ?> category_sidebar_set" data-cid="<?php echo $row['category_id'];?>">
                                        <div class="panel-heading"style="padding: 10px 15px !important; background:#FDFDFD; font-size:14px !important;">
                                            <h4 class="panel-title">
                                               <?php echo $row['name']; ?>
                                            </h4>
                                        </div>
                                    </a>
                                    <div id="collapse<?php echo $row['category_id'];?>" class="panel-collapse collapse <?php if($row['category_id'] == $category){ ?>in<?php } ?>"   >
                                        <ul class="list-group">
                                        <?php
                                        foreach($sub_category_data as $row2)
                                        {
                                        ?>
                                            <li class="list-group-item <?php if($row2['sub_category_id'] == $sub_category){ ?>base<?php } ?> sub_category_sidebar_set" data-scid="<?php echo $row2['sub_category_id'];?>">
                                                <span class="badge base<?php if($row2['sub_category_id'] == $sub_category){ ?>-alt<?php } ?>"><?php echo count($this->db->get_where('product',array('sub_category_id'=>$row2['sub_category_id']))->result_array()); ?></span>
                                                <span><?php echo $row2['name'];?></span>
                                            </li>
                                        <?php
                                        }
                                        ?>
                                        </ul>
                                    </div>
                                </div>
                                <?php
                                    }
                                ?>
                             </div>
                     </div>   
                        
                    
                    <?php echo $this->Crud_model->get_sidebar(2); ?>
                </div>
                
                <div class="col-md-9">
                    <!-- PAGINATION & FILTERS -->
                    <div class="wp-block default product-list-filters light-gray">
						
						<?php
                            echo form_open(base_url() . 'index.php/home/listed/', array(
                                'class' => 'form-horizontal',
                                'method' => 'post',
                                'id' => 'filter_form'
                            ));
                        ?>
                            <span class="pagination_links"></span>
                            <div class="filter sort-filter">
                                <div class="form-inline form-light">
                                <span class="view-mode hidden-xs hidden-sm">
                                    <label for="grid_view">
                                        <i class="fa fa-th"></i>
                                    </label>
                                    <label for="list_view">
                                        <i class="fa fa-bars"></i>
                                    </label>
                                        <input type="radio" name="show_type" style="display:none;" value="list"  onclick="filter('no')" id="list_view">
                                        <input type="radio" name="show_type" style="display:none;" value="grid"  checked onclick="filter('no')" id="grid_view">
                                </span>
                                    <select class="form-control demo-chosen-select" name="sort" onChange="filter('no')">
                                        <option value=""><?php echo translate('sort_by');?></option>
                                        <option value="price_low"><?php echo translate('price_low_to_high');?></option>
                                        <option value="price_high"><?php echo translate('price_high_to_low');?></option>
                                        <option value="condition_old"><?php echo translate('oldest');?></option>
                                        <option value="condition_new"><?php echo translate('newest');?></option>
                                        <option value="most_viewed" ><?php echo translate('most_viewed');?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="filter sort-filter">
                                <input type="hidden" name="location" class="location" <?php if($page_type !='featured'){?>value="<?php echo urldecode($location); ?>" <?php }?>/>
                                <input type="hidden" name="type" class="type" <?php if($page_type !='featured'){?>value="<?php echo $condition; ?>" <?php }?>/>
                                <input type="hidden" name="min" class="min" id="value-input-main1-min" <?php if($page_type !='featured'){?>value="<?php echo $min; ?>" <?php }?>/>
                                <input type="hidden" name="max" class="max" id="value-input-main1-max" <?php if($page_type !='featured'){?>value="<?php echo $max; ?>" <?php }?>/>
                                
                                <input type="hidden" name="category" class="category" <?php if($page_type !='featured'){?>value="<?php echo $category; ?>" <?php }?>/>
                            	<input type="hidden" name="sub_category" class="sub_category" <?php if($page_type !='featured'){?>value="<?php echo $sub_category; ?>"<?php }?> />
                            	<input type="hidden" name="text" class="text" <?php if($page_type!='featured'){?> value="<?php echo urldecode($text); ?>"<?php }?> />
                                
                            </div>
                        </div>
                        </form>
                        <div id="result">
                        
                    	</div>
                        <span class="pagination_links"></span>
                    
                    
                </div>
            </div>
        </div>
    </div>
</section>

