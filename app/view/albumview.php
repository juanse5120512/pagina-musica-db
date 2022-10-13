<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class AlbumView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); 
    }


    public function showFormAlbum_v($album){
        $this->smarty->assign('album', $album);
        $this->smarty->display('editAlbum.tpl');
    }

    
}    