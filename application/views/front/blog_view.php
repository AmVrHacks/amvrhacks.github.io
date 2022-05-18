<div class="pg-opt">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2><?php echo translate('blog'); ?></h2>
			</div>
			<div class="col-md-6">
				<ol class="breadcrumb">
					<li><a href="#"><?php echo translate('home'); ?></a></li>
					<li><a href="#"><?php echo translate('blog'); ?></a></li>
					<li class="active"><?php echo translate($page_name)?></li>
				</ol>
			</div>
		</div>
	</div>
</div>
<section class="slice bg-white">
<div class="wp-section">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="post-item">
					<div class="post-meta-top">
						<div class="post-image">
							<?php
								if(file_exists('uploads/blog_image/blog_'.$blog_id.'.jpg')){
							?>
							<img src="<?php echo base_url()?>uploads/blog_image/blog_<?php echo $blog_id ?>
								.jpg" class="img-responsive" alt="">
                            <?php 
								}
							?>
						</div>
					</div>
					<?php
						foreach($blog_info as $row){
					?>
					<div class="post-content" id="abc">
						<h2 class="post-title"><a href="#" hidefocus="true" style="outline: none;"><?php echo $row['title']?>
						</a></h2>
						<span class="post-author"><?php echo translate('written_by'); ?> <a href="#" hidefocus="true" style="outline: none;"><?php echo $row['author']?>
						</a></span>
						<div class="post-tags">
							 <?php echo translate('posted_in'); ?> <a href="#" hidefocus="true" style="outline: none;">
								<?php echo $row['date']?>
							</a>
						</div>
						<div class="clearfix">
						</div>
						<div class="post-desc">
							<?php echo $row['description']?>
						</div>
					</div>
					<?php }?>
					<hr>
					<!-- Comments list section -->
					<div class="comment-list clearfix" id="comments" >
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
                                <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
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
                                    <div class="fb-comments col-md-12" data-href="<?php echo $this->Crud_model->blog_link($row['blog_id']); ?>" data-numposts="5"></div>
    								<style>
										.fb-comments > span, .fb-comments > span > iframe{
											width: 100% !important;
										}
									</style>
                                <?php
                                    }else if($comment_type == 'google'){
                                ?>
                                <script src="https://apis.google.com/js/plusone.js"></script>
									<div id="comments"></div>
								<script>
									$(document).ready(function(){
										var abc= $("#abc").width();
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
			<div class="col-md-3">
				<!-- SIDEBAR - BLOG -->
				<?php echo $this->Crud_model->get_sidebar_blog(); ?>
			</div>
		</div>
	</div>
</div>
</section>
