{include file="header.tpl"}


<div>
    {foreach from=$albums item=$album}  
        
        <a href="songbyalbum/{$album->id}" class="btn btn-primary">{$album->nombre}</a>
        
        {if isset($smarty.session.USER_ID)}
        <a href="deleteAlbum/{$album->id}" class="btn btn-danger">Eliminar</a>
        <a href="editForm_album/{$album->id}" class="btn btn-success">Editar</a>
        {/if}    

    {/foreach}
</div>

{if isset($smarty.session.USER_ID)}
<form action="addAlbum" method="POST">
    Nombre del album<input class="form-control" type="text" name="nombre">    
    Artista<input class="form-control" type="text" name="artista">
    Año<input class="form-control" type="number"  name="anio">
    <button type="submit">Agregar album nuevo</button>
</form>
{/if}   

{include file="footer.tpl"}