<div class="page-content">

	<section class="section-banner">
		
		<div class="container">
			
			<h1 class="page-title"><?php echo $page->title; ?></h1>

		</div>

	</section>

	<section class="section-page">

		<div class="container">

			<div class="row">
			
				<div class="col-sm-8 col-sm-push-4 col-lg-9 col-lg-push-3">

					<div class="section-content">

						<h2 class="section-title"><?php echo $page->title; ?></h2>

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
				
				<div class="col-sm-4 col-sm-pull-8 col-lg-3 col-lg-pull-9">

					<?php if(current_url() == base_url('watch-movies-while-on-travel')) { ?>

					<div class="aside">
						
						<?php include('partials/widget-aside-mob.php'); ?>

					</div>

					<?php } else { ?>

					<div class="aside">
						
						<?php include('partials/widget-aside-menu.php'); ?>

						<?php include('partials/widget-aside-download.php'); ?>

						<?php include('partials/widget-aside-blog.php'); ?>

					</div>

					<?php } ?>

				</div>

			</div>

		</div>

	</section>

</div>