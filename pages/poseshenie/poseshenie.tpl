<!-- poseshenie admin !-->
<?php if(auth::isDostups()){ ?>
	<div main bg-white>
			<div toolbar bg-teal seamed>
				<span ripple left panel-target="panel1">
					<span icon="menu" class="bgts"></span>
				</span>
				<header title><?php echo LANG_INSTATSW1D8_WWW1; ?></header>
			</div>
			<div content>
<main>
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D1B; ?></label>
  <section id="content1">
  <?php 
  // удаление информации
  	$ext = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext[1])){
	$ext1 = explode('=', $ext[1]);
		    if(substr($ext[1], 0, 2) == 'ps'){ 
			if(!empty($ext1[1])){
				$dsx = index:: del_pos('cms_count_pages',  'cms_count_ip', substr($ext1[1], 0, strlen($ext1[1]) - 1));
					if(!empty($dsx)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?poseshenie@#close"; }, 5 * 1000);</script>';
				}
		}
		// очистка посещения
		$ext1 = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext1[1])){
		    if(substr($ext1[1], 0, 2) == 'cl'){ 
				$dsx1 = index::del_pos_all('cms_count_pages',  'cms_count_ip');
					if(!empty($dsx1)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs6OB_PS_NT.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs6OB_PS_NCL.'</div>';
					}
					echo '<script>setTimeout(function(){ window.location.href = "http://nones.000webhostapp.com/?poseshenie@#close"; }, 5 * 1000);</script>';
				}
		}
  ?>
	  	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-00" id="group-00">
			<label for="group-00">
			<table class="mtclear">
			<tr><td style="width: 100%; text-align: left;"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D2B; ?></td>
			<td style="width: 100%; text-align: right;"><a href="<?php echo $this->link('poseshenie'.'@@cl'); ?>"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_PS_NW71; ?></a></td></tr>
			</table>
			</label>
			<ul>
		<li><a href="#0">		
<main>		
<table class="bnm">
  <thead>
    <tr>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D3B; ?></th>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D4B; ?></th>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D5B; ?></th>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D6B; ?></th>
	  <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B; ?></th>
    </tr>
  </thead>
  <tbody>
  	<?php
	   $tx1 = index::poseshenie_all_jn('cms_count_pages', 'cms_count_ip');
	   while($kps = sql::fetchArray($tx1)){
	   		echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs1_D3B .'">'.actions::url_action($kps['name']).'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs1_D4B .'">'.count($kps['id_page']).'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs1_D5B .'">'.$kps['datas'].'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs1_D6B .'">'.$kps['ip'].'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B .'"><div class="aps"><a href="'.$this->link('poseshenie'.'@@ps='.$kps['ip_cp']).'">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D1B.'</a></div></td></tr>';
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
	<!-- end poseshenie admin !-->