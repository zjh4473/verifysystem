<?php

/**
 * @author 紫旭网络
 * @copyright 2017
 */

header("Content-type: text/html; charset=utf-8");
require_once("../inc/config.php");

        $username = addslashes(_post("username"));
        $password = addslashes(_post("password"));
        $action = addslashes(_post("action"));
        if($username == ""&&$password==""&&$action == ""){
            $return_json = json_encode(array("status"=>"error"));//重新提交失败
            echo $return_json;
        }
    
    if($action == "login"){
        echo login($conn,$username,$password);
    }


    function login($conn,$username,$password){
        $sql_select = "SELECT uid,available FROM admin WHERE username='$username' AND password='$password'";
        $result_select = mysqli_query($conn,$sql_select);
        $sql_select_array = mysqli_fetch_array($result_select);
        $num = mysqli_num_rows($result_select);
        session_start();
        if($num >= 1){
            switch($sql_select_array["available"]){
                case "1":
                    $_SESSION["username"]=$username;
                    $result_json = json_encode(array("status"=>"success","redirect"=>"adminmain.php"));
                    return $result_json;
                    break;
                case "2":
                    $result_json = json_encode(array("status"=>"locked"));
                    return $result_json;
                    break;
                default:
                    $result_json = json_encode(array("status"=>"error"));
                    return $result_json;
            }
        }
        else{
            $result_json = json_encode(array("status"=>"invalid"));
            return $result_json;
        }
    }
	
	function _get($str){ 
		$val = !empty($_GET[$str]) ? $_GET[$str] : null; 
		return $val; 
	}
	function _post($str){ 
		$val = !empty($_POST[$str]) ? $_POST[$str] : null; 
		return $val; 
	} 
?>