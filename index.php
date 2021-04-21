<?php
	/*
	 * ** index file**
	 * индексный файл
	 */
 
    // start session
	// старт сессии
	session_start();
	
    // coding install
	// установка кодировок
	mb_internal_encoding('UTF-8');
	header('Content-type: text/html; charset=utf-8');
	
	// install path in variable
	// установка пути в переменную
	define('SERVERS', $_SERVER['SERVER_NAME']);

	//include core
	// подключение ядра 
    require_once 'core/autoload.core.php';
    $autoloader = new autoload();
	$autoloader->init();
	
	// check config
	// проверка конфигурации
	$fln = 'config.php';
		if(!file_exists($fln)){
	config::create_config('config.php', '', '', 1, 1, 'ru', 'Бухгалтерия', 'Действующая конфигурация', 'localhost', 'id2144402_poisk', 'id2144402_gromovaleksandr', 'gromov235394');
    }
	
	// include class error
	// подключение класса ошибок
	$myError = new errors();

	// install error display
	// установка вывода ошибок
    ini_set('display_errors', config::isConfig('e_disp'));
	
	// include lang class 
	// подключение класса
	$myLang = new language();
	$myLang->site_lang('templates/languages', config::isConfig('langs'));
	
	// include class database
	// подключение класса бд
	$myDb= new db();
	// УСТАНАВЛИВАЕМ ВРЕМЯ СОЕДИНЕНИЯ
	//set_time_limit(0);
	$lConn = $myDb->empty_bd(config::init_config());
    $lData = $myDb->data_bd(config::init_config());
 	// check errors database connect
	// проверка подключения бд
	if(!$lConn){ 
		print $myError->system_error('Что то пошло не так!!');
	exit; 
	}
	
    // include shablon route
	// подключение шаблона в роутере
	$router = new routes();
	print $router->actions();

//  закрытие бд	 
	if($lConn){ 
		sql::freeClose();
	}
/*
 * END CODE
 * конец кода
 */

?>