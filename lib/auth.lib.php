<?php

/*
 *  auth library *
 *  Библиотека авторизации
 */
 
class auth extends html{

	/*
	 * set auth
	 * сброс авторизации
	 */
public function set_auths(){	 
            $_SESSION['is_login'] =   '';
            $_SESSION['dostup'] =  false; 
}
 
	/*
	 * Logout
	 * выход 
	 */
public function log_out(){
	$_SESSION['is_login'] =   '';
    logs::log_file('Пользователь вышел: '. $_SESSION['is_login']. ' - '. date('d.m.Y'));
            $arr = false; 
    session_destroy(); //уничтожаем
	return $arr;
}
    
    /*
	 * is active
	 * проверка авторизации
	 */
    public function isDostups() {
        if (isset($_SESSION["dostup"])) { //если сессия существует
            return $_SESSION["dostup"]; //возвращаем значение сессии
        }
        else return false; //пользователь не авторизован
    }
    
    /**
     * return login users
     * возвращаем логин пользователя 
     */
    public function getLogin() {
        if (self::isAuth()) { //если пользователь авторизован
            return 'Вы вошли как пользователь: <div style="text-align: center;">- '. $_SESSION["is_login"].' - </div>'; //возвращаем логин, который записан в сессию
        }else{
             logs::log_file('Ресурс взломан! Тревога!'. date('d.m.Y'));
            return 'Ресурс взломан! Тревога!';
        }
    }
    
	/*
	 * create auth
	 * создание авторизации
	 */
public function auths($var1, $var2){
     $logins = html::my_thrim(html::htmls(html::string_strip_br($var1, '24')));
     $passwd = html::my_thrim(html::htmls(html::string_strip_br(md5(md5($var2)), '35')));
     
    // подключиться к базе
    	$Authorise = index::Authorise('cms_user', $logins, $passwd);   
    // проверить введеные данные если есть то
if($Authorise){ 
    $views = index::user_view('cms_user', $Authorise); 
    while($usr = sql::fetchArray($views)){
            $_SESSION['is_login'] = $usr['login'];
        // дополнительные необходимые поля можно вывести здесь
        
			$arr = true;
            logs::log_file('Пользователь авторизовался: '. $_SESSION['is_login']. ' - '. date('d.m.Y'));
    }
        } else {
            self::set_auths();
        }
		return $arr;
	}

    /*
	 * location index
	 * направление на главную
	 */
public function isIndexs(){
			return $_SERVER['SERVER_NAME'];
		}
    
    /*
	 * is auth
	 * проверка авторизации
	 */
    public function isAuth() {
        if (isset($_SESSION["is_login"])) { //если сессия существует
            return $_SESSION["is_login"]; //возвращаем значение сессии
        }
        else return false; //пользователь не авторизован
    }
}

/*
 *	END CODE
 *	конец кода
 */
 
?>