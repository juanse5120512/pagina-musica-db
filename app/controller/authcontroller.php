<?php
require_once './app/view/authview.php';
require_once './app/model/authmodel.php';

class AuthController{
    private $view;
    private $model;
    
    public function __construct() {
        $this->model = new UserModel();
        $this->view = new AuthView();
    }

    public function mostrarFormLogin_c() {
        $this->view->mostrarFormLogin_v();
    }

    public function validarUser_c() {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $user = $this->model->getUserByEmail_m($email);

        if ($user && password_verify($password, $user->contraseña)) {

            session_start();
            $_SESSION['USER_ID'] = $user->id;
            $_SESSION['USER_EMAIL'] = $user->email;
            $_SESSION['IS_LOGGED'] = true;

            header("Location: " . BASE_URL);
        } else {
          
           $this->view->mostrarFormLogin_v("El usuario o la contraseña no existe.");

        } 
    }

    public function logout_c() {
        session_start();
        session_destroy();
        header("Location: " . BASE_URL);
    }
}