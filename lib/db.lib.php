<?php

/*
 * library connect database *
 * библиотека подключения базы данных
 */

class db {
	
    // function connect to configuration file
    // функция подключения к конфигурационному файлу
	public function data_bd($cfg){
	return $cfg;
	}
    
// function connect to database
// функция подключения к базе данных
	public function empty_bd($cfg){
	try {
	$my_bd = mysql_connect($cfg['db_host'], $cfg['db_user'], $cfg['db_pass']);
        
	if(!empty($my_bd)){
		  mysql_select_db($cfg['db_base'], $my_bd);
	      mysql_set_charset("utf8");
	
	throw new Exception(true);
	}
	      } catch (Exception $e) {
	      return $e->getMessage();
   }
	return $my_bd;
	}	
	
}

/*
 * END CODE *
 * Конец кода *
 */

?>