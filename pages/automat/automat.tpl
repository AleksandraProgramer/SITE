<!-- Automatization!-->
<div class="blog-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center">
						<h2><span> <?php echo LANG_INSTATSW1D8Q4; ?></span></h2>
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
						$taut = index::automatiz_all('automatization');
						while($saut = sql::fetchArray($taut)){
							echo '<p class="author__name">'. $saut['tema'] .'</p>';
							echo '<div class="myents">'. $saut['paragr'] .'</div>';
							echo '<div class="mycom">'. $saut['descs'] .'</div>';
							echo '<div class="reviews__footer reviews__footer--facebook">
								<div class="reviews__info">
									<div class="comments">'. LANG_DP6_MENU_GEN_ND2_QWERTY2_PS_NW71. $saut['data_reg'] .'</div>
								</div>
							</div>';
							}
					?>	
					
					
				<hr>	
					
				<?php 
						$tnews = index::news_all('newsgen');
						while($snew = sql::fetchArray($tnews)){
							echo '<a href="'.$snew['link'].'" target="_blank"><div class="comment-author">'. $snew['tema'] .'<br>';
						//	echo '<div id="myleft1"><cite class="fn"><img src="'. $snew['paragr'] .'" width="80" height="80"></cite></div>';
							echo '<div id="myright1s"><h4>'. $snew['descs'] .'</h4></div>';
							echo '<h5>'. $snew['data_reg'] .'</h5></div></a><br>';
							}
					?>
									
					</div>
					</div>
					<div class="icon"><img src="<?php echo html::dirs_html('templates/img/2.png'); ?>" width="40" height="45"></div>
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
<!-- end Automatization!-->