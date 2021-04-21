<?php

/*
 * library connect css *
 * библиотека подключения файлов стилей
 */

class css {

// search files
// поиск нужных файлов
public static function scan_css_frontend($dir_css) {
	$CONF_CSS["file_types"] ='css';
	$dh_css = opendir('templates/' .$dir_css);
	for($m = 0; $fname_css = readdir($dh_css); $m++){
          $file_array_css = explode('.', $fname_css);
          $num_css = count($file_array_css);
          $fileres_css = $file_array_css[($num_css - 1)];
          $file_types_css = explode("|", $CONF_CSS['file_types']);
          if(in_array($fileres_css, $file_types_css)){
            $files_css[] = $fname_css;
          }	  
		}
		closedir($dh_css);
		return $files_css;
  }
  
// connect files style
// подключение файлов стилей
	public static function mycss_frontend($css_file){
		return "<link href=\"templates/{$css_file}\" media=\"screen\" rel=\"stylesheet\">\r\n";
	}

}

/*
 * END CODE *
 * Конец кода *
 */

?>