<!-- index page!-->		
<?php if(!empty($myau) or auth::isDostups()){ ?>		
		
	<div main bg-white>
			<div toolbar bg-teal seamed>
				<span ripple left panel-target="panel1">
					<span icon="menu" class="bgts"></span>
				</span>
				<header title><?php echo LANG_DP10_LAN1_ER32T0U76; ?></header>
			</div>
			<div content>

<main>
  
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAA62; ?></label>
    
  <input id="tab2" type="radio" name="tabs">
  <label for="tab2"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB43; ?></label>
    
  <input id="tab3" type="radio" name="tabs">
  <label for="tab3"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB54; ?></label>
    
  <input id="tab4" type="radio" name="tabs">
  <label for="tab4"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAA55; ?></label>
    
  <section id="content1">
			<?php
			
			
			// удаление видео
			$ext = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext[1])){
	$ext1 = explode('=', $ext[1]);

		    if(substr($ext[1], 0, strlen($ext[1]) - strlen(substr($ext[1], strrpos($ext[1], '=')+1))-1) == 'dlv'){ 
			if(!empty($ext1[1])){
			
				$dsx = index::del_video('video', $ext1[1]);
					if(!empty($dsx)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?index@#close"; }, 5 * 1000);</script>';
				}
		}
			
		// удаление новостей
			$ext2 = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext[1])){
	$ext3 = explode('=', $ext[1]);

		    if(substr($ext2[1], 0, strlen($ext2[1]) - strlen(substr($ext2[1], strrpos($ext2[1], '=')+1))-1) == 'dln'){ 
			if(!empty($ext3[1])){
			
				$dsx1 = index::del_news('newsgen', $ext3[1]);
					if(!empty($dsx1)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?index@#close"; }, 5 * 1000);</script>';
				}
		}
			
				// sliders	1
				if(!empty($_POST['sub1'])){
					if(!empty($_POST['pr1']) and !empty($_POST['sl1']) and !empty($_POST['ds1'])){
				$upkont_sliders = index::update_slider('slidersgen', $_POST['pr1'], $_POST['sl1'], $_POST['ds1'], '1');
					if(!empty($upkont_sliders)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					}
				}
				}
				// sliders	2
				if(!empty($_POST['sub2'])){
					if(!empty($_POST['pr2']) and !empty($_POST['sl2']) and !empty($_POST['ds2'])){
				$upkont_sliders = index::update_slider('slidersgen', $_POST['pr2'], $_POST['sl2'], $_POST['ds2'], '2');
					if(!empty($upkont_sliders)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					}
				}
				}
				
				// sliders	3
				if(!empty($_POST['sub3'])){
					if(!empty($_POST['pr3']) and !empty($_POST['sl3']) and !empty($_POST['ds3'])){
				$upkont_sliders = index::update_slider('slidersgen', $_POST['pr3'], $_POST['sl3'], $_POST['ds3'], '3');
					if(!empty($upkont_sliders)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					}
				}
				}
				
				// info
				if(!empty($_POST['subimg'])){
					if(!empty($_POST['urlimg']) and !empty($_POST['txtimg'])){
				$upkont_info = index::update_about('abouts', $_POST['urlimg'], $_POST['txtimg'], '1');
					if(!empty($upkont_info)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					}
				}
				}
				
				// news
				if(!empty($_POST['subnews'])){
					if(!empty($_POST['n1']) and !empty($_POST['n5']) and !empty($_POST['n2']) and !empty($_POST['n4']) and !empty($_POST['n3'])){
				$upkont_news = index::insert_news('newsgen', $_POST['n1'], $_POST['n5'], $_POST['n2'], $_POST['n4'], $_POST['n3']);
					if(!empty($upkont_news)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D4B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D61AB.'</div>';
					}
				}
				}
				
				// video
				if(!empty($_POST['subvideo'])){
					if(!empty($_POST['vimg']) and !empty($_POST['mvideo']) and !empty($_POST['vdesc'])){
				$upkont_video = index::insert_video('video', $_POST['vimg'], $_POST['mvideo'], $_POST['vdesc']);
					if(!empty($upkont_video)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					}
				}
				}
				?>
	<!-- sliders 1 !-->	
	  	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-0" id="group-0">
			<label for="group-0"><?php echo LANG_DP6_MENU_GEN_CONTENT6_QWERTY5_PS_NW71; ?></label>

			<ul>
				<li><a href="#0">
				<main>	
				<form class="contact_form" method="POST">
    <table class="tbForm">
	<tr><td colspan="2"><b class="sl_text1"><?php echo LANG_DP6_GEN_CON1_Q_PS1; ?></b></td></tr>
	    <tr>
          <td >  <label for="name"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS2; ?></label></td>
          <td>  <input type="text"  name="pr1" placeholder="<?php echo LANG_DP6_GEN_CON1_QWERTY4_PS3_1; ?>" required /></td>
        </tr>
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS1; ?></label></td>
          <td>  <input type="text"  name="sl1" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D2B; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS3; ?></label></td>
            <td><textarea name="ds1" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="sub1" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D9B; ?>"></td>
        </tr>
    </table>
</form>

<hr>
<!-- sliders 2 !-->
<form class="contact_form" method="POST">
    <table class="tbForm">
	<tr><td colspan="2"><b class="sl_text1"><?php echo LANG_DP6_GEN_CON1_Q_PS2; ?></b></td></tr>
	    <tr>
          <td >  <label for="name"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS2; ?></label></td>
          <td>  <input type="text"  name="pr2" placeholder="<?php echo LANG_DP6_GEN_CON1_QWERTY4_PS3_1; ?>" required /></td>
        </tr>
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS1; ?></label></td>
          <td>  <input type="text"  name="sl2" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D2B; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS3; ?></label></td>
            <td><textarea name="ds2" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="sub2" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D9B; ?>"></td>
        </tr>
    </table>
</form>



<hr>
<!-- sliders 3 !-->
<form class="contact_form" method="POST">
    <table class="tbForm">
	<tr><td colspan="2"><b class="sl_text1"><?php echo LANG_DP6_GEN_CON1_Q_PS3; ?></b></td></tr>
	    <tr>
          <td >  <label for="name"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS2; ?></label></td>
          <td>  <input type="text"  name="pr3" placeholder="<?php echo LANG_DP6_GEN_CON1_QWERTY4_PS3_1; ?>" required /></td>
        </tr>
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS1; ?></label></td>
          <td>  <input type="text"  name="sl3" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D2B; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_GEN_CON1_QWERTY4_PS3; ?></label></td>
            <td><textarea name="ds3" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="sub3" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D9B; ?>"></td>
        </tr>
    </table>
</form>


<!-- sliders end!-->

	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-00" id="group-00">
			<label for="group-00"><?php echo LANG_DP6_MENU_GEN_CONTENT7_QWERTY6_PS_NW71; ?></label>

			<ul>
				<li><a href="#0">
				
<main>		
<table class="bnm">
  <thead>
    <tr>
	<th scope="col"><?php echo LANG_DP6_MENU_GEN_QWERTYS; ?></th>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB; ?></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$ktbk = index::slider_all('slidersgen');
		while($kntbk = sql::fetchArray($ktbk)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_QWERTYS .'"><img src="'. $kntbk['imgs'] .'" width="240" height="160"></td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB .'">'. $kntbk['paragr'] .'</td></tr>';
			echo '<tr><td colspan="2" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5_D61AB .'">'. $kntbk['descs'] .'</td></tr>';
		}
			?>
  </tbody>
		</table>
</main>
				<!-- sliders !-->	
				</a></li>
			</ul>
		</li>
	</ul>
	
	
  </section>
    <!-- info !-->	
  <section id="content2">
	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-1" id="group-1">
			<label for="group-1"><?php echo LANG_DP6_MENU_GEN_CONTENT8_QWERTY7_PS_NW71; ?></label>

			<ul>
				<li><a href="#1">
				<main>	
				<form class="contact_form" method="POST">
    <table class="tbForm">
	    <tr>
          <td >  <label for="name"><?php echo LANG_IMAGES_GEN_CON1_Q_PS1; ?></label></td>
          <td>  <input type="text"  name="urlimg" placeholder="<?php echo LANG_IMAGES_GEN_CON1_Q_PS3; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_IMAGES_GEN_CON1_Q_PS2; ?></label></td>
            <td><textarea name="txtimg" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="subimg" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D9B; ?>"></td>
        </tr>
    </table>
</form>
	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-11" id="group-11">
			<label for="group-11"><?php echo LANG_DP6_MENU_GEN_CONTENT9_QWERTY7_PS_NW71; ?></label>

			<ul>
				<li><a href="#1">
				
<main>		
<table class="bnm">
  <thead>
    <tr>
	<th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_QWERTYS; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$ktbk = index::about_view('abouts', '1');
		while($kntbk = sql::fetchArray($ktbk)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB .'">'. $kntbk['paragr'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_QWERTYS .'"><img src="'. $kntbk['texts'] .'" width="120" height="120" alt="'. LANG_DP6_MENU_GEN_QWERTYS .'"></td></tr>';
			echo '<tr><td colspan="2" align="justify" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5_D61AB .'">'. $kntbk['descs'] .'</td></tr>';
	}
			?>
  </tbody>
		</table>
</main>
			<!-- end info !-->		
				</a></li>
			</ul>
		</li>
	</ul>
	
  </section>
    <!-- news !-->	
  <section id="content3">
	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-2" id="group-2">
			<label for="group-2"><?php echo LANG_DP6_MENU_GEN_ND2_QWERTY4_PS_NW71; ?></label>

			<ul>
				<li><a href="#2">
				<main>	
				<form class="contact_form" method="post" name="contact_form">
    <table class="tbForm">
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4OB_D61AB_NW41; ?></label></td>
          <td>  <input type="text"  name="n1" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W51_NW4OB_D61AB_NW41; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW61; ?></label></td>
          <td>  <input type="text" name="n2" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W53_NW6OB_D61AB_NW61; ?>" required /></td>
        </tr>
		<tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_NEWS_CON1_Q_ACC05; ?></label></td>
          <td>  <input type="text" name="n3" placeholder="<?php echo LANG_DP6_NEWS_CON1_Q_ACC05. LANG_DP6_NEWS_CON1_Q_ACC011; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="website"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW71; ?></label></td>
            <td><input type="text" name="n4" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W54_NW6OB_D61AB_NW71; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_NEWS_CON1_Q_ACC01; ?></label></td>
            <td><textarea name="n5" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="subnews" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D8B; ?>"></td>
        </tr>
    </table>
</form>
	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-22" id="group-22">
			<label for="group-22"><?php echo LANG_DP6_MENU_GEN_ND2_QWERTY5_PS_NW71; ?></label>

			<ul>
				<li><a href="#2">
				
<main>		
<table class="bnm">
  <thead>
    <tr>
	<th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB_NW41; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_QWERTYS; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW71; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$ktbk = index::news_all('newsgen');
		while($kntbk = sql::fetchArray($ktbk)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB_NW41 .'"><b class="sl_text">'. $kntbk['tema'] .'</b></td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5_D61AB_NW51 .'"><img src="'. $kntbk['paragr'] .'" width="60" height="60"></td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW71 .'"><b class="sl_text">'. $kntbk['data_reg'] .'</b></td>';
			echo '<td aria-label="'. LANG_DP6_NEWS_CON1_Q_DELL1 .'"><a href="'.$this->link('index'). '@dln='. $kntbk['id'] .'">'.LANG_DP6_NEWS_CON1_Q_DELL1.'</a></td></tr>';
			echo '<tr><td colspan="4" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW61 .'"><b class="sl_text">'. $kntbk['descs'] .'</b></td></tr>';
		}
			?>
  </tbody>
		</table>
</main>
				
				</a></li>
			</ul>
		</li>
	</ul>
	<!-- end news !-->	
  </section>
    <!-- Видео !-->	
  <section id="content4">
	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-3" id="group-3">
			<label for="group-3"><?php echo LANG_DP6_MENU_GEN_ND2_QWERTY6_PS_NW71; ?></label>

			<ul>
				<li><a href="#3">
				<main>	
				<form class="contact_form" method="POST">
    <table class="tbForm">
	    <tr>
          <td >  <label for="name"><?php echo LANG_DP6_VIDEOS_CON1_Q_PS2; ?></label></td>
          <td>  <input type="text"  name="vimg" placeholder="<?php echo LANG_DP6_VIDEOS_DES1_Q_PS1; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="websites"><?php echo LANG_DP6_VIDEOS_CON1_Q_PS1; ?></label></td>
            <td><input type="text" name="mvideo" placeholder="<?php echo LANG_DP6_VIDEOS_DES2_Q_PS2; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_VIDEOS_CON1_Q_PS3; ?></label></td>
            <td><textarea name="vdesc" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="subvideo" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58A6_D6; ?>"></td>
        </tr>
    </table>
</form>
	</main>	
	
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-33" id="group-33">
			<label for="group-33"><?php echo LANG_DP6_MENU_GEN_ND2_QWERTY7_PS_NW71; ?></label>

			<ul>
				<li><a href="#3">
			
<main>		
<table class="bnm">
  <thead>
    <tr>
	<th scope="col"><?php echo LANG_DP6_VIDEOS_CON1_Q_PS1; ?></th>
      <th scope="col"><?php echo LANG_DP6_VIDEOS_CON1_Q_PS3; ?></th>
      <th scope="col"><?php echo LANG_DP6_VIDEOS_CON1_Q_PS2; ?></th>
	  <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6; ?></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$ktbk = index::video_all('video');
		while($kntbk = sql::fetchArray($ktbk)){
			echo '<tr><td aria-label="'. LANG_DP6_VIDEOS_CON1_Q_PS1 .'">';
			echo '<video width="120" height="120" id="player1" poster="'. $kntbk['imges'] .'" preload="none" controls playsinline webkit-playsinline>';
			echo '<source src="'. $kntbk['link'] .'" type="video/mp4">';
			echo '<track srclang="en" kind="subtitles" src="mediaelement.vtt">';
			echo '<track srclang="en" kind="chapters" src="chapters.vtt">';
			echo '</video></td>';
			echo '<td aria-label="'. LANG_DP6_VIDEOS_CON1_Q_PS3 .'"><b class="sl_text">'. $kntbk['desc'] .'</b></td>';
			echo '<td aria-label="'. LANG_DP6_VIDEOS_CON1_Q_PS2 .'"><img src="'. $kntbk['imges'] .'" width="60" height="60"></td>';
			echo '<td aria-label="'. LANG_DP6_NEWS_CON1_Q_DELL1 .'"><a href="' .$this->link('index'). '@dlv='. $kntbk['id'] .'">'.LANG_DP6_NEWS_CON1_Q_DELL1.'</a></td></tr>';
		
		}
			?>
  </tbody>
		</table>
</main>
			<!-- end Видео !-->		
				</a></li>
			</ul>
		</li>
	</ul>
	
  </section>
    
</main>
			
				
				
			</div>
		</div>
		
	</div>
	
<?php }else{ ?>	
	
<!-- Index page !-->
	<div class="about-us-area section-padding_about">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
			<?php
						$txtw = index::about_view('abouts', '1');
						while($kntsw = sql::fetchArray($txtw)){
							echo '<div class="section-heading_about"><h2>'. $kntsw['paragr'] .'</h2></div>';
						echo '<div class="about-us-info" align="justify">' . $kntsw['descs'] .'</div><br><a href="'.$this->link('kontact').'" class="default-button">'.LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D61.'</a>';
						}
			?>
			
			</div>
			<div class="col-md-6 hidden-xs">
				<div class="about-us-img">
				<?php 
				$txtq = index::about_view('abouts', '1');
						while($kntsq = sql::fetchArray($txtq)){
							echo '<img src="'. html::dirs_html($kntsq['texts']) .'">';
						}
				?>
				</div>
			</div>
		</div>
	</div>
</div>

	
	<div class="service-area section-padding_str overlay">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-heading_str light text-center no-margin">
					<h2><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB47A8_D8B; ?><span><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58A9_D9B; ?></span></h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-6">
				<div class="single-service">
					<div class="icon-title">
						<i class="fa fa-car"></i>
						<?php 
						$tstr1_1 = index::rstrateg_general_view('rstrateggen', '1');
						while($sk1_1 = sql::fetchArray($tstr1_1)){
							echo '<h3>'. $sk1_1['paragr'] .'</h3>';
						}
						?>
					</div>
					<?php 
						$tstr1_2 = index::rstrateg_general_view('rstrateggen', '1');
						while($sk1_2 = sql::fetchArray($tstr1_2)){
							echo '<p align="justify">'. $sk1_2['descs'] .'</p>';
						}
				
						?>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="single-service">
					<div class="icon-title">
						<i class="fa fa-cogs"></i>
						<?php 
						$tstr2_1 = index::rstrateg_general_view('rstrateggen', '2');
						while($sk2_1 = sql::fetchArray($tstr2_1)){
							echo '<h3>'. $sk2_1['paragr'] .'</h3>';
							}
						?>
					</div>
					<?php 
						$tstr2_2 = index::rstrateg_general_view('rstrateggen', '2');
						while($sk2_2 = sql::fetchArray($tstr2_2)){
							echo '<p align="justify">'. $sk2_2['descs'] .'</p>';
							}
						?>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="single-service">
					<div class="icon-title">
						<i class="fa fa-soccer-ball-o"></i>
						<?php 
						$tstr3_1 = index::rstrateg_general_view('rstrateggen', '3');
						while($sk3_1 = sql::fetchArray($tstr3_1)){
							echo '<h3>'. $sk3_1['paragr'] .'</h3>';
							}
						?>
					</div>
					<?php 
						$tstr3_2 = index::rstrateg_general_view('rstrateggen', '3');
						while($sk3_2 = sql::fetchArray($tstr3_2)){
							echo '<p align="justify">'. $sk3_2['descs'] .'</p>';
							}
						?>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="single-service">
					<div class="icon-title">
						<i class="fa fa-compass"></i>
						<?php 
						$tstr4_1 = index::rstrateg_general_view('rstrateggen', '4');
						while($sk4_1 = sql::fetchArray($tstr4_1)){
							echo '<h3>'. $sk4_1['paragr'] .'</h3>';
							}
						?>
					</div>
				<?php 
						$tstr4_2 = index::rstrateg_general_view('rstrateggen', '4');
						while($sk4_2 = sql::fetchArray($tstr4_2)){
							echo '<p align="justify">'. $sk4_2['descs'] .'</p>';
							}
						?>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="single-service">
					<div class="icon-title">
						<i class="fa fa-cubes"></i>
						<?php 
						$tstr5_1 = index::rstrateg_general_view('rstrateggen', '5');
						while($sk5_1 = sql::fetchArray($tstr5_1)){
							echo '<h3>'. $sk5_1['paragr'] .'</h3>';
							}
						?>
					</div>
					<?php 
						$tstr5_2 = index::rstrateg_general_view('rstrateggen', '5');
						while($sk5_2 = sql::fetchArray($tstr5_2)){
							echo '<p align="justify">'. $sk5_2['descs'] .'</p>';
							}
						?>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="single-service">
					<div class="icon-title">
						<i class="fa fa-life-ring"></i>
						<?php 
						$tstr6_1 = index::rstrateg_general_view('rstrateggen', '6');
						while($sk6_1 = sql::fetchArray($tstr6_1)){
							echo '<h3>'. $sk6_1['paragr'] .'</h3>';
							}
						?></h3>
					</div>
				<?php 
						$tstr6_2 = index::rstrateg_general_view('rstrateggen', '6');
						while($sk6_2 = sql::fetchArray($tstr6_2)){
							echo '<p align="justify">'. $sk6_2['descs'] .'</p>';
							}
						?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="services-button text-center">
					<a href="#">
					<a href="<?php echo $this->link('rstrategii'); ?>" class="button large-btn main-color">
						<?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAA66B1_D1B; ?></a>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="shop-area section-padding_less">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading_less text-center">
						<h2><?php echo LANG_DP6_MENU_GEN_ND2_QWERTY1_PS_NW71; ?></h2>
					</div>
				</div>
			</div>
			<div class="shop-tab-area">
				<?php echo $this->widget('players'); ?>
		</div>
	</div>
</div>

	
	
	<div class="blog-aread section-padding_news">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading_news text-center">
						<h2><span> <?php echo LANG_INSTATSW1D3Q5; ?></span></h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="blog-slider owl-preview-2">
					
	<section id="blog" class="quality-wrapper section-padding_news">				
	<div id="grid">
        <div class="news_center">
		<?php 
						$tnews = index::news_all('newsgen');
						while($snew = sql::fetchArray($tnews)){
						echo '<div class="portfolio-item col-xs-12 col-sm-4 col-md-3">';
							echo '<div class="menu-index"><h2>'. $snew['tema'] .'</h2>';
							echo '<img alt="appetizer 01" src="'.$snew['paragr'] .'">';
							echo '<p><a href="'.$snew['link'].'" target="_blank">'.$snew['descs'] .'</a><span><i>'. LANG_DP6_MENU_GEN_ND2_W5_N7AAA66B4.' ' .$snew['data_reg'].'</i></span></p>';
							echo '</div></div>';
							}
						?>
						
		</div> 
	  </div> 
      <div class="load-button text-center">
      <a href="<?php echo $this->link('automat'); ?>" class="btn"><?php echo LANG_DP6_MENU_GEN_ND2_QWERTY3_PS_NW71; ?></a>
      </div>
    </div>
  </div>
</section> 
		</div>
			</div>
	<!-- end Index page!-->
<?php } ?>