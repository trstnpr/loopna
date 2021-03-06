<div class="blog-content">

	<section class="section-banner">
		
		<div class="container">
			
			<h1 class="page-title">Blog</h1>

		</div>

	</section>

	<section class="section-blog">

		<div class="container">

			<div class="row">
			
				<div class="col-md-9">

					<div class="section-content">

						<div class="blog-wrap">

							<?php
		    				if($blogs->result()) {
		    					foreach($blogs->result() as $blog) {
		    						$blog_thumb = ($blog->featured_image != NULL) ? base_url($blog->featured_image) : base_url('build/images/placeholder.jpg');
		    				?>
							
							<div class="blog-item">
								<?php if($blog->featured_image != NULL) { ?>
								<div class="blog-thumb">
									<img class="img-responsive" src="<?php echo $blog_thumb; ?>" alt="<?php echo $blog->title; ?>" title="<?php echo $blog->title; ?>" />
								</div>
								<?php } ?>

								<div class="blog-body">

									<div class="blog-meta">
										<ul>
											<li>
												<i class="fa fa-calendar"></i> <?php echo date_proper($blog->created_at); ?>
											</li>
											<li>
												<i class="fa fa-user"></i> <?php echo ucwords($blog->author); ?>
											</li>
										</ul>
									</div>

									<h2 class="blog-title"><?php echo $blog->title; ?></h2>

									<div class="blog-excerpt">
										
										<p><?php echo $blog->excerpt; ?></p>

									</div>

									<a href="<?php echo base_url($blog->slug); ?>" class="btn btn-lg btn-primary btn-readmore">Read more</a>

								</div>

							</div>

							<?php
		    					}

		                        if (strlen($pagination)) {
		                            echo $pagination;
		                        }
		    				} else { ?>

		                    
		                    <h2 class="text-muted text-center">No Blog Posts Available</h2>

		                    <?php } ?>

						</div>

					</div>
					
				</div>
				
				<div class="col-md-3">

					<div class="aside">
						
						<?php include('partials/widget-aside-menu.php'); ?>

						<?php include('partials/widget-aside-download.php'); ?>

						<?php include('partials/widget-aside-blog.php'); ?>

					</div>

				</div>

			</div>

		</div>

	</section>

</div>