<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';
require_once './app/helper/authhelper.php';

class NuevaView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); 
    }

    public function showSongs_albums_v($songs, $albums){
        $this->smarty->assign('canciones', $songs);
        $this->smarty->assign('albums', $albums);
        $this->smarty->display('body.tpl');
    }

    public function showAlbums_v($albums){
        $this->smarty->assign('albums', $albums);
        $this->smarty->display('albums.tpl');
    }

    public function showSongByid_v($song){
        $this->smart->assign('song', $song);
        $this->smarty->display('show_song.tpl');
    }

    public function showForm_v($song, $albums){
        $this->smarty->assign('song', $song);
        $this->smarty->assign('albums', $albums);
        $this->smarty->display('editSong.tpl');
    }

    public function showSongByAlbum_v($canciones, $albums){
        $this->smarty->assign('songs', $canciones);
        $this->smarty->assign('albums', $albums);
        $this->smarty->display('cancionesXalbums.tpl');
    }


}   