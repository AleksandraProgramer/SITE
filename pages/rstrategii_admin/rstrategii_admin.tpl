<!-- Strategii admin !-->
<?php if(auth::isDostups()){ ?>
	<div main bg-white>
			<div toolbar bg-teal seamed>
				<span ripple left panel-target="panel1">
					<span icon="menu" class="bgts"></span>
				</span>
				<header title><?php echo LANG_INSTATSW1D3Q3; ?></header>
			</div>
			<div content>
<?php echo $this->widget('w_rstrat'); ?>
<main>
  
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1"><?php echo LANG_DP6_NEWS_CON1_Q_GENS01; ?></label>
  
  <input id="tab2" type="radio" name="tabs">
  <label for="tab2"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D6AB_NW11ST; ?></label>
    
  <input id="tab3" type="radio" name="tabs">
  <label for="tab3"><?php echo LANG_DP6_NEWS_CON1_Q_ACC04; ?></label>
  
  
  <section id="content1">
  <main>
  <?php
  
  		if(!empty($_POST['segen1'])){
						
					if(!empty($_POST['paragr_gen1']) and !empty($_POST['paragr_gen1_1'])){
				$upk_gen = index::update_rstrateg_generals('rstrateggen', $_POST['paragr_gen1'], $_POST['paragr_gen1_1'], '1');
					if(!empty($upk_gen)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}

				if(!empty($_POST['segen2'])){
						
					if(!empty($_POST['paragr_gen2']) and !empty($_POST['paragr_gen2_1'])){
				$upk_gen = index::update_rstrateg_generals('rstrateggen', $_POST['paragr_gen2'], $_POST['paragr_gen2_1'], '2');
					if(!empty($upk_gen)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}
						
				if(!empty($_POST['segen3'])){
						
					if(!empty($_POST['paragr_gen3']) and !empty($_POST['paragr_gen3_1'])){
				$upk_gen = index::update_rstrateg_generals('rstrateggen', $_POST['paragr_gen3'], $_POST['paragr_gen3_1'], '3');
					if(!empty($upk_gen)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}
					

				if(!empty($_POST['segen4'])){
						
					if(!empty($_POST['paragr_gen4']) and !empty($_POST['paragr_gen4_1'])){
				$upk_gen = index::update_rstrateg_generals('rstrateggen', $_POST['paragr_gen4'], $_POST['paragr_gen4_1'], '4');
					if(!empty($upk_gen)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}
					

				if(!empty($_POST['segen5'])){
						
					if(!empty($_POST['paragr_gen5']) and !empty($_POST['paragr_gen5_1'])){
				$upk_gen = index::update_rstrateg_generals('rstrateggen', $_POST['paragr_gen5'], $_POST['paragr_gen5_1'], '5');
					if(!empty($upk_gen)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}
						
					if(!empty($_POST['segen6'])){
						
					if(!empty($_POST['paragr_gen6']) and !empty($_POST['paragr_gen6_1'])){
				$upk_gen = index::update_rstrateg_generals('rstrateggen', $_POST['paragr_gen6'], $_POST['paragr_gen6_1'], '6');
					if(!empty($upk_gen)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}
  
  ?>
  
  		<div class="row">
		<?php 
				
						$tstr1_1A = index::rstrateg_general_view('rstrateggen', '1');
						while($sk1_1A = sql::fetchArray($tstr1_1A)){
						echo '<table class="ges"><tr><form method="POST">';
							echo '<td class="ges1"><input type="text" name="paragr_gen1" value="'. $sk1_1A['paragr'] .'"></td>';
							echo '<td class="ges2"><textarea name="paragr_gen1_1" cols="35" rows="6" required >'. $sk1_1A['descs'] .'</textarea></td>';
							echo '<td class="ges3"><input type="submit" name="segen1" value="'. LANG_DP6_MENU_GEN_ND2_W5_abs_D9B .'"></td>';
						echo '</tr></table></form>';
						}
				
						$tstr2_1C = index::rstrateg_general_view('rstrateggen', '2');
						while($sk2_1C = sql::fetchArray($tstr2_1C)){
						echo '<table class="ges"><tr><form method="POST">';
							echo '<td class="ges1"><input type="text" name="paragr_gen2" value="'. $sk2_1C['paragr'] .'"></td>';
							echo '<td class="ges2"><textarea name="paragr_gen2_1" cols="35" rows="6" required >'. $sk2_1C['descs'] .'</textarea></td>';
							echo '<td class="ges3"><input type="submit" name="segen2" value="'. LANG_DP6_MENU_GEN_ND2_W5_abs_D9B .'"></td>';
						echo '</tr></table></form>';	
							}

						$tstr3_1E = index::rstrateg_general_view('rstrateggen', '3');
						while($sk3_1E = sql::fetchArray($tstr3_1E)){
						echo '<table class="ges"><tr><form method="POST">';
							echo '<td class="ges1"><input type="text" name="paragr_gen3" value="'. $sk3_1E['paragr'] .'"></td>';
							echo '<td class="ges2"><textarea name="paragr_gen3_1" cols="35" rows="6" required >'. $sk3_1E['descs'] .'</textarea></td>';
							echo '<td class="ges3"><input type="submit" name="segen3" value="'. LANG_DP6_MENU_GEN_ND2_W5_abs_D9B .'"></td>';
						echo '</tr></table></form>';	
							}
					
						$tstr4_1G = index::rstrateg_general_view('rstrateggen', '4');
						while($sk4_1G = sql::fetchArray($tstr4_1G)){
						echo '<table class="ges"><tr><form method="POST">';
							echo '<td class="ges1"><input type="text" name="paragr_gen4" value="'. $sk4_1G['paragr'] .'"></td>';
							echo '<td class="ges2"><textarea name="paragr_gen4_1" cols="35" rows="6" required >'. $sk4_1G['descs'] .'</textarea></td>';
							echo '<td class="ges3"><input type="submit" name="segen4" value="'. LANG_DP6_MENU_GEN_ND2_W5_abs_D9B .'"></td>';
						echo '</tr></table></form>';	
							}
						
						$tstr5_1W = index::rstrateg_general_view('rstrateggen', '5');
						while($sk5_1W = sql::fetchArray($tstr5_1W)){
						echo '<table class="ges"><tr><form method="POST">';
							echo '<td class="ges1"><input type="text" name="paragr_gen5" value="'. $sk5_1W['paragr'] .'"></td>';
							echo '<td class="ges2"><textarea name="paragr_gen5_1" cols="35" rows="6" required >'. $sk5_1W['descs'] .'</textarea></td>';
							echo '<td class="ges3"><input type="submit" name="segen5" value="'. LANG_DP6_MENU_GEN_ND2_W5_abs_D9B .'"></td>';
						echo '</tr></table></form>';	
							}
				
						$tstr6_1T = index::rstrateg_general_view('rstrateggen', '6');
						while($sk6_1T = sql::fetchArray($tstr6_1T)){
						echo '<table class="ges"><tr><form method="POST">';
							echo '<td class="ges1"><input type="text" name="paragr_gen6" value="'. $sk6_1T['paragr'] .'"></td>';
							echo '<td class="ges2"><textarea name="paragr_gen6_1" cols="35" rows="6" required >'. $sk6_1T['descs'] .'</textarea></td>';
							echo '<td class="ges3"><input type="submit" name="segen6" value="'. LANG_DP6_MENU_GEN_ND2_W5_abs_D9B .'"></td>';
						echo '</tr></table></form>';	
							}
						?>
  </main>
  </section>
  
  <section id="content2">
	<?php
// удаление стратегий
			$ext = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext[1])){
	$ext1 = explode('=', $ext[1]);

		    if(substr($ext[1], 0, strlen($ext[1]) - strlen(substr($ext[1], strrpos($ext[1], '=')+1))-1) == 'dl'){ 
			if(!empty($ext1[1])){
			
				$dsx = index::del_rstrateg('strategii', $ext1[1]);
					if(!empty($dsx)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}
		}

	// добавление стратегий
				if(!empty($_POST['submitd'])){
					if(!empty($_POST['parfd']) and !empty($_POST['messaged']) and !empty($_POST['descd']) and !empty($_POST['datesd'])){
				$upkont = index::insert_rstrateg('strategii', $_POST['parfd'], $_POST['messaged'], $_POST['descd'], $_POST['datesd']);
					if(!empty($upkont)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D4B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D61AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
			}
			
			// удаление стратегий таблицы
			$ext_table = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext_table[1])){
	$ext1_table = explode('=', $ext_table[1]);

		    if(substr($ext_table[1], 0, strlen($ext_table[1]) - strlen(substr($ext_table[1], strrpos($ext_table[1], '=')+1))-1) == 'tbldl'){ 
			if(!empty($ext1_table[1])){
			
				$dsx_table = index::del_rstrateg_table('strategii_table', $ext1_table[1]);
					if(!empty($dsx_table)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
				}
		}

	// добавление стратегий таблицы
				if(!empty($_POST['submitd_table'])){
					if(!empty($_POST['parfd_table']) and !empty($_POST['messaged_table']) and !empty($_POST['descd_table']) and !empty($_POST['ds_table'])){
				$upkont_table = index::insert_rstrateg_table('strategii_table', $_POST['parfd_table'], $_POST['messaged_table'], $_POST['descd_table'], $_POST['ds_table']);
					if(!empty($upkont_table)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D4B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D61AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rstrategii_admin@#close"; }, 5 * 1000);</script>';
			}
				?>
	
	  	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-0" id="group-0">
			<label for="group-0"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs2_D61AB_NW21ST; ?></label>

			<ul>
				<li><a href="#0">
				<main>	
				<form class="contact_form" method="post" name="contact_form">
    <table class="tbForm">
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4OB_D61AB_NW41; ?></label></td>
          <td>  <input type="text"  name="parfd" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W51_ST4OB_D61AB_NW41; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW61; ?></label></td>
          <td>  <input type="text" name="descd" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W53_ST6OB_D61AB_NW61; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="website"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW71; ?></label></td>
            <td><input type="text" name="datesd" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W54_ST6OB_D61AB_NW71; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs5OB_D61AB_NW51; ?></label></td>
            <td><textarea name="messaged" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="submitd" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D8B; ?>"></td>
        </tr>
    </table>
</form>
	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-00" id="group-00">
			<label for="group-00"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs3_D61AB_NW31ST; ?></label>

			<ul>
				<li><a href="#0">
				
<main>		
<table class="bnm">
  <thead>
    <tr>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB_NW41ST; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW61ST; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$kbnr = index::rstrateg_alls('strategii');
		while($bnrk = sql::fetchArray($kbnr)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB_NW41ST .'">'. $bnrk['tema'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW61ST .'">'. $bnrk['descs'] .'</td>';
		
echo '<td><div align="center"><a href="'. $this->link('rstrategii_admin').'@ed='. $bnrk['id'] .'#editrstrateg"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D9B.'" src="'. html::dirs_html('templates/img/admin/fixed.png') .'"></div></a> <a href="'.$this->link('rstrategii_admin').'@dl='. $bnrk['id']. '"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D1B.'" src="'. html::dirs_html('templates/img/admin/svn_deleted.png') .'"></div></a></div></td></tr>';
			echo '<tr><td colspan="3" align="justify" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5_D61AB_NW51ST .'">'. $bnrk['paragr'] .'</tr></td>';	
	}
			?>
  </tbody>
</table>
</main>
				
				</a></li>
			</ul>
		</li>	
	</ul>
  </section>
    <!-- table strategii!-->
		<section id="content3">
	  <ul class="cd-accordion-menu animated">
			<li class="has-children">
			<input type="checkbox" name="group-0001" id="group-0001">
			<label for="group-0001"><?php echo LANG_DP6_NEWS_CON1_Q_ACC02; ?></label>

			<ul>
				<li><a href="#0001">
				<main>	
				
				
				
	<form class="contact_form" method="POST" name="contact_form">
    <table class="tbForm">
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4OB_D61AB_NW41; ?></label></td>
          <td>  <input type="text"  name="parfd_table" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W51_ST4OB_D61AB_NW41; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW61; ?></label></td>
          <td>  <input type="text" name="descd_table" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W53_ST6OB_D61AB_NW61; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="website"><?php echo LANG_DP6_NEWS_CON1_Q_ACC05; ?></label></td>
            <td><input type="text" name="ds_table" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W54_ST6OB_D61AB_NW71; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_NEWS_CON1_Q_ACC01; ?></label></td>
            <td><textarea name="messaged_table" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="submitd_table" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D8B; ?>"></td>
        </tr>
    </table>
</form>			
				
				
				
				
				</main>
				</a></li>
			</ul>
		</li>
		<li class="has-children">
			<input type="checkbox" name="group-0002" id="group-0002">
			<label for="group-0002"><?php echo LANG_DP6_NEWS_CON1_Q_ACC03; ?></label>

			<ul>
				<li><a href="#0002">
				<main>	
				
				
				
<table class="bnm">
  <thead>
    <tr>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_QWERTYS; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW61ST; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php  
	$kbnr_tbl = index::rstrateg_alls('strategii_table');
		while($bnrk_tbl = sql::fetchArray($kbnr_tbl)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_QWERTYS .'"><img src="'. $bnrk_tbl['broker'] .'" width="120" height="60"></td>';
			echo '<td align="justify" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5_D61AB_NW51ST .'">'. $bnrk_tbl['min_dep'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW61ST .'">'. $bnrk_tbl['min_stav'] .'</td>';

echo '<td><div align="center"><a href="'.$this->link('rstrategii_admin').'@tbldl='. $bnrk_tbl['id']. '"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D1B.'" src="'. html::dirs_html('templates/img/admin/svn_deleted.png') .'"></div></a></div></td></tr>';

		}
			?>
  </tbody>
</table>				
				
				
				
				</main>
				</a></li>
			</ul>
		</li>
		</ul>
  </section>  
</main>
			</div>
		</div>
	</div>
	<?php }else{
		echo $this->widget('w_404'); 
		}
	?>
	<!-- end Strategii admin !-->