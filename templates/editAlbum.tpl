{include file="header.tpl"}

<form action="editAlbum" method="POST">
    <input class="form-control inputs-editsongalbum" type="text" name="nombre" placeholder="Nombre">    
    <input class="form-control inputs-editsongalbum" type="text" name="artista" placeholder="Artista">
    <input class="form-control inputs-editsongalbum" type="text" name="anio" placeholder="Año">
    <input name="id" value="{$album->id}" style=display:none>
    <button type="button" class="btn btn-secondary inputs-editsongalbum">Editar</button>
</form>

{include file="footer.tpl"}