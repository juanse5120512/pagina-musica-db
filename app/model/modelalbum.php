<?php

class nuevoModelAlbum {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db-canciones;charset=utf8', 'root', '');
    }

    public function getAllAlbums_m() {
        $query = $this->db->prepare("SELECT * FROM albums_db");
        $query->execute();
        $canciones = $query->fetchAll(PDO::FETCH_OBJ); 
        return $canciones;
    }

    public function getAlbumById_m($id){
        $query = $this->db->prepare('SELECT * FROM albums_db WHERE id = ?');
        $query->execute([$id]);
        $album = $query->fetch(PDO::FETCH_OBJ);
        return $album;
    }

    public function editAlbumById_m($artistaEdit, $nombreEdit, $anioEdit, $id){
        
        $query = $this->db->prepare('UPDATE albums_db SET nombre=?, artista=?, anio=? WHERE id =?');
        $query->execute([$artistaEdit, $nombreEdit, $anioEdit, $id]);
        
    }

    public function deleteAlbumById_m($id){
        $query = $this->db->prepare('DELETE FROM albums_db WHERE id = ?');
        $query->execute([$id]);
    }

    public function insert_album_m($artista, $nombre, $anio){
        $query = $this->db->prepare("INSERT INTO albums_db (artista, nombre, anio) VALUES (?, ?, ?)");
        $query->execute([$artista, $nombre, $anio]);

        return $this->db->lastInsertId();
    }
}
