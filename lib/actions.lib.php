<?php

/*
 * library actions *
 * библиотека экшенов*
 */

class actions{

	/*
	 *  function actions
	 * функция экшенов
	 */
public function url_action($url) {

// установили переменную
	static $strps = '';
	
		if($url == 'kontact_admin'){
			$strps = LANG_INSTATSW1D8_WWW1Q1_ADM;
	   }elseif($url == 'baners_admin'){
			$strps = LANG_INSTATSW1D8Q6_ADM;
	   }elseif($url == 'news_admin'){
			$strps = LANG_INSTATSW1D3Q5_ADM;
	   }elseif($url == 'automat_admin'){
			$strps = LANG_INSTATSW1D8Q4_ADM;
	   }elseif($url == 'rstrategii_admin'){
			$strps = LANG_INSTATSW1D3Q3_ADM;
	   }elseif($url == 'rbrokeri_admin'){
			$strps = LANG_INSTATSW1D8Q2_ADM;
	   }elseif($url == 'less_admin'){
			$strps = LANG_INSTATSW1D3Q1_ADM;
	   }elseif($url == 'index'){
			$strps = LANG_INSTATSW1D8;
	   }elseif($url == 'automat'){
			$strps = LANG_INSTATSW1D8Q4;
		}elseif($url == 'baners'){
			$strps = LANG_INSTATSW1D8Q6;
		}elseif($url == 'help'){
			$strps = LANG_INSTATSW1D3;
		}elseif($url == 'poseshenie'){
			$strps = LANG_INSTATSW1D8_WWW1;
		}elseif($url == 'kontact'){
			$strps = LANG_INSTATSW1D8_WWW1Q1;
		}elseif($url == 'less'){
			$strps = LANG_INSTATSW1D3Q1;
		}elseif($url == 'news'){
			$strps = LANG_INSTATSW1D3Q5;
		}elseif($url == 'rbrokeri'){
			$strps = LANG_INSTATSW1D8Q2;
		}elseif($url == 'rstrategii'){
			$strps = LANG_INSTATSW1D3Q3;
		}
        return $strps;
    }


}

/*
 * END CODE *
 * конец кода *
 */

?>