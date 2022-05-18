<div class="content container">
	<div class="row">
		<div class="col-md-12" style="margin:20px 0 0 0;">
        	<div class="col-md-6 pull-left">
            	<div class="row">
                    <a class="btn btn-base btn-icon btn-icon-left fa-caret-left pull-left" href="<?php echo base_url(); ?>">
                        <span><?php echo translate('back_to_home'); ?></span>
                    </a>
                </div>
            </div>
            <div class="col-md-6 pull-right">
            	<div class="row">
                    <a class="btn btn-base btn-icon btn-icon-right fa-repeat pull-right" href="<?php echo base_url(); ?>index.php/home/compare/clear">
                        <span><?php echo translate('reset_compare_list'); ?></span>
                    </a>
                </div>
            </div>
		</div>
		<?php
			$full = $this->Crud_model->compared_shower();
			foreach ($full as $row) {
		?>
        <form class="sky-form">
			<div class="col-md-12">
			<div class="row margin-bottom-5">
				<div class="col-md-12">
	                <center><h3><?php echo $this->db->get_where('category',array('category_id'=>$row['category']))->row()->name; ?></h3></center>
	                <table class="table" style="border:1px solid #E0EDED; border-radius:4px;" data-cat="<?php echo $row['category']; ?>">
	                    <tbody>
	                        <tr class="cat_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('name');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;"class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_name col-md-3" >
                                    <label style="width:100%;">
                                        <select data-placeholder="<?php echo translate('choose_a_product'); ?>" class="searcher chosen-select col-md-12" data-col="<?php echo $i; ?>" tabindex="2">
                                            <option value="0"><?php echo translate('choose_a_product'); ?></option>
                                            <?php
                                                $cat_pro = $this->db->get_where('product',array('category_id'=>$row['category'],'shown'=>'ok','status'=>'approved'))->result_array();
                                                foreach ($cat_pro as $ty) {
                                            ?>
                                            <option value="<?php echo $ty['product_id']; ?>" <?php if($ty['product_id'] == $p){ echo 'selected'; } ?> ><?php echo $ty['title']; ?></option>
                                            <?php
                                                }
                                            ?>
                                        </select>
                                    </label>
	                            </td>    
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_name col-md-3" >
                                    <label style="width:100%;">
                                        <select data-placeholder="<?php echo translate('choose_a_product'); ?>" class="searcher chosen-select col-md-12" data-col="<?php echo $i; ?>" tabindex="2">
                                            <option value="0"><?php echo translate('choose_a_product'); ?></option>
                                            <?php
                                                $cat_pro = $this->db->get_where('product',array('category_id'=>$row['category'],'shown'=>'ok','status'=>'approved'))->result_array();
                                                foreach ($cat_pro as $ty) {
                                            ?>
                                            <option value="<?php echo $ty['product_id']; ?>"><?php echo $ty['title']; ?></option>
                                            <?php
                                                }
                                            ?>
                                        </select>
                                    </label>
	                            </td>
	                            <?php
	                            	}
	                            ?>

	                        </tr>
	                        <tr class="cat_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('image');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_image col-md-3" >
	                            	<img src="<?php echo $this->Crud_model->product_image($p,'thumb'); ?>" width="100" />
	                            </td>    
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_image col-md-3" ></td>
	                            <?php
	                            	}
	                            ?>
	                        </tr>

	                        <tr class="cat_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('price');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_price col-md-3" >
	                            	<?php echo currency().$this->db->get_where('product',array('product_id'=>$p))->row()->price; ?>
	                            </td>    
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_price col-md-3" ></td>
	                            <?php
	                            	}
	                            ?>

	                        </tr>
	                        <tr class="cat_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('brand');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_brand col-md-3" >
	                            	<?php echo $this->Crud_model->get_type_name_by_id('brand', $this->db->get_where('product',array('product_id'=>$p))->row()->brand, 'name'); ?>
	                            </td>
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_brand col-md-3" ></td>
	                            <?php
	                            	}
	                            ?>

	                        </tr>

	                        <tr class="cat_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('sub_category');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_sub col-md-3" >
	                            	<?php echo $this->Crud_model->get_type_name_by_id('sub_category', $this->db->get_where('product',array('product_id'=>$p))->row()->sub_category_id, 'name'); ?>
	                            </td>
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_sub col-md-3" ></td>
	                            <?php
	                            	}
	                            ?>
	                        </tr>

	                        <tr class="cat_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('description');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_description col-md-3" >
	                            	<?php echo $this->db->get_where('product',array('product_id'=>$p))->row()->description; ?>
	                            </td>
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_description col-md-3" ></td>
	                            <?php
	                            	}
	                            ?>

	                        </tr>

	                        <tr class="add_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('address');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_address col-md-3" >
	                            	<?php echo $this->db->get_where('product',array('product_id'=>$p))->row()->address; ?>
	                            </td>
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_address col-md-3" ></td>
	                            <?php
	                            	}
	                            ?>

	                        </tr>

	                        <tr class="map_<?php echo $row['category']; ?>">
	                            <th style="border-right: 1px solid #E0EDED;"><?php echo translate('map');?></th>  
	                            <?php
	                            	$i = 0;
	                            	$products = $row['products'];
	                            	foreach ($products as $p) {
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_map col-md-3" >
	                            	<?php $langlat = $this->db->get_where('product',array('product_id'=>$p))->row()->langlat; ?>
                                    <div class="btn btn-xs btn-base btn-icon fa-map-marker pull-right">
                                        <span onclick="get_distance('<?php echo $p; ?>');"><?php echo translate('distance');?></span>
                                    </div>
                                    <div style="width:100%; height:300px;" class="mapd" data-loc="<?php echo $langlat; ?>"></div>
	                            </td>
	                            <?php
	                            	}
	                            	while($i < 3){
	                            		$i++;
	                            ?>
	                            <td style="border-right: 1px solid #E0EDED;" class="colm_<?php echo $row['category']; ?>_<?php echo $i; ?>_map col-md-3" ></td>
	                            <?php
	                            	}
	                            ?>
	                        </tr>
	                    </tbody>
	                </table>
	            </div>
			</div>
		</div>
        </form>
		<?php
			}
		?>
		
	</div><!--/end row-->
