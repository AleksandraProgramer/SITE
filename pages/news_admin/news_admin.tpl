<!-- news admin !-->
<?php if(auth::isDostups()){ ?>
	<div main bg-white>
			<div toolbar bg-teal seamed>
				<span ripple left panel-target="panel1">
					<span icon="menu" class="bgts"></span>
				</span>
				<header title><?php echo LANG_INSTATSW1D3Q5; ?></header>
			</div>
			<div content>
<?php echo $this->widget('w_news'); ?>
<main>
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D6AB_NW11; ?></label>
  <section id="content1">
	<?php
// удаление новости
			$ext = explode('@@', $_SERVER['QUERY_STRING']);
	if(!empty($ext[1])){
	$ext1 = explode('=', $ext[1]);

		    if(substr($ext[1], 0, strlen($ext[1]) - strlen(substr($ext[1], strrpos($ext[1], '=')+1))-1) == 'dl'){ 
			if(!empty($ext1[1])){
			
				$dsx = index::del_news('newsgen', $ext1[1]);
					if(!empty($dsx)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D8B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs1_D9B.'</div>';
					}
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?news_admin@#close"; }, 5 * 1000);</script>';
				}
		}
	
	// добавление новости
				if(!empty($_POST['submitn'])){
					if(!empty($_POST['parfn']) and !empty($_POST['messagen']) and !empty($_POST['descn']) and !empty($_POST['datesn']) and !empty($_POST['links'])){
				$upkont = index::insert_news('newsgen', $_POST['parfn'], $_POST['messagen'], $_POST['descn'], $_POST['datesn'], $_POST['links']);
					if(!empty($upkont)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D4B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D61AB.'</div>';
					} 
				}else{
				echo '<div class="warning">'.LANG_DP6_MENU_GEN_ND21_W5_abs1_D9B.'</div>';
				}
				echo '<script>setTimeout(function(){ window.location.href = "http://worldtrader24.net/?news_admin@#close"; }, 5 * 1000);</script>';
			}
				?>
	
	  	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-0" id="group-0">
			<label for="group-0"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs2_D61AB_NW21; ?></label>

			<ul>
				<li><a href="#0">
				<main>	
				<form class="contact_form" method="post" name="contact_form">
    <table class="tbForm">
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4OB_D61AB_NW41; ?></label></td>
          <td>  <input type="text"  name="parfn" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W51_NW4OB_D61AB_NW41; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW61; ?></label></td>
          <td>  <input type="text" name="descn" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W53_NW6OB_D61AB_NW61; ?>" required /></td>
        </tr>
		<tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_NEWS_CON1_Q_ACC05; ?></label></td>
          <td>  <input type="text" name="links" placeholder="<?php echo LANG_DP6_NEWS_CON1_Q_ACC05. LANG_DP6_NEWS_CON1_Q_ACC011; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="website"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6OB_D61AB_NW71; ?></label></td>
            <td><input type="text" name="datesn" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W54_NW6OB_D61AB_NW71; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_NEWS_CON1_Q_ACC01; ?></label></td>
            <td><textarea name="messagen" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="submitn" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D8B; ?>"></td>
        </tr>
    </table>
</form>
	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-00" id="group-00">
			<label for="group-00"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs3_D61AB_NW31; ?></label>

			<ul>
				<li><a href="#0">
				
<main>		
<table class="bnm">
  <thead>
    <tr>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB_NW41; ?></div></th>
      <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_QWERTYS; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB_NW71; ?></div></th>
	  <th scope="col"><div align="center"><?php echo LANG_DP6_MENU_GEN_ND2_W5_abs1_D61B; ?></div></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$kbnr = index::news_all('newsgen');
		while($bnrk = sql::fetchArray($kbnr)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs4_D61AB .'">'. $bnrk['tema'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_QWERTYS .'"><img src="'. $bnrk['paragr'] .'" width="120" height="120"></td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB .'">'. $bnrk['data_reg'] .'</td>';
		
echo '<td><div align="center"><a href="'. $this->link('news_admin').'@ed='. $bnrk['id'] .'#editnews"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D9B.'" src="'. html::dirs_html('templates/img/admin/fixed.png') .'"></div></a> <a href="'.$this->link('news_admin').'@dl='. $bnrk['id']. '"><div class="edl"><img alt="'.LANG_DP6_MENU_GEN_ND2_W5_abs_D1B.'" src="'. html::dirs_html('templates/img/admin/svn_deleted.png') .'"></div></a></div></td></tr>';
			echo '<td colspan="4" align="justify" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_abs6_D61AB .'">'. $bnrk['descs'] .'</td>';
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
	<!-- end news admin !-->