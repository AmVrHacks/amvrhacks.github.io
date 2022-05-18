<!--------------blog_sidebar.php--------------->
<div class="sidebar">
					<!-- Categories -->
					<div class="section-title-wr">
						<h3 class="section-title left"><span><?php echo translate('blog_categories')?></span></h3>
					</div>
					<div class="widget">
						<ul class="categories highlight">
							<li>
                                <a href="<?php echo base_url(); ?>index.php/home/blog/all">
                                     <?php echo translate('all_blogs'); ?> ( <?php echo $this->db->get_where('blog')->num_rows();?> )
                                </a>
                            </li>
							<?php
                                $blog_category_data=$this->db->get('blog_category')->result_array();
                                foreach($blog_category_data as $rrow)
                                     {		  
                            ?>
							<li>
                                <a href="<?php echo base_url(); ?>index.php/home/blog/<?php echo $rrow['blog_category_id']; ?>">
                                     <?php echo $rrow['name']; ?> ( <?php echo $this->db->get_where('blog',array('blog_category'=>$rrow['blog_category_id']))->num_rows();?> )
                                </a>
                            </li>
                           <?php }?>
						</ul>
                        
					</div>
					<!-- LATEST COMMENTS -->
					<div class="section-title-wr">
						<h3 class="section-title left"><span><?php echo translate('most_viewed')?></span></h3>
					</div>
					<div class="widget-container widget-recent widget-recent-boxed widget-recent-comments">
						<div class="inner">
							<ul>
                            	<?php 
									$this->db->order_by('number_of_view','desc');
									$this->db->limit(5);
									$data = $this->db->get('blog')->result_array();
									foreach($data as $row){
								?>
								<li class="clearfix">
								<a href="#" class="post-thumb" hidefocus="true">
								<?php
                                     if(file_exists('uploads/blog_image/blog_'.$row['blog_id'].'.jpg')){
                                ?>
                                    <img src="<?php echo base_url()?>uploads/blog_image/blog_<?php echo $row['blog_id']?>.jpg" class="img-responsive"  alt="">
                                <?php 
                                    }
                                ?>
								</a>
								<span class="comment-author"><a href="<?php echo $this->Crud_model->blog_link($row['blog_id']); ?>" hidefocus="true"><?php echo limit_chars($row['title'],30);?></a> </span>
								<span class="comment-entry"><?php echo limit_chars($row['summery'],70);?></span>
								</li>
								<?php 
									}
								?>
							</ul>
						</div>
					</div>
					<!-- LATEST COMMENTS -->
					<div class="section-title-wr">
						<h3 class="section-title left"><span><?php echo translate('latest_post')?></span></h3>
					</div>
					<div class="widget-container widget-recent widget-recent-boxed widget-recent-comments">
						<div class="inner">
							<ul>
                            	<?php 
									$this->db->order_by('blog_id','desc');
									$this->db->limit(5);
									$data = $this->db->get('blog')->result_array();
									foreach($data as $row){
								?>
								<li class="clearfix">
								<a href="<?php echo $this->Crud_model->blog_link($row['blog_id']); ?>" class="post-thumb" hidefocus="true">
								<?php
                                     if(file_exists('uploads/blog_image/blog_'.$row['blog_id'].'.jpg')){
                                ?>
                                    <img src="<?php echo base_url()?>uploads/blog_image/blog_<?php echo $row['blog_id']?>.jpg" class="img-responsive"  alt="">
                                <?php 
                                    }
                                ?>
								</a>
                                <span class="comment-author">
                                	<a href="<?php echo $this->Crud_model->blog_link($row['blog_id']); ?>" hidefocus="true"><?php echo limit_chars($row['title'],36);?></a> 
                                </span>
                                <span class="comment-author">
                                	<a href="#" hidefocus="true"><?php echo $row['author']?>
                                    </a>
                                </span>
								
								<span class="comment-entry"><?php echo limit_chars($row['summery'],70);?></span>
								</li>
								<?php 
									}
								?>
							</ul>
						</div>
					</div>
				</div>