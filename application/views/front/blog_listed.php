<div class="row">
  <div class="col-md-12">
	<?php
           foreach ($blog as $row){
    ?>
    <div class="col-md-4">
        <!-- Standard image post example -->
        <div class="post-item style2 no-padding">
            <div class="post-content-wr" style="border: 1px solid #e0eded;padding:5px 5px 0 5px !important;border-radius:4px !important;">
                <div class="post-meta-top">
                    <div class="post-image" style="height:200px; overflow:hidden">
                        <a href="#">
                        	<?php
         						if(file_exists('uploads/blog_image/blog_'.$row['blog_id'].'.jpg')){
    						?>
        						<img src="<?php echo base_url()?>uploads/blog_image/blog_<?php echo $row['blog_id']?>.jpg" class="img-responsive"  alt="">
							<?php 
                            	}
                        	?>
                        </a>
                    </div>
                    <h4 class="post-title">
                        <a href="<?php echo $this->Crud_model->blog_link($row['blog_id']); ?>">
                             <?php echo limit_chars($row['title'],20);?>
                        </a>
                    </h4>
                </div>
                <div class="post-content clearfix">
                    <div class="post-tags"><?php echo translate('category')?><?php echo $this->Crud_model->get_type_name_by_id('blog_category',$row['blog_category'],'name');?></div>
                    
                    
                    <div class="post-desc" style="max-height: 150px;min-height: 150px;overflow: hidden;">
                        <p>
							<?php
                                echo limit_chars($row['summery'],210);
                            ?>
                        </p>
                    </div>
                </div>
                <div class="post-meta-bot clearfix">
                    <span class="post-author">
                    	<div class="post-comments">
                    	<i class="fa fa-calendar"></i>
                        	<?php echo date('F',strtotime($row['date']));?>,
							<?php echo date('d',strtotime($row['date']));?>
                    </div>
                    </span>
                    <p>
            				<a href="<?php echo $this->Crud_model->blog_link($row['blog_id']); ?>" class="btn btn-xs btn-base"><?php echo translate('read_more')?></a>
        			</p>
                </div>
            </div>
        </div>
    </div>
 <?php }?>
 </div>
</div>


<div class="text-center" style="display:block;" id="pagenation_set_links" >
    <?php echo $this->ajax_pagination->create_links(); ?>
</div><!--/end pagination-->