<!-------page_wise_sidebar------>
<!-------sidebar.php------------>

<div class="sidebar">
    <?php
        $parts=$this->Crud_model->get_field('page',$page,'parts');
        $widget_ids = json_decode($parts,true);
    ?>
        <?php foreach($widget_ids as $row){ 
            $id = $row['id'];
			if($row['status'] == 'ok' && $this->db->get_where('widget',array('widget_id'=>$id))->row()->status == 'ok' ){
            if($id == 1){
        ?>
        <h4><?php echo translate($this->Crud_model->get_type_name_by_id('widget',$id,'title'));?></h4>
    <div class="widget">
        <div class="panel-group" id="accordion">
            <?php
            $all_categories=$this->db->get('category')->result_array();
            foreach($all_categories as $row)
            {
                $sub_category_data=$this->db->get_where('sub_category',array('parent_category_id'=>$row['category_id']))->result_array();
            ?>
            <div class="panel panel-default">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $row['category_id'];?>" class="collapsed">
                    <div class="panel-heading" style="padding: 10px 15px !important; background:#FDFDFD; font-size:14px !important;">
                        <h4 class="panel-title">
                            <?php echo $row['name'];?>
                        </h4>
                    </div>
                </a>
                <div id="collapse<?php echo $row['category_id'];?>" class="panel-collapse collapse" style="height: 0px;">
                    <ul class="list-group">
                    <?php
                    foreach($sub_category_data as $row2)
                    {
                    ?>
                        <li class="list-group-item">
                            <span class="badge base"><?php echo count($this->db->get_where('product',array('sub_category_id'=>$row2['sub_category_id'],'status'=>'approved'))->result_array()); ?></span>
                            <a href="<?php echo base_url(); ?>index.php/home/categories/<?php echo $row['category_id'];?>/<?php echo $row2['sub_category_id'];?>/"><?php echo $row2['name'];?></a>
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
    <?php } else if($id==2){ ?>
    <div class="panel panel-default panel-sidebar-1">
        <div class="panel-heading" style="padding:10px 15px !important;"><h2><?php echo translate($this->Crud_model->get_type_name_by_id('widget',$id,'title')) ;?></h2></div>
        <div class="panel-body">
            <?php
                echo form_open(base_url() . 'index.php/home/advance_search/', array(
                    'class' => 'form-light',
                    'method' => 'post',
                    'role' => 'form'
                ));
            ?>
            
                <div class="form-group">
                    <label><?php echo translate('search_for_products')?></label>
                    <input type="text" class="form-control" name="text" placeholder="I want to find...">
                </div>
                <div class="form-group">
                    <label><?php echo translate('category')?></label>
                    <select class="form-control  demo-chosen-select" name="category">
                        <?php
                        $all_categories=$this->db->get('category')->result_array();
                        foreach($all_categories as $row)
                        {
                        ?>
                            <option value="<?php echo $row['category_id'];?>"><?php echo $row['name'];?></option>
                        <?php
                            }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <label><?php echo translate('condition')?></label>
                    <select class="form-control demo-chosen-select" name="use_type">
                         <option value=""><?php echo translate('select_condition');?></option>
                         <option value="new"><?php echo translate('new');?></option>
                         <option value="used"><?php echo translate('used');?></option>
                    </select>
                </div>
                <div class="form-group">
                    <label><?php echo translate('area');?></label>
                    <input type="text" class="form-control" name="location" placeholder="<?php echo translate('search_for_location')?>">
                </div>
                <div class="form-group">
                    <label><?php echo translate('price')?></label>
                    <div class="col-md-12" style="margin: 30px 0 20px 0;">
                        <div id="range"></div>
                    </div>
                    <input type="hidden"  id="value-input-min" name="min" />
                    <input type="hidden"  id="value-input-max" name="max" />                        
                </div>
                <div class="form-group">
                <button type="submit" class="btn btn-block btn-base btn-icon fa-search">
					<?php echo translate('search')?>
                </button>
                </div>
            </form>
        </div>
        </div>
        <?php
            $this->db->select_min('price');
            $this->db->where('status','approved');
            $min = $this->db->get('product')->row()->price;

            $this->db->select_max('price');
            $this->db->where('status','approved');
            $max = $this->db->get('product')->row()->price;
			if($min == $max){
				$max = $min+1;	
			}
        ?>
        <script type="text/javascript">
            $(document).ready(function(){
                var slider = document.getElementById('range');
                noUiSlider.create(slider, {
                    start: [ <?php echo $min; ?>, <?php echo $max; ?> ], // Handle start position,
                    tooltips: [ true, wNumb({ decimals: 1 }) ],
                    step: 1, // Slider moves in increments of '10'
                    connect: true, // Display a colored bar between the handles
                    orientation: 'horizontal', // Orient the slider vertically
                    behaviour: 'tap-drag', // Move handle on tap, bar is draggable
                    range: { // Slider can select '0' to '100'
                        'min': <?php echo $min; ?>,
                        'max': <?php echo $max; ?>
                    }
                });

                var valueInput1 = document.getElementById('value-input-max'),
                    valueInput2 = document.getElementById('value-input-min');

                // When the slider value changes, update the input and span
                slider.noUiSlider.on('update', function( values, handle ) {
                    if ( handle ) {
                        valueInput1.value = values[handle];
                    } else {
                        valueInput2.value = values[handle];
                    }
                });

            })
        </script>
        <?php 
            } elseif($id==4){?>
    <div class="panel panel-default panel-sidebar-1">
        <div class="panel-heading" style="padding:10px 15px !important; font-size:14px !important;"><h2><?php echo translate($this->Crud_model->get_type_name_by_id('widget',$id,'title')) ;?></h2></div>
        <?php 
			$this->db->order_by('number_of_view','desc');
			$this->db->limit(5);
			$this->db->where('status','approved');
			$this->db->where('shown','ok');
			$most_popular= $this->db->get('product')->result_array();
			foreach($most_popular as $row){
		?>
        <div class="panel-body" style="border-bottom: 1px solid #E0EDED !important;">
            <ul class="featured">
                <li>
                    <div class="featured-item">
                        <div class="featured-item-img">
                            <img src="<?php echo $this->Crud_model->product_image($row['product_id'],'thumb'); ?>" class="img-responsive"  alt="">
                        </div>
                        <div class="feature-item-info">
                            <h3 class="title">
                            	<a href="<?php echo $this->Crud_model->product_link($row['product_id'])?>">
                                	<?php echo $row['title']?>
                                </a>
                            </h3>
                            
                            <div class="price-wr">
                                <span class="price"><?php echo currency();?><?php echo $row['price'];?></span>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <?php } ?>
    </div>
    <?php
        }elseif($id==3){?>
        <div class="panel panel-default panel-sidebar-1">
        <div class="panel-heading" style="padding:10px 15px !important; font-size:14px !important;"><h2><?php echo translate($this->Crud_model->get_type_name_by_id('widget',$id,'title')) ;?></h2></div>
        <?php 
			$this->db->order_by('last_viewed','desc');
			$this->db->limit(5);
			$this->db->where('status','approved');
			$this->db->where('shown','ok');
			$recently= $this->db->get('product')->result_array();
			foreach($recently as $row){
		?>
        <div class="panel-body" style="border-bottom: 1px solid #E0EDED !important;">
            <ul class="featured">
                <li>
                    <div class="featured-item">
                        <div class="featured-item-img">
                            <img src="<?php echo $this->Crud_model->product_image($row['product_id'],'thumb'); ?>" class="img-responsive"  alt="">
                        </div>
                        <div class="feature-item-info">
                            <h3 class="title">
                            	<a href="<?php echo $this->Crud_model->product_link($row['product_id'])?>">
                                	<?php echo $row['title']?>
                                </a>
                            </h3>
                            
                            <div class="price-wr">
                                <span class="price"><?php echo currency($row['price']);?></span>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <?php } ?>
    </div>
        <?php } 
			else {
		?>		
    <div class="panel panel-default panel-sidebar-1">
        <div class="panel-heading" style="padding:10px 15px !important; font-size:14px !important;"><h2><?php echo $this->Crud_model->get_type_name_by_id('widget',$id,'title') ;?></h2></div>
        <div class="panel-body" style="border-bottom: 1px solid #E0EDED !important;">
            <?php $code= $this->Crud_model->get_type_name_by_id('widget',$id,'code') ;?>
            <?php echo str_replace('&gt;','>',str_replace('&lt;','<',$code))?>
        </div>
    </div>		
    <?php	
            }
         }
	   }
    ?>
</div>
<style>
.noUi-horizontal .noUi-handle{
    width: 6px;
    height: 33px;
    left: -4px;
    top: -11px;	
}
</style>