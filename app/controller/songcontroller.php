<?php
require_once './app/model/modelsong.php';
require_once './app/view/songview.php';
require_once './app/model/modelalbum.php';
require_once './app/helper/authhelper.php';


class NuevoController {
    private $modelSong;
    private $view;
    private $modelAlbum;

    public function __construct() {
        $this->modelSong = new nuevoModelCancion();
        $this->view = new NuevaView();
        $this->modelAlbum = new nuevoModelAlbum();
    }

    public function showSongs_albums_c(){
        $songs = $this->modelSong->getAllSongs_m();
        $albums = $this->modelAlbum->getAllAlbums_m();
        $this->view->showSongs_albums_v($songs, $albums);
    }

    public function showAlbums_c(){
        $albums = $this->modelAlbum->getAllAlbums_m();
        $this->view->showAlbums_v( $albums);
    }

    public function showSongByid_c($id){
        $song = $this->modelSong->getSongById_m($id);
        $this->view->showSongByid_v($song);
    }

    public function addSong_c(){
        
        $nombre = $_POST['nombre'];
        $banda = $_POST['banda'];
        $anio = $_POST['anio'];
        $genero = $_POST['genero'];
        $album = $_POST['album'];

       $this->modelSong->insert_song_m($nombre, $banda, $anio, $genero, $album);

        header("Location: " . BASE_URL); 
    }

    public function deleteSongByid_c($id){
        $this->modelSong->deleteSongById_m($id);
        header("Location: " . BASE_URL);
    }

    public function editSong_c($id){
        $id = $_POST['id'];
        $nombreEdit = $_POST['nombre'];
        $bandaEdit = $_POST['banda'];
        $anioEdit = $_POST['anio'];
        $albumEdit = $_POST['album'];
        $generoEdit = $_POST['genero'];


        $this->modelSong->editSongById_m($nombreEdit, $bandaEdit, $anioEdit, $albumEdit, $generoEdit, $id);
        header("Location: " . BASE_URL);
    }

    public function showFormularioEditSong_c($id){
        $albums = $this->modelAlbum->getAllAlbums_m();
        $song = $this->modelSong->getSongById_m($id);
        $this->view->showForm_v($song, $albums);
    }

    public function songByAlbum_c($id){
        $canciones = $this->modelSong->getCancionByAlbum_m($id);
        $albums = $this->modelAlbum->getAllAlbums_m();
        $this->view->showSongByAlbum_v($canciones, $albums);
    }

   

}