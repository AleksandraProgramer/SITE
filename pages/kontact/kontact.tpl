<!-- Kontact page !-->
<div class="blog-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center">
	<div class="blog-slider owl-preview-2">
		<div class="row">
			<div class="col-md-6">
			<div class="section-heading">
			<div class="contacts_hed"><?php echo LANG_DP6_MENU_GEN_ND2_W5_77AAB58A9_PSD; ?></div></div>
			<?php
						$txtw = index::about_view('abouts', '1');
						while($kntsw = sql::fetchArray($txtw)){
						echo '<div class="about-us-info" align="justify">' . $kntsw['descs'] .'</div>';
						}
			?>
			</div>
<div class="col-md-6 hidden-xs">			
	<div id="contact">
            <div id="top">
                <h1><?php echo LANG_INSTATSW1D8_WWW1Q1; ?></h1>
            </div>
            <div id="center">
        <div id="contact_form">

		
	
				<hr>
				<?php
					$datakont = index::kontakt_view('kontactgen', '1');
						while($knt = sql::fetchArray($datakont)){
							echo '<p>'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB47B2_D2 . ' '. $knt['descs']. '</p>';
							echo '<p>'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B3_D3. ' '. $knt['tel']. '</p>';
							echo '<p>'. LANG_DP6_MENU_GEN_ND2_W5_N7AAA66B4_D4. ' '. $knt['email']. '</p>'; 
							echo '<p>'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB47B5_D5 .' '. $knt['grrab']. '</p>'; 
					 }
					?>
					<br>
					<hr>
					<?php 
							$txt = index::kontakt_view('kontactgen', '1');
							while($knts = sql::fetchArray($txt)){
								echo '<p><b>'. $_SERVER['SERVER_NAME'].  ' &copy ' .LANG_DP6_MENU_GEN_ND2_W5_N7AAA66B1_D1. '<br></b>'.$knts['mcontact'].'</p>';
							}
						?>
						<hr>
						<div class="contacts_soc"></div>
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
</div>
<!-- end Kontact page!-->