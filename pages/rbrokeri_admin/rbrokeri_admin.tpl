<!-- brokiri admin !-->
<?php if(auth::isDostups()){ ?>
	<div main bg-white>
			<div toolbar bg-teal seamed>
				<span ripple left panel-target="panel1">
					<span icon="menu" class="bgts"></span>
				</span>
				<header title><?php echo LANG_INSTATSW1D8Q2; ?></header>
			</div>
			<div content>
<?php echo $this->widget('w_rbock'); ?>
<main>
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1BR_D6AB_NW11ST; ?></label>
  
  <input id="tab2" type="radio" name="tabs">
  <label for="tab2"><?php echo LANG_DP6_NEWS_CON1_Q_ACC06; ?></label>
  
  <section id="content1">
	<?php
// удаление данных
			$ext = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext[1])){
	$ext1 = explode('=', $ext[1]);

		    if(substr($ext[1], 0, strlen($ext[1]) - strlen(substr($ext[1], strrpos($ext[1], '=')+1))-1) == 'dl'){ 
			if(!empty($ext1[1])){
			
				$dsx = index:: del_rbroker('brokeri', $ext1[1]);
					if(!empty($dsx)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rbrokeri_admin@#close"; }, 5 * 1000);</script>';
				}
		}
		
	// добавление данных
				if(!empty($_POST['submit'])){
					if(!empty($_POST['parf']) and !empty($_POST['message']) and !empty($_POST['desc']) and !empty($_POST['dates'])){
				$upkont = index::insert_rbroker('brokeri', $_POST['parf'], $_POST['message'], $_POST['desc'], $_POST['dates']);
					if(!empty($upkont)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D4B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D61AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rbrokeri_admin@#close"; }, 5 * 1000);</script>';
			}
			
			// удаление данных таблицы
			$ext_table = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext_table[1])){
	$ext1_table = explode('=', $ext_table[1]);

		    if(substr($ext_table[1], 0, strlen($ext_table[1]) - strlen(substr($ext_table[1], strrpos($ext_table[1], '=')+1))-1) == 'tbldl'){ 
			if(!empty($ext1_table[1])){
			
				$dsx_table = index:: del_rbroker_table('brokeri_table', $ext1_table[1]);
					if(!empty($dsx_table)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rbrokeri_admin@#close"; }, 5 * 1000);</script>';
				}
		}
		
	// добавление данных таблицы
				if(!empty($_POST['submit_table'])){
					if(!empty($_POST['parf_table']) and !empty($_POST['message_table']) and !empty($_POST['desc_table']) and !empty($_POST['link_table'])){
				$upkont_table = index::insert_rbroker_table('brokeri_table', $_POST['parf_table'], $_POST['message_table'], $_POST['desc_table'], $_POST['link_table']);
					if(!empty($upkont_table)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D4B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D61AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?rbrokeri_admin@#close"; }, 5 * 1000);</script>';
			}
				?>
	
	  	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-0" id="group-0">
			<label for="group-0"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs2BR_D61AB_NW21ST; ?></label>

			<ul>
				<li><a href="#0">
				<main>	
				<form class="contact_form" method="POST" name="contact_form">
    <table class="tbForm">
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4OB_D61AB_NW41; ?></label></td>
          <td>  <input type="text"  name="parf" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W51_BR4OB_D61AB_NW41; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW61; ?></label></td>
          <td>  <input type="text" name="desc" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W53_BR6OB_D61AB_NW61; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="website"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW71; ?></label></td>
            <td><input type="text" name="dates" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W54_BR6OB_D61AB_NW71; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs5OB_D61AB_NW51; ?></label></td>
            <td><textarea name="message" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="submit" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D8B; ?>"></td>
        </tr>
    </table>
</form>
	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-00" id="group-00">
			<label for="group-00"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs3BR_D61AB_NW31ST; ?></label>

			<ul>
		<li><a href="#0">
<main>		
<table class="bnm">
  <thead>
    <tr>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4BR_D61AB_NW41ST; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6BR_D61AB_NW61ST; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$kbnr = index::rbroker_all('brokeri');
		while($bnrk = sql::fetchArray($kbnr)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs4BR_D61AB_NW41ST .'">'. $bnrk['tema'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6BR_D61AB_NW61ST .'">'. $bnrk['descs'] .'</td>';

echo '<td><div align="center"><a href="'. $this->link('rbrokeri_admin').'@ed='. $bnrk['id'] .'#editrbrok"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D9B.'" src="'. html::dirs_html('templates/img/admin/fixed.png') .'"></div></a> <a href="'.$this->link('rbrokeri_admin').'@dl='. $bnrk['id']. '"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D1B.'" src="'. html::dirs_html('templates/img/admin/svn_deleted.png') .'"></div></a></div></td></tr>';
		     echo '<tr><td colspan="3" align="justify" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5BR_D61AB_NW51ST .'">'. $bnrk['paragr'] .'</tr></td>';
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
  <!-- table broker!-->
   <section id="content2">
	  <ul class="cd-accordion-menu animated">
  		<li class="has-children">
			<input type="checkbox" name="group-0001" id="group-0001">
			<label for="group-0001"><?php echo LANG_DP6_NEWS_CON1_Q_ACC07; ?></label>

			<ul>
				<li><a href="#0001">
				<main>	
				
				
				
<form class="contact_form" method="POST" name="contact_form">
    <table class="tbForm">
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4OB_D61AB_NW41; ?></label></td>
          <td>  <input type="text"  name="parf_table" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W51_BR4OB_D61AB_NW41; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW61; ?></label></td>
          <td>  <input type="text" name="desc_table" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W53_BR6OB_D61AB_NW61; ?>" required /></td>
        </tr>
		<tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_NEWS_CON1_Q_ACC05; ?></label></td>
          <td>  <input type="text" name="link_table" placeholder="<?php echo LANG_DP6_NEWS_CON1_Q_ACC05. LANG_DP6_NEWS_CON1_Q_ACC09; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_NEWS_CON1_Q_ACC01; ?></label></td>
            <td><textarea name="message_table" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="submit_table" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D8B; ?>"></td>
        </tr>
    </table>
</form>
				
				
				
				</main>
				</a></li>
			</ul>
		</li>
		<li class="has-children">
			<input type="checkbox" name="group-0002" id="group-0002">
			<label for="group-0002"><?php echo LANG_DP6_NEWS_CON1_Q_ACC08; ?></label>

			<ul>
				<li><a href="#0002">
				<main>	
				
				
				
				
<table class="bnm">
  <thead>
    <tr>
	<th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_QWERTYS; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4BR_D61AB_NW41ST; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs5BR_D61AB_NW51ST; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$kbnr_tbl = index::rbroker_all('brokeri_table');
		while($bnrk_tbl = sql::fetchArray($kbnr_tbl)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_QWERTYS .'"><img src="'. $bnrk_tbl['broker'] .'" width="120" height="60"></td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5BR_D61AB_NW51ST .'">'. $bnrk_tbl['min_dep'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6BR_D61AB_NW61ST .'">'. $bnrk_tbl['min_stav'] .'</td>';
echo '<td><a href="'.$this->link('rbrokeri_admin').'@tbldl='. $bnrk_tbl['id']. '"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D1B.'" src="'. html::dirs_html('templates/img/admin/svn_deleted.png') .'"></div></a></td></tr>';
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
	
	<!-- end brokeri admin !-->