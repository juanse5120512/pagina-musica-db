{include file="header.tpl"}

<form action="editSong" method="POST">
    Nombre<input value="{$song->nombre}"class="form-control" type="text" name="nombre" required>
    Genero<input value="{$song->genero}"class="form-control" type="text" name="genero" required>
    Banda<input value="{$song->banda}" class="form-control" type="text"  name="banda" required>
    Año<input value="{$song->anio}" class="form-control" type="text"  name="anio" required>
    <input name="id" value="{$song->id}" style=display:none>
    <select name="album">
        {foreach from=$albums item=$album}
            <option value="{$album->id}">{$album->nombre}</option>
        {/foreach}
    </select>
    <button type="submit" class="success">Editar</button>
</form>

{include file="footer.tpl"}