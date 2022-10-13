<?php
require_once './app/model/modelalbum.php';
require_once './app/view/albumview.php';
require_once './app/model/modelsong.php';
require_once './app/helper/authhelper.php';

class AlbumController{
    private $viewAlbum;
    private $modelAlbum;
    
    public function __construct() {
        $this->modelAlbum = new nuevoModelAlbum();
        $this->viewAlbum = new AlbumView();
    }
    
    public function showFormularioEditAlbum_c($id){
        $album = $this->modelAlbum->getAlbumById_m($id);
        $this->viewAlbum->showFormAlbum_v($album);
   
    }

    public function addAlbum_c(){
        $nombre = $_POST['nombre'];
        $artista = $_POST['artista'];
        $anio = $_POST['anio'];

        $this->modelAlbum->insert_album_m($artista, $nombre, $anio);

        header("Location: " . BASE_URL . "show_albums"); 
    }

    public function edit_album_c($id){
        $id = $_POST['id'];
        $nombreEdit = $_POST['nombre'];
        $artistaEdit = $_POST['artista'];
        $anioEdit = $_POST['anio'];
       

        $this->modelAlbum->editAlbumById_m($nombreEdit, $artistaEdit, $anioEdit, $id);
        header("Location: " . BASE_URL . "show_albums"); 
    }

    public function deleteAlbumByid_c($id){
        $this->modelAlbum->deleteAlbumById_m($id);
        header("Location: " . BASE_URL . "show_albums"); 
    }

    
 }    