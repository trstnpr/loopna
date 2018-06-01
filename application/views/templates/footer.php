			<div class="modal fade" id="under_construction" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			    <div class="modal-dialog" role="document">
			    	<div class="alert alert-danger">
		                This site is Under Contruction.
		            </div>
			    </div>
			</div>

		</main>

		<footer class="footer">

			<div class="footer-top">

				<div class="container">

					<div class="footer-content">

						<div class="row">

							<div class="col-md-3">

								<div class="footer-menu">
									
									<h3 class="title-header">INFORMATION</h3>

									<ul class="site-menu">
										<li><a href="<?php echo base_url(); ?>">Home</a></li>
										<li><a href="<?php echo base_url('blog'); ?>">Blog</a></li>
			                            <li><a href="<?php echo base_url('about-us'); ?>">About Us</a></li>
			                            <li><a href="<?php echo base_url('privacy-policy'); ?>">Privacy Policy</a></li>
			                            <li><a href="<?php echo base_url('terms-and-conditions'); ?>">Terms and Conditions</a></li>
			                            <li><a href="<?php echo base_url('contact-us'); ?>">Contact Us</a></li>
									</ul>

								</div>

							</div>

							<div class="col-md-4">

								<div class="footer-contact">

									<h3 class="title-header">Contact Us</h3>

									<ul>
										<li>ADDRESS</li>
										<li><?php echo strtoupper(the_config('full_address')); ?></li>
									</ul>

									<ul>
										<li>PHONE</li>
										<li class="noselect"><?php echo the_config('phone_number'); ?></li>
									</ul>

									<ul>
										<li>EMAIL</li>
										<li class="noselect"><?php echo the_config('admin_email'); ?></li>
									</ul>

								</div>

							</div>

							<div class="col-md-5">

								<div class="footer-social">

									<h3 class="title-header">Follow Us</h3>

									<div class="social-wrap">
										
										<div class="row">
											
											<div class="col-xs-6">
												
												<div class="social-list">

													<a href="<?php echo the_config('facebook_link'); ?>" target="_blank"><img src="<?php echo base_url('build/images/social/icon-facebook.png'); ?>"> Facebook</a>

													<a href="<?php echo the_config('twitter_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-twitter.png'); ?>"> Twitter</a>

													<a href="<?php echo the_config('googleplus_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-google.png'); ?>"> Google+</a>

													<a href="<?php echo the_config('instagram_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-instagram.png'); ?>"> Instagram</a>

													<a href="<?php echo the_config('youtube_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-youtube.png'); ?>"> Youtube</a>

												</div>

											</div>

											<div class="col-xs-6">
												
												<div class="social-list">

													<a href="<?php echo the_config('dailymotion_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-dailymotion.png'); ?>"> Dailymotion</a>

													<a href="<?php echo the_config('linkedin_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-linkedin.png'); ?>"> Linkedin</a>

													<a href="<?php echo the_config('pinterest_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-pinterest.png'); ?>"> Pinterest</a>

													<a href="<?php echo the_config('digg_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-digg.png'); ?>"> Digg</a>

													<a href="<?php echo the_config('reddit_link'); ?>" target="_blank"> <img src="<?php echo base_url('build/images/social/icon-reddit.png'); ?>"> Reddit</a>

												</div>

											</div>

										</div>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>
				
			</div>

			<div class="footer-bottom">
				
				<div class="container">

					<p class="copyright">© <?php echo date('Y').' '.the_config('site_name'); ?>. All rights reserved.</p>

				</div>

			</div>

		</footer>

        <script type="text/javascript" src="<?php echo base_url('build/js/master-scripts.js?v=1.').strtotime('now'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('build/js/scripts.js?v=1.').strtotime('now'); ?>"></script>

    </body>

</html>