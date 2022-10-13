<?php
require_once './app/controller/songcontroller.php';
require_once './app/controller/authcontroller.php';
require_once './app/controller/albumcontroller.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

$action = 'home';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

$songController = new nuevoController();
$albumController = new AlbumController();

switch ($params[0]) {
    case 'home':
        $songController->showSongs_albums_c();
        break;
    case 'show_albums':
        $songController->showAlbums_c();
        break;
    case 'songbyalbum':
        $id = $params[1];
        $songController->songByAlbum_c($id);
        break;
    case 'cancion':
        $id = $params[1];
        $songController->showSongByid_c($id);
        break;
    case 'deleteSong':
        $id = $params[1];
        $songController->deleteSongByid_c($id);
        break;
    case 'editFormSong':
        $id = $params[1];
        $songController->showFormularioEditSong_c($id);
        break;
    case 'addSong':
        $songController->addSong_c();
        break;
    case 'editSong':
        $id = $params[1];
        $songController->editSong_c($id);
        break;
    case 'login':
        $authController = new AuthController();
        $authController->mostrarFormLogin_c();
        break;
    case 'validate':
        $authController = new AuthController();
        $authController->validarUser_c();
        break;
    case 'logout':
        $authController = new AuthController();
        $authController->logout_c();
        break;
    case 'deleteAlbum':
        $id = $params[1];
        $albumController->deleteAlbumByid_c($id);
        break;
    case 'editForm_album':
        $id = $params[1];
        $albumController->showFormularioEditAlbum_c($id);
        break;  
    case 'addAlbum':
        $albumController->addAlbum_c();
        break; 
    case 'editAlbum':
        $id = $params[1];
        $albumController->edit_album_c($id);
        break;     
    default:
        echo ('404 PAGINA NO ENCONTRADA');
        break;
}
