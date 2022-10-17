<?php

class UserModel{

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db-canciones;charset=utf8', 'root', '');
    }

    public function getUserByEmail_m($email) {
        $query = $this->db->prepare("SELECT * FROM users_db WHERE email = ?");
        $query->execute([$email]);
        return $query->fetch(PDO::FETCH_OBJ);
    }

}