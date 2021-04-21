<?php

// class for html option
// класс для html опций

class html {

// convert special charset in html
// Преобразует специальные символы в HTML
public function htmls($string){
    return htmlspecialchars($string);
}

// dellete html and php from string
//  Удаляет HTML и PHP тэги из строки
public function string_strip_br($string, $int){
 if(strlen($string) < $int){
return strip_tags(trim($string)); 
 }
}

// code date charset http
// Определение кодировки символов входных данных HTTP-запроса
public function http_input($var){
return mb_http_input($var);
}

// install / get code http output
// Установка/получение кодировки символов HTTP вывода
public function http_output($var){
return mb_http_output($var);
}

// description key for resource
// описание ключенвые для ресурса
public function meta_key($metas_key, $name_key){ 
	return '<meta name="'.$name_key.'" content="'.$metas_key.'">'; 
}
	
// descripte resource
// описание ресурса
public function meta_cont($metas_cont, $name_cont){ 
	return '<meta name="'.$name_cont.'" content="'.$metas_cont.'">'; 
}

// action general
// переход на главную
public function dirs_html($values){
    $value = 'http://'.SERVERS.'/'. $values;
    return htmlspecialchars($value);
}
	
// count page
// счетчик посещения
public function countb_sites($page, $forward, $ip, $reff){
    
	  if (($forward != NULL)&&($forward != $REMOTE_ADDR))  $ip = $ip."/".$forward;
		$Ssql = "SELECT * FROM cms_count_pages WHERE `name` = '$page'";
		$Sres = $this->QUERYS($Ssql);
		if ($Sres) {
		  if($this->numRows($Sres) > 0){
            $pag = $this->fetchArray($Sres);
            $nm = $pag['id_page'];
		  }
          // Если данная страница отсутствует в таблице cms_count_pages
    	  // и не разу не учитывалась - добавляем данную страницу в таблицу.
		  else {
            $query = "INSERT INTO cms_count_pages VALUES (0,'$page',0)";
			$Sres = $this->QUERYS($query);
			// Выясняем первичный ключ только что добавленной
			// страницы
            $nm = sql::insert_id();
          }
        }
		// Заносим посещение в таблицу cms_count_ip
        $query_main = "INSERT INTO cms_count_ip VALUES (0, '$ip', NOW(), $nm);";
		$Sres = $this->QUERYS($query_main);
        return $nm;
	}
	
//
// определяем браузер клиента
public function gets_browser(){
$nav = ( isset( $_SERVER['HTTP_USER_AGENT'] ) ) ? strtolower( $_SERVER['HTTP_USER_AGENT'] ) : '';
$arr_br['result'] = false;
// для браузера Mozila и FireFox
         if (stristr($nav, "firefox")) {
		 $arr_br['result'] = true;
           $arr_br['brow'] = 'firefox';
         }
          //  для браузера Opera
           elseif (stristr($nav, "opera")){
		   $arr_br['result'] = true;
           $arr_br['brow'] = 'opera';
         }
      // для браузера Safari
         elseif (stristr($nav, "safari")){
		 $arr_br['result'] = true;
            $arr_br['brow'] = 'safari';
         }
      // для браузера Google Chrome
         elseif (stristr($nav, "chrome")) {
		 $arr_br['result'] = true;
            $arr_br['brow'] = 'chrome';
         }
         // для браузера  IE 6
         elseif (stristr($nav, "ie 6")){ // 'MSIE'  'rv:11.0'
		 $arr_br['result'] = true;
            $arr_br['brow'] = 'IE_6';
         }
          // для браузера  IE 7
         elseif (stristr($nav, "ie 7")){ // 'MSIE'  'rv:11.0'
		 $arr_br['result'] = true;
            $arr_br['brow'] = 'IE_7';
         }
          // для браузера  IE 8
         elseif (stristr($nav, "ie 8")) { // 'MSIE'  'rv:11.0'
		 $arr_br['result'] = true;
           $arr_br['brow'] = 'IE_8';
         }

return $arr_br;
}

/* 
 * output browse 
 * выводим браузер
 */
public static function get_brow_res(){
$ch_brow = self::gets_browser();
return $ch_brow['brow'];
}

/*
 * output result browser
 * выводим результат распознования браузера
 */
public static function get_brow_ret(){
$ch_brow = self::gets_browser();
return $ch_brow['result'];
}

// convert string register
//  Преобразует строку в нижний регистр
public static function my_thrim($var){
	return strtolower(trim($var));
}

// get description
// получаем описание
public function get_description($file){ 
    $h1tags = preg_match('/(<meta name="description" content="(.*)" \/>)/i',$file,$patterns); 
    $res = array(); 
    array_push($res,$patterns[2]); 
    array_push($res,count($patterns[2])); 
    return $res; 
} 

// get keyword
// получаем ключи 
public function get_keywords($file){ 
    $h1tags = preg_match('/(<meta name="keywords" content="(.*)" \/>)/i',$file,$patterns); 
    $res = array(); 
    array_push($res,$patterns[2]); 
    array_push($res,count($patterns[2])); 
    return $res; 
} 

// get ling
// получаем ссылку
public function get_a_href($file){ 
    $h1count = preg_match_all('/(href=")(.*?)(")/i',$file,$patterns); 
    return $patterns[2]; 
} 

// filter link
// фильтруем ссылки
public function parse_links($str) {
    $str = str_replace('www.', 'http://www.', $str);
    $str = preg_replace('|http://([a-zA-Z0-9-./]+)|', '<a href="http://$1">$1</a>', $str);
    $str = preg_replace('/(([a-z0-9+_-]+)(.[a-z0-9+_-]+)*@([a-z0-9-]+.)+[a-z]{2,6})/', '<a href="mailto:$1">$1</a>', $str);
    return $str;
}

// select link code
// выбираем ссылки из кода
public function get_links($link){
    $ret = array();
    $dom = new domDocument;
      
    @$dom->loadHTML(file_get_contents($link));
    $dom->preserveWhiteSpace = false;
      
    $links = $dom->getElementsByTagName('a');
    foreach ($links as $tag) {
        $ret[$tag->getAttribute('href')] = $tag->childNodes->item(0)->nodeValue;
    }
    return $ret;
}

// select from code
// выбираем  из кода
public function get_title($link){
    $ret = array();
    $dom = new domDocument;
      
    @$dom->loadHTML(file_get_contents($link));
    $dom->preserveWhiteSpace = false;
      
    $links = $dom->getElementsByTagName('title');
    foreach ($links as $tag) {
        $ret[$tag->getAttribute('title')] = $tag->childNodes->item(0)->nodeValue;
    }
    return $ret;
}


// start buffer
// Запуск буфера
public function html_ob_start(){
	return ob_start();
}


// get buffer
// Получить содержимое текущего буфера
public function html_ob_get_contents(){
	return ob_get_contents();
}

// get and dell buffer
// Получить содержимое текущего буфера и удалить его
public function html_ob_get_clean(){
	return ob_get_clean();
}

// clear buffer
// Очистка буфера
public function html_ob_clean(){
	return ob_end_clean();
}

// output size buffer
// Вывод размера буфера
public function html_ob_get_length(){
	return ob_get_length();
}

// set send buffer output and off buffering 
// Сброс (отправка) буфера вывода и отключение буферизации вывода
public function html_ob_end_flush(){
	return	ob_end_flush(); 
}

}

/*
 * END CODE *
 * конец кода *
 */

?>