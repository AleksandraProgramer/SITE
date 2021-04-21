<!-- help admin !-->
<?php if(auth::isDostups()){ ?>
	<div main bg-white>
			<div toolbar bg-teal seamed>
				<span ripple left panel-target="panel1">
					<span icon="menu" class="bgts"></span>
				</span>
				<header title><?php echo LANG_INSTATSW1D8Q6; ?></header>
			</div>
			<div content>
<?php echo $this->widget('w_ban'); ?>
<main>
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D6AB; ?></label>
  <section id="content1">
	<?php
	// удаляем данные
				$ext = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext[1])){
	$ext1 = explode('=', $ext[1]);

		    if(substr($ext[1], 0, strlen($ext[1]) - strlen(substr($ext[1], strrpos($ext[1], '=')+1))-1) == 'dl'){ 
			if(!empty($ext1[1])){
			
				$dsx = index::del_baners('baners', $ext1[1]);
					if(!empty($dsx)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?baners_admin@#close"; }, 5 * 1000);</script>';
				}
		}
		
	// добавляем данные 
				if(!empty($_POST['submitg'])){
					if(!empty($_POST['parfg']) and !empty($_POST['messageg']) and !empty($_POST['descg']) and !empty($_POST['datesg'])){
				$upkont = index::insert_baners('baners', $_POST['parfg'], $_POST['descg'], $_POST['messageg'], $_POST['datesg']);
					if(!empty($upkont)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D4B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D61AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?baners_admin@#close"; }, 5 * 1000);</script>';
			}
				?>
	  	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-0" id="group-0">
			<label for="group-0"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs2_D61AB; ?></label>

			<ul>
				<li><a href="#0">
				<main>	
				<form class="contact_form" method="POST" name="contact_form">
    <table class="tbForm">
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB; ?></label></td>
          <td>  <input type="text"  name="parfg" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W54_NWBNC_D61AB_NW71; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW61; ?></label></td>
          <td>  <input type="text" name="descg" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W53_NWBNB_D61AB_NW61; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="website"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW71; ?></label></td>
            <td><input type="text" name="datesg" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W54_NWBNB_D61AB_NW71; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_NEWS_CON1_Q_ACC01; ?></label></td>
            <td><input type="text" name="messageg" placeholder="<?php echo LANG_DP6_NEWS_CON1_Q_ACC01; ?>"/></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="submitg" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D8B; ?>"></td>
        </tr>
    </table>
</form>
	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-00" id="group-00">
			<label for="group-00"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs3_D61AB; ?></label>

			<ul>
				<li><a href="#0">
				
<main>		
<table class="bnm">
  <thead>
    <tr>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs5_D61AB; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_NEWS_CON1_Q_ACC01; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$kbnr = index::baners_all('baners', '1');
		while($bnrk = sql::fetchArray($kbnr)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs5_D61AB .'">'. $bnrk['texts'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_NEWS_CON1_Q_ACC01 .'"><img src="'. $bnrk['descs'] .'" width="120" height="120"></td>';
		
echo '<td><div align="center"><a href="'. $this->link('baners_admin').'@ed='. $bnrk['id'] .'#editbaners"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D9B.'" src="'. html::dirs_html('templates/img/admin/fixed.png') .'"></div></a> <a href="'.$this->link('baners_admin').'@dl='. $bnrk['id']. '"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D1B.'" src="'. html::dirs_html('templates/img/admin/svn_deleted.png') .'"></div></a></div></td></tr>';
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
	<!-- end help admin!-->