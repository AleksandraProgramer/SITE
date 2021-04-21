<?php

/*
 * * library config *
 * библиотека конфигурации
 *
 */

class config {

/* check files
 * проверяем файл 
 */
	public static function init_config() {
		if(is_readable('config.php')){
			return include('config.php');
		}
	}
	
/* initializing configuration 
 * инициализируем конфигурацию
 */
public function isConfig($vars){
  if(!empty($vars)){
    $CNF =  self::init_config();
    $myCNF = $CNF[$vars];
    return $myCNF;
      }else{
	return false;
      }
}

// function create files configuration 
// функция создания файла конфигурации
	public static function create_config($fpath, $path, $host, $is_site_on, $e_disp, $langs, $hometitle, $sitename, 
	$db_host, $db_base, $db_user, $db_pass) {
		$file = fopen($fpath, 'a');
		fputs($file, "
<?php						
/*					
 * config *			
 * конфигурация *	
 */					

 return array(
	
	
	
		'path'			=> '$path',	
		'host'			=> '$host',	
		'is_site_on'		=> '$is_site_on',	
		'e_disp'			=> '$e_disp',	
		\r\n
		'langs'			=> '$langs',	
		'hometitle'		=> '$hometitle',	
		'sitename'		=> '$sitename',	
		\r\n
		'db_host'			=> '$db_host',	
		'db_base'			=> '$db_base',	
		'db_user'			=> '$db_user',	
		'db_pass'			=> '$db_pass',	
		\r\n
		);

/*				
 * END CODE *	
 * конец кода *
 */			
?>				
		");
		fclose($file);
		return true;
		}

}

/*
 * END CODE
 * Конец кода
 */

?>