<?php

/*
 * library error *
 * библиотека ошибок
 */
 
class errors {	 
 
// function system error 
// функция вывода системных ошибок
 public function system_error($vars){
 logs::log_file($vars.'-'.Date('h:i:s - d:m:y'));
 $var = '<div class="system_errors"><h1 align="center"> Сорри .... </h1><p align="center">'.$vars.'</p></div>';
 return $var;
 }
 
// function system core error 
// функция вывода системных ошибок ядра
 public function core_error($vars){
 logs::log_file($vars.'-'.Date('h:i:s - d:m:y'));
 $var = '<div class="system_errors"><h1 align="center"> Сорри .... </h1><p align="center">'.$vars.'</p></div>';
 return $var;
 }
 
// function system error 
// функция вывода системных ошибок 
 public function  get_errors_route($var){
 logs::log_file('Ядро не может найти шаблон системы! -'.Date('h:i:s - d:m:y'));
 $exts = '
 <div align="center"><h1>Ядро не может найти шаблон системы!</h1></div>
 <br>
 <div align="center"><img src="templates/img/404.jpg"></div>
 <br>
 ';
 return $exts;
 }
 
}

/*
 * END CODE *
 * Конец кода *
 */

?>
