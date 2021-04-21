<?php

/*
 *  class autoload *
 *  Класс автозагрузки *
 */

class autoload{
	
 //	Static variable
 // Статическая переменная
 public static $loader;
 
 	var $front;
	var $back;
	
	// Map download files core (Static map array)	
	// Карта загрузки файлов ядра ( Стаический массив )
 	public static $core_map = array(
		'autoload'=>'autoload.php',
		'controllers'=>'controllers.lib.php',
		'routes'=>'routes.lib.php',
		'request'=>'request.lib.php',
		'templates'=>'templates.lib.php',
		'widgets'=>'widgets.lib.php',
	);
 
	// Статическая Функция инициализации класса
	// static function initialize class
    public static function init(){
        if(self::$loader == NULL) {
            self::$loader = new self();
        }
        return self::$loader;
    }
	
	// construct class
	//  Конструктор класса
	 public function __construct(){ 
	 	spl_autoload_register(array($this, 'cores'));	
		spl_autoload_register(array($this, 'system_lib'));	
		spl_autoload_register(array($this, 'library'));		
		spl_autoload_register(array($this, 'frontend_model'));			
		spl_autoload_register(array($this, 'controllers')); 
	}
	
	// system library include for class
	// системная библиотека для подключения классов	
	public function library($class) {
		if ( substr($class, -6) === 'Widget' || substr($class, -10) === 'Controller' || !isset(self::$core_map[$class]) ) {
			return;
		}
		require 'core'.self::$core_map[$class];
	}
	
	
	// system controllers include for class
	// системный контроллер для подключения классов
	public function controllers($class) {
	
		if ( substr($class, -10) !== 'Controller' ) {
			return;
		}
		
		$class = preg_replace('/Controller$/','',$class);
		$filename = 'templates/controllers/' . $class . '.php';
		$this->requires($filename);
	}

	// system library include for core
	// системная библиотека для подключения ядра
  public function cores($core_file){
	    set_include_path('core');
        spl_autoload_extensions('.core.php');
        spl_autoload($core_file);
	}

	// include  systemы library	
	// подключение системной библиотеки
  public function system_lib($lib_file){
	    set_include_path('lib');
        spl_autoload_extensions('.lib.php');
        spl_autoload($lib_file);
	}
	
		// system library include for model class frontend	
	// системная библиотека для подключения модели файлов
	public function frontend_model($models_file){
	    set_include_path('templates/model');
        spl_autoload_extensions('.model.php');
        spl_autoload($models_file);	
	}

	// system library include for check files	
	// системная библиотека для проверки на наличие файлов
	public function requires($pg){
		if(file_exists($pg)){
			require $pg;
		}
	}		
}

/*
 * END CODE *
 * Конец кода *
 */

?>