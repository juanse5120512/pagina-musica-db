{include file="header.tpl"}

<form action="editSong" method="POST">
    <input value="{$song->nombre}"class="form-control inputs-editsongalbum" type="text" name="nombre" required placeholder="Nombre">
    <input value="{$song->genero}"class="form-control inputs-editsongalbum" type="text" name="genero" required placeholder="Genero">
    <input value="{$song->banda}" class="form-control inputs-editsongalbum" type="text"  name="banda" required placeholder="Banda">
    <input value="{$song->anio}" class="form-control inputs-editsongalbum" type="text"  name="anio" required placeholder="Año">
    <input name="id" value="{$song->id}" style=display:none>
    <select name="album" class="inputs-editsongalbum">
        {foreach from=$albums item=$album}
            <option value="{$album->id}">{$album->nombre}</option>
        {/foreach}
    </select>
    <button type="button" class="btn btn-secondary">Editar</button>
</form>

{include file="footer.tpl"}