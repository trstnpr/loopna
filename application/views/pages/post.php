<div class="post-content">

	<section class="section-banner">
		
		<div class="container">
			
			<h1 class="page-title"><?php echo $page->title; ?></h1>

		</div>

	</section>

	<section class="section-page">

		<div class="container">

			<div class="row">
			
				<div class="col-md-9">

					<div class="section-content">

						<h2 class="section-title"><?php echo $page->title; ?></h2>

						<div class="page-meta">
							<ul>
								<li>
									<i class="fa fa-calendar"></i> <?php echo date_proper($page->created_at); ?>
								</li>
								<li>
									<i class="fa fa-user"></i> <?php echo ucwords($page->author); ?>
								</li>
							</ul>
						</div>

						<?php 
							if($page->featured_image != NULL) {
								$page_thumb = ($page->featured_image != NULL) ? base_url($page->featured_image) : base_url('build/images/placeholder.jpg');
						?>
						<div class="page-thumb">
							<img src ="<?php echo $page_thumb; ?>" class="img-responsive" alt="<?php echo $page->title; ?>" title="<?php echo $page->title; ?>" />
						</div>
						<?php } ?>

						<div class="content-wrap">
							
							<?php echo $page->content; ?>

							<hr/>

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