<!-- contact admin!-->
<?php if(auth::isDostups()){ ?>
	<div main bg-white>
			<div toolbar bg-teal seamed>
				<span ripple left panel-target="panel1">
					<span icon="menu" class="bgts"></span>
				</span>
				<header title><?php echo LANG_INSTATSW1D8_WWW1Q1; ?></header>
			</div>
			<div content>

<main>
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB47B2_D2B; ?></label>
  <section id="content1">
	
					<?php
					
				if(!empty($_POST['submit'])){
					if(!empty($_POST['message']) and !empty($_POST['adres']) and !empty($_POST['tels'])
					and !empty($_POST['emails']) and !empty($_POST['grrb'])){
				$upkont = index::update_kontakt('kontactgen', $_POST['message'], $_POST['adres'], $_POST['tels'], $_POST['emails'], $_POST['grrb'], '1');
					if(!empty($upkont)){
						echo '<div class="success">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D3B.'</div>';
					}else{
						echo '<div class="error">'.LANG_DP6_MENU_GEN_ND2_W5_abs_D6AB.'</div>';
					}
				}
				}
				?>
	  	<ul class="cd-accordion-menu animated">
		<li class="has-children">
			<input type="checkbox" name ="group-0" id="group-0">
			<label for="group-0"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B3_D3B; ?></label>

			<ul>
				<li><a href="#0">
				<main>	
				<form class="contact_form" method="POST">
    <table class="tbForm">
	    <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D61B; ?></label></td>
          <td>  <input type="text"  name="adres" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D2B; ?>" required /></td>
        </tr>
        <tr>
          <td >  <label for="name"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB47B5_D5B; ?></label></td>
          <td>  <input type="text"  name="tels" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D6B; ?>" required /></td>
        </tr>
        <tr>
          <td width="50">  <label for="email"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D6B; ?></label></td>
          <td>  <input type="email" name="emails" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D5B; ?>" required /></td>
        </tr>
        <tr>
            <td width="50"><label for="websites"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D6AB; ?></label></td>
            <td><input type="text" name="grrb" placeholder="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D61B; ?>"/></td>
        </tr>
        <tr>
            <td width="50"><label for="message"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D61AB; ?></label></td>
            <td><textarea name="message" cols="40" rows="6" required ></textarea></td>
        </tr>
        <tr>
        	<td colspan="2"><input class="submit" name="submit" type="submit" value="<?php echo LANG_DP6_MENU_GEN_ND2_W5_abs_D9B; ?>"></td>
        </tr>
    </table>
</form>
	</main>		
		</a></li>
			</ul>
		</li>

		<li class="has-children">
			<input type="checkbox" name ="group-00" id="group-00">
			<label for="group-00"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAA66B4_D4B; ?></label>

			<ul>
				<li><a href="#0">
				
<main>		
<table class="bnm">
  <thead>
    <tr>
	<th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D61AB; ?></th>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D61B; ?></th>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB47B5_D5B; ?></th>
      <th scope="col"><?php echo LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D6AB; ?></th>
    </tr>
  </thead>
  <tbody>
  <?php 
	$ktbk = index::kontakt_view('kontactgen', '1');
		while($kntbk = sql::fetchArray($ktbk)){
			echo '<tr><td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D61AB .'">'. $kntbk['mcontact'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D61B .'">'. $kntbk['descs'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB47B5_D5B .'">'. $kntbk['tel'] .'</td>';
			echo '<td aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D6AB .'">'. $kntbk['grrab'] .'</td></tr>';
			echo '<tr><td colspan="4" aria-label="'. LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D6B .'">' . LANG_DP6_MENU_GEN_ND2_W5_N7AAB58B6_D6B .' : '. $kntbk['email'] .'</td></tr>';
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
	<!-- end contact admin!-->