<?php
	$this->load->helper('date');	
	$datestring = " %d %m %Y  ";
	$time = time();
	$date=mdate($datestring, $time);
	
?>
<!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo translate('product_details');?></h2>
            </div>
            <div class="col-md-6">
            </div>
        </div>
    </div>
</div> 
<section class="slice bg-white">
    <div class="wp-section shop">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                	<?php
						foreach($product_data as $row)
						{
                            $prodect_id =   $row['product_id'];
                            $category   =   $row['category_id'];
					?>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="col col-md-12 maui">
                                <div class="mag-eg-el-wrap img-thumbnail">
                                    <div class="proportion">
                                        <div mag-thumb="outer" class="mag-eg-el">
                                            <img src="<?php echo $this->Crud_model->product_image($row['product_id']); ?>" />
                                        </div>
                                        <div class="filler"></div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="product-gallery col-md-12">
                                <div class="owl-carousel owl-carousel-3 thumbnail-images style-2">
                                    <?php
                                    	$main = $this->Crud_model->product_image($row['product_id'],'','all');
                                    	$thumb = $this->Crud_model->product_image($row['product_id'],'thumb','all');
										foreach($main as $i=>$row2){
									?>
                                    <div class="item">
                                        <a href="<?php echo $row2; ?>" class="theater" rel="group">
                                            <img src="<?php echo $thumb[$i]; ?>" alt="">
                                        </a>
                                    </div>
                                    <?php
										}
									?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                        
                            <div class="mag-eg-el-wrap zoom_show img-thumbnail" style="height:auto;width:100%; display:none;">
                              <div style="height: auto; width:100%;" class="zoom_show_div" >
                                <div mag-zoom="outer" class="mag-eg-el" style="float: right;position:relative;overflow:hidden; background:transparent">
                                  <img src="<?php echo $this->Crud_model->product_image($row['product_id']); ?>" height="auto" />
                                </div>
                              </div>
                            </div>
                            
                            <div class="product-info">
                            
                                <h3 class="product-title"><?php echo $row['title'];?></h3>
                                <span class="clearfix"></span> 
                                <div id="share"></div>
                                <p>
                                <?php echo $row['description'];?>
                                </p>
                                <hr>
                                <div class="product-price">
                                    <span class="price"><?php echo currency();?><?php echo $row['price'];?></span>
                                </div>
                                <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-3 col-sm-6">
                                        <?php
                                            if($this->Crud_model->is_wished($row['product_id']) == 'no'){
                                        ?>
                                        
                                        <button class="btn btn-mint btn-xs btn-icon fa-thumbs-up wish_it" data-pid='<?php echo $row['product_id']; ?>'>
                                            <span><?php echo translate('favorite');?></span>
                                        </button>
                                        <?php } else { ?>
                                        <span class="btn btn-mint btn-xs btn-icon fa-thumbs-up wished_it">
                                            <span><?php echo translate('favoured');?></span>
                                        </span>
                                        <?php } ?>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <span name="submit" class="btn btn-violet btn-xs btn-icon fa-random btn_compare" data-pid="<?php echo $row['product_id']; ?>">
                                            <span><?php echo translate('compare');?></span>
                                        </span>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                    	<div class="btn btn-xs btn-alt btn-icon fa-map-marker pull-right">
                                            <span class="openactiveModal-1 manualLabel" data-ajax="<?php echo base_url(); ?>index.php/home/get_my_distance/<?php echo $row['product_id']; ?>"><?php echo translate('distance');?></span>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <span name="submit" class="btn btn-dark-blue btn-xs btn-icon fa-envelope openactiveModal-contact manualLabel" data-ajax="<?php echo base_url(); ?>index.php/home/contact_author/<?php echo $row['product_id']; ?>">
                                            <span><?php echo translate('contact_author');?></span>
                                        </span>
                                	</div>
                                </div>
                                </div>
                                <hr>
                                <div class="product-short-info">
                                    <p><i class="fa fa-heart"></i><strong><?php echo translate('model');?></strong>: <?php echo $row['model'];?></p>
                                    <p><i class="fa fa-inbox"></i><strong><?php echo translate('category');?></strong>: <?php echo $this->Crud_model->get_type_name_by_id('category',$row['category_id']);?></p>
                                    <p><i class="fa fa-check"></i><strong><?php echo translate('condition');?></strong>: <?php echo $row['condition'];?></p>
                                    <p><i class="fa fa-tag"></i><strong><?php echo translate('tags');?></strong>: <?php echo $row['tag'];?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
						$('.maui').on('mouseenter',function(){
							$('.zoom_show_div').height($('.product-info').height()-32);
							$('.zoom_show').show();
							$('.product-info').hide();
						});
						
						$('.maui').on('mouseleave',function(){
							$('.zoom_show').hide();
							$('.product-info').show();
						});
					
					</script>
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Tabs -->
                            <div class="tabs-framed mt-20">
                                <ul class="tabs clearfix">
                                    <li class="active"><a href="<?php echo base_url(); ?>template/front/#tab-1" data-toggle="tab"><?php echo translate('product_details');?></a></li>
                                    <?php
                                    	$additional = json_decode($row['additional'],true);
										if(!empty($additional)){
									?>
                                    <li><a href="<?php echo base_url(); ?>template/front/#tab-2" data-toggle="tab"><?php echo translate('specifications');?></a></li>
                                    <?php
										}
									?>
                                    <li><a href="<?php echo base_url(); ?>template/front/#tab-3" data-toggle="tab"><?php echo translate('reviews');?></a></li>
                                    
                                </ul>
    
                                <div class="tab-content" id="abc">
    
                                    <!-- Tab 1 -->
                                    <div class="tab-pane fade in active" id="tab-1">
                                        <div class="tab-body">
                                            <div class="section-title-wr">
                                                <h3 class="section-title left"><?php echo translate('product_description');?></h3>
                                            </div>
                                            <p>
                                                <?php echo $row['description'];?>
                                            </p>
                                        </div>
                                    </div>
    
                                    <?php
										if(!empty($additional)){
									?>
                                    <!-- Tab 2 -->
                                    <div class="tab-pane fade" id="tab-2">
                                        <div class="tab-body">
                                            <div class="section-title-wr">
                                                <h3 class="section-title left"><?php echo translate('additional_details');?></h3>
                                            </div>
                                            <table class="table table-bordered table-striped table-hover table-responsive">
                                                <tbody>
                                                	<?php
                                                    	foreach($additional as $row1){
													?>
                                                    <tr>
                                                        <td><strong><?php echo $row1['title']; ?></strong></td>
                                                        <td><?php echo $row1['details']; ?></td>
                                                    </tr>
                                                    <?php
														}
													?>
                                                </tbody>
                                            </table>
                                            
                                        </div>
                                    </div>
    								<?php
										}
									?>
                                    <!-- Tab 3 -->
                                    <div class="tab-pane fade" id="tab-3">
                                        <div class="tab-body col-md-12">
											<div class="comment-list clearfix" id="comments">
                                                <h2><?php echo translate('readers_comment'); ?></h2>
                                                <?php
                                                    $discus_id = $this->db->get_where('general_settings',array('type'=>'discus_id'))->row()->value;
                                                    $fb_id = $this->db->get_where('general_settings',array('type'=>'fb_comment_api'))->row()->value;
                                                    $comment_type = $this->db->get_where('general_settings',array('type'=>'comment_type'))->row()->value;
                                                ?>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <?php if($comment_type == 'disqus'){ ?>
                                                        <div id="disqus_thread"></div>
                                                        <script type="text/javascript">
                                                            /* * * CONFIGURATION VARIABLES * * */
                                                            var disqus_shortname = '<?php echo $discus_id; ?>';
                                                            
                                                            /* * * DON'T EDIT BELOW THIS LINE * * */
                                                            (function() {
                                                                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                                                                dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                                                                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                                                            })();
                                                        </script>
                                                        <script type="text/javascript">
                                                            /* * * CONFIGURATION VARIABLES * * */
                                                                var disqus_shortname = '<?php echo $discus_id; ?>';
                                                            
                                                            /* * * DON'T EDIT BELOW THIS LINE * * */
                                                            (function () {
                                                                var s = document.createElement('script'); s.async = true;
                                                                s.type = 'text/javascript';
                                                                s.src = '//' + disqus_shortname + '.disqus.com/count.js';
                                                                (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
                                                            }());
                                                        </script>
                                                        <noscript><?php echo translate('please_enable_javaScript_to_view_the');?> <a href="https://disqus.com/?ref_noscript" rel="nofollow"><?php echo translate('comments_powered_by_disqus');?></a></noscript>
                                                        <?php
                                                            }
                                                            else if($comment_type == 'facebook'){
                                                        ?>
                            
                                                            <div id="fb-root"></div>
                                                            <script>(function(d, s, id) {
                                                              var js, fjs = d.getElementsByTagName(s)[0];
                                                              if (d.getElementById(id)) return;
                                                              js = d.createElement(s); js.id = id;
                                                              js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4&appId=<?php echo $fb_id; ?>";
                                                              fjs.parentNode.insertBefore(js, fjs);
                                                            }(document, 'script', 'facebook-jssdk'));</script>
                                                            <div class="fb-comments" data-href="<?php echo $this->Crud_model->product_link($row['product_id']); ?>" data-numposts="5"></div>
                            
                                                        <?php
                                                            }else if($comment_type == 'google'){
                                                        ?>
                                                        <script src="https://apis.google.com/js/plusone.js">
                                                        </script>
                                                            <div id="comments"></div>
                                                        <script>
														$(document).ready(function(){
															var abc= Number($("#abc").width()-20);
															gapi.comments.render('comments', {
																href: window.location,
																width:abc,
																first_party_property: 'BLOGGER',
																view_type: 'FILTERED_POSTMOD'
															});
														});
                                                        </script>
                                                        <?php
                                                            }
                                                        ?>
                                                    </div>
                        						</div>
											</div>
    
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
    
                        </div>
                    </div>
                    <?php
						}
					?>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 pull-right"><div class="panel panel-default panel-sidebar-1">
                    <div class="panel-heading" style="padding:10px 15px !important; font-size:14px !important;"><h2><?php echo translate('related_products') ;?></h2></div>
                        <?php 
                            $this->db->limit(5);
                            $most_popular= $this->db->get_where('product',array('category_id'=>$category,'status' => 'approved','shown' => 'ok'))->result_array();
                            $i = 0;
                            foreach($most_popular as $row){
                                $i++;
                                if($i <= 5){
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
                        <?php 
                                }
                            } 
                            $pid = $row['product_id'];
                        ?>
                    </div>                    
                    <?php echo $this->Crud_model->get_sidebar(12); ?>
                </div>

            </div>
        </div>
    </div>
</section>
<img src="<?php echo  $this->Crud_model->product_image($prodect_id); ?>" id="full_img" style="width:10px; visibility:hidden;">
<script>
	var valid_email = '<?php echo translate('must_be_a_valid_email_address'); ?>';
	var required = '<?php echo translate('required'); ?>';
	var sent = '<?php echo translate('message_sent!'); ?>';
	var required = '<?php echo translate('required'); ?>';
	var base_url = '<?php echo base_url(); ?>';


	$(document).ready(function() {
		$('#share').share({
			networks: ['facebook','googleplus','twitter','linkedin','tumblr','in1','stumbleupon','digg'],
			theme: 'square'
		});
        <?php /* ?>var oheight = '<?php echo $height; ?>';<?php */ ?>
        var owidth = $('#full_img').width();
        var oheight = $('#full_img').height();
        //alert(owidth+'-'+oheight);
        var width = $('.maui').width();
        <?php /* ?>var ratio = width/<?php echo $width; ?>;<?php */ ?>
        var ratio = width/owidth;
        var n_height = oheight*ratio;
        $('.filler').css('height',n_height+'px');
	});

	(function () {
		var $host;
		$host = $('[mag-thumb="outer"]');
		$host.mag({
		  mode: 'outer',
  		  ratio: 1 / 1
		});
	})();

</script>
