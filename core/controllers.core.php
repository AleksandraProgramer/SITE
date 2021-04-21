<?php

/*
 * class controller *
 * Контроллер класс *
 */
 
class controllers {


 // reserver data public
 // резервные переменные
	protected $context;		
	protected $template;	
	public $controllerName = NULL;
	public $actioneName = NULL;

 // autostart function on class
 // автозапуск функции для получения шаблонов
	public function __construct($controllerName, $actionName) {
		$this->view =& templates::getInstance();
		$this->setTemplateName('main');
		$this->setContext(request::req('context', 'html'));
		$this->controllerName = $controllerName;
		$this->actionName = $actionName;
	}

 // include context
 // подключение контекста
		public function setContext($context) {
		$this->context = ( in_array($context, array('json','ajax','html')) ) ? $context : 'html';
		
	}

 // get parameter context
 // запрос параметров контекста 
	public function getContext() {
		return ( !empty($this->context) ) ? $this->context : 'html';
	}

 // setTemplateName shablon
 // Сброс имени шаблона
	public function setTemplateName($template) {
		$this->template = $template;
	}

 // getTemplateName shablon
 // Запрос имени шаблона
	public function getTemplateName() {
		return $this->template;
	}

 // getControllerName shablon
 // Запрос имени контроллера
	public function getControllerName() {
		return $this->controllerName;
	}

 // getActionName shablon
 // Запрос экшена имени
	public function getActionName() {
		return $this->actionName;
	}

}

/*
 * END CODE *
 * конец кода *
 */
 
?>