</div><!--/end container-->    
<!--=== End Content Part ===-->
<script>
	$(document).ready(function(){
		$('.chosen-select').chosen();
	});

	$('.searcher').on('change',function(){
		var cat = $(this).closest('.table').data('cat');
		var col = $(this).data('col');
		var pro = $(this).val();
		$.getJSON("<?php echo base_url(); ?>index.php/home/compare/get_detail/"+pro,
			function(result){
		        $.each(result, function(i, field){
		            $('.colm_'+cat+'_'+col+'_'+i).html(field);
					if(i == 'map'){
						var here_map = $('.colm_'+cat+'_'+col+'_'+i).find('.mapd').get(0);
						initialize(here_map);
					}
		        }
	        );
	    });
	});
	
</script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyDXqjQiuiPeR0y1T4lQqaMwYSkBjMxtfM8"></script>
<script>
	
	$(document).ready(function(e) {
        $('.mapd').each(function() {
            initialize(this);
        });
    });
	
	
	function initialize(elem) {
	  //var myLatlng = new google.maps.LatLng<?php echo $this->Crud_model->get_field('general_settings',63,'value')?>;
	  var pos = $(elem).data('loc');
	  pos = pos.replace('(','');
	  pos = pos.replace(')','');
	  pos = pos.split(',');
	  var myLatlng = new google.maps.LatLng(pos[0],pos[1]);
	  var mapOptions = {
		zoom: 12,
		scrollwheel: false,
		center: myLatlng,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	  }
	  map = new google.maps.Map(elem, mapOptions);
	
	  var marker = new google.maps.Marker({
		  position: myLatlng,
		  map: map,
		  animation: google.maps.Animation.DROP
	  });
	}
	
</script>
<?php
	echo form_open(base_url() . 'index.php/home/compare/add', array(
		'method' => 'post',
		'id' => 'plistform',
        'enctype' => 'multipart/form-data'
	));
?>
<input type="hidden" name="category" id="categoryaa">
<input type="hidden" name="sub_category" id="sub_categoryaa">
<input type="hidden" name="featured" id="featuredaa">
<input type="hidden" name="range" id="rangeaa">
<input type="hidden" name="vendor" id="vendora">
</form>
<style>
.sub_cat{
padding-left:30px !important;
}
</style>
