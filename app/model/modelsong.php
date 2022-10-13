<?php

class nuevoModelCancion {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db-canciones;charset=utf8', 'root', '');
    }

    public function getAllSongs_m() {
        $query = $this->db->prepare("SELECT * FROM canciones_db");
        $query->execute();
        $canciones = $query->fetchAll(PDO::FETCH_OBJ); 
        return $canciones;
    }

    public function getSongById_m($id){
        $query = $this->db->prepare('SELECT * FROM canciones_db WHERE id = ?');
        $query->execute([$id]);
        $cancion = $query->fetch(PDO::FETCH_OBJ);
        return $cancion;
    }

    public function insert_song_m($nombre, $banda, $anio, $genero, $album){
        $query = $this->db->prepare("INSERT INTO canciones_db (nombre, banda, anio, genero, album) VALUES (?, ?, ?, ?, ?)");
        $query->execute([$nombre, $banda, $anio, $genero, $album]);

        return $this->db->lastInsertId();
    }

    public function deleteSongById_m($id){
        $query = $this->db->prepare('DELETE FROM canciones_db WHERE id = ?');
        $query->execute([$id]);
    }

    public function editSongById_m($nombreEdit, $bandaEdit, $anioEdit, $albumEdit, $generoEdit, $id){
        $query = $this->db->prepare('UPDATE canciones_db SET nombre=?, banda=?, anio=?, album=?, genero=? WHERE id =?');
        $query->execute([$nombreEdit, $bandaEdit, $anioEdit, $albumEdit, $generoEdit, $id]);
        
    }

    public function getCancionByAlbum_m($id){
        $query = $this->db->prepare('SELECT * FROM canciones_db WHERE album=?');
        $query->execute([$id]);
        $canciones = $query->fetchAll(PDO::FETCH_OBJ);
        return $canciones;
    }

}