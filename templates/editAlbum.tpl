{include file="header.tpl"}

<form action="editAlbum" method="POST">
    Nombre<input class="form-control" type="text" name="nombre">    
    Artista<input class="form-control" type="text" name="artista">
    Año<input class="form-control" type="text" name="anio">
    <input name="id" value="{$album->id}" style=display:none>
    <button type="submit">Editar Album</button>
</form>

{include file="footer.tpl"}