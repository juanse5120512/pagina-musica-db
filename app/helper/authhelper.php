<?php

class AuthHelper {
    
    // public function __construct(){
    // if(session_status() != PHP_SESSION_ACTIVE)
    // session_start();
    // }

    public function checkLoggedIn() {
        session_start();
        if (!isset($_SESSION['IS_LOGGED'])) {
            header("Location: " . BASE_URL);
            die();
        }
    } 
}