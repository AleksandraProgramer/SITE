<!-- Strategii!-->
<div class="blog-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center">
						<h2><span><?php echo LANG_INSTATSW1D3Q3; ?></span></h2>
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
						$tstr6_1 = index::rstrateg_alls('strategii');
						while($sk6_1 = sql::fetchArray($tstr6_1)){
							echo '<p class="author__name">'. $sk6_1['tema'] .'</p>';
							echo '<div class="myents">'. $sk6_1['descs'] .'</div>';
							echo '<div class="mycom">'. $sk6_1['paragr'] .'</div>';
							echo '<div class="reviews__footer reviews__footer--facebook">
								<div class="reviews__info">
									<div class="comments">'. LANG_DP6_MENU_GEN_ND2_QWERTY2_PS_NW71. $sk6_1['data_reg'] .'</div>
								</div>
							</div>';
							}
						?>
</div>
					</div>
					<div class="icon"><img src="<?php echo html::dirs_html('templates/img/2.png'); ?>" width="40" height="45"></div>
			</div>
			
<div class="brcss">			
	                      
    <?php 
				$tstr6_1A = index::rbroker_all('strategii_table');
					while($sk6_1A = sql::fetchArray($tstr6_1A)){
						echo '<table class="list"><tr><td width="200"><img width="200" heiht="200" src="'. $sk6_1A['broker'] .'"></td>';
						echo '<td>'. $sk6_1A['min_dep'] .'</td>';
						echo '<td>'. $sk6_1A['min_stav'] .'</td></tr>';
						echo '<tr><td colspan="4"><a class="btn_link" href="'.$sk6_1A['bonus'].'" target="_blank">'. LANG_DP6_MENU_GEN_CONTENT5_QWERTY4_PS_NW71 .'</a></td></tr></table>';
					}
			?>         		
</div>

<div class="brcss1">			
	                      
    <?php 
				$tstr6_1AB = index::rbroker_all('strategii_table');
					while($sk6_1AB = sql::fetchArray($tstr6_1AB)){
						echo '<table class="list1"><tr><td><img width="200" heiht="200" src="'. $sk6_1AB['broker'] .'"></td></tr>';
						echo '<tr><td>'. $sk6_1AB['min_dep'] .'</td></tr>';
						echo '<tr><td>'. $sk6_1AB['min_stav'] .'</td></tr>';
						echo '<tr><td colspan="4"><a class="btn_link" href="'.$sk6_1AB['bonus'].'" target="_blank">'. LANG_DP6_MENU_GEN_CONTENT5_QWERTY4_PS_NW71 .'</a></td></tr></table>';
					}
			?>         		
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
<!-- end Strategi!-->