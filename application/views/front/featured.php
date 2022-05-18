<!-- MAIN CONTENT -->
<section class="slice bg-white bb">
    <div class="wp-section">
        <div class="container">
            <div class="row">
            	<?php
                      $filter_pos_home='right';
                ?>
                <div class="col-lg-3 col-md-3 col-sm-3 pull-<?php echo $filter_pos_home; ?>">
                    <?php echo $this->Crud_model->get_sidebar(3); ?>
                 </div>
                <div class="col-md-9">
                    <!-- PAGINATION & FILTERS -->
                    <div class="wp-block default product-list-filters light-gray">
						
						<?php
                            echo form_open(base_url() . 'index.php/home/featured_item/', array(
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
                                        <input type="radio" name="show_type" style="display:none;" value="list" checked onclick="filter('no')" id="list_view">
                                        <input type="radio" name="show_type" style="display:none;" value="grid" onclick="filter('no')" id="grid_view">
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
                                <input type="hidden" name="category" value="" />
                            	<input type="hidden" name="sub_category" value="" />
                                        <input type="text" class="form-control" placeholder="<?php echo translate('I want to find...'); ?>" name="text" style="padding-top:4px !important;" onkeyup="set_tex(this,this.value)" value="<?php //echo $text; ?>" />
                            </div>
                        </div>
                        </form>
                        <div id="result">
                        
                    	</div>
                        <span class="pagination_links"></span>
                    
    <script type="text/javascript">
        function set_tex(wen,val){
            setTimeout(function(){
                if($(wen).val() == val){
                    filter('no');
                }
            },800);
        }
    </script> 
                    
                </div>
            </div>
        </div>
    </div>
</section>

