<!-- Lessence!-->
<div class="blog-area section-padding">
		<div class="container">
		
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center">
						<h2><span> <?php echo LANG_INSTATSW1D3Q1; ?></span></h2>
					</div>
				</div>
			</div>
			<div class="row">

<div id="myleft">
					<?php 
						$taut = index::baners_all('baners');
						while($saut = sql::fetchArray($taut)){
						echo '<a href="'.$saut['paragr'].'" target="_blank"><div class="mydiv1"><div class="players" id="player1-container">';
						echo '<div class="media-wrapper">';
						echo '<img alt="appetizer 01" src="'. $saut['descs'] .'">';
							echo '<h4>'. $saut['texts'] .'</h4>';
							echo '<h5>'. $saut['data_reg'] .'</h5>';
						echo '</div></div></div></a><br>';
							}
					?>	
</div>
<div id="myright">
<div class="reviews__block facebook">
			<div class="reviews__head">
					<div class="author">
			<div class="author__info">	
				<?php 
						$tstr6_1 = index::leess_all('cms_less');
						while($sk6_1 = sql::fetchArray($tstr6_1)){
						echo '';
							echo '<p class="author__name">'. $sk6_1['tema'] .'</p>';
							echo '<div class="myents">'. $sk6_1['descs'] .'</div>';
							echo '<div class="mycom">'. $sk6_1['paragr'] .'</div>';
							echo '<div class="reviews__footer reviews__footer--facebook">
								<div class="reviews__info">
									<div class="comments">'. LANG_DP6_MENU_GEN_ND2_QWERTY2_PS_NW71. $sk6_1['data_reg'] .'</div>
								</div>
							</div>	';
							}
						?>	

			</div>
					</div>
					<div class="icon"><img src="<?php echo html::dirs_html('templates/img/3.png'); ?>" width="40" height="45"></div>
			</div>
					
		
		<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center">
		
		<div class="players" id="player1-container1">
				<div class="media-wrapper1">
				
				
				<?php 
					$tstr6_1 = index::video_all('video');
						while($sk6_1 = sql::fetchArray($tstr6_1)){
							echo '<video class="m1" id="player1" width="200" height="160" style="max-width:100%;" poster="'. $sk6_1['imges'] .'" preload="none" controls playsinline webkit-playsinline>';
							echo '<source src="'. $sk6_1['link'] .'" type="video/mp4">';
							echo '<track srclang="en" kind="subtitles" src="mediaelement.vtt">';
							echo '<track srclang="en" kind="chapters" src="chapters.vtt">';
							echo '</video>';
							}
				?>	
				
				
		</div>
		</div> 
	
	
	</div>	
		
</div>	
  </div>
</div>	
		
		
		
		
							<div class="reviews__footer reviews__footer--facebook">
								<div class="reviews__info">
									<div class="comments">&nbsp;</div>
								</div>
							</div>	
			</div>
		</div>
	</div>	
  </div>
</div>
	<!-- end Lessence!-->