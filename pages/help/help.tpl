<!-- help !-->
<?php if(auth::isDostups()){ ?>
	<div class="blog-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center">
						<h2><span> Помощь</span></h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="blog-slider owl-preview-2">
					
					
					
					help
					
					
					
					
				</div>
			</div>
		</div>
	</div>
	
	<?php }else{
		echo $this->widget('w_404'); 
		}
	?>
<!-- help !-->