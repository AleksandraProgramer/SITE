<!-- news !-->
<?php if(auth::isDostups()){ ?>
	<div class="blog-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center">
						<h2><span> Новости</span></h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="blog-slider owl-preview-2">
					
					
					
					news
					
					
					
					
				</div>
			</div>
		</div>
	</div>
	<?php }else{
		echo $this->widget('w_404'); 
		}
	?>
	<!-- end news !-->