{include file="header.tpl"}


<div class="albums">
    {foreach from=$albums item=$album}  
        
        <div class="cards-albums">
            <a href="songbyalbum/{$album->id}" class="btn btn-primary btn-album albumnombre">{$album->nombre}</a>
            {if isset($smarty.session.USER_ID)}
            <a href="deleteAlbum/{$album->id}" class="btn btn-danger btn-album">Eliminar</a>
            <a href="editForm_album/{$album->id}" class="btn btn-success btn-album">Editar</a>
            {/if}    
        </div>

    {/foreach}
</div>

{if isset($smarty.session.USER_ID)}
<form action="addAlbum" method="POST">
    <input class="form-control inputs-album" type="text" name="nombre" placeholder="Nombre del Album">    
    <input class="form-control inputs-album" type="text" name="artista" placeholder="Artista">
    <input class="form-control inputs-album" type="number" name="anio" placeholder="Año">
    <button type="submit" class="btn btn-success inputs-album">Agregar album nuevo</button>
</form>
{/if}   

{include file="footer.tpl"}