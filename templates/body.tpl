{include file="header.tpl"}
<div class="songs">
{foreach from=$canciones item=$cancion}
    <div class="card" style="width: 18rem; margin: 10px;">
        <div class="card-body">
            <h5 class="card-title">Cancion: {$cancion->nombre}</h5>
            {foreach from=$albums item=$album} 
                {if $cancion->album == $album->id}
                    <p> Album: {$album->nombre} </p>
                {{/if}}
            {/foreach}
            <p class="card-text">Año: {$cancion->anio}</p>
            <p class="card-text">Genero: {$cancion->genero}</p>
            <p class="card-text">Banda: {$cancion->banda}</p>
            <a href="cancion/{$cancion->id}" class="btn btn-primary">Ver mas</a>
            {if isset($smarty.session.USER_ID)}
            <a href="deleteSong/{$cancion->id}" class="btn btn-danger">Eliminar</a>
            <a href="editFormSong/{$cancion->id}" class="btn btn-success">Editar</a>
            {/if}
        </div>
    </div>
{/foreach}
</div>

{if isset($smarty.session.USER_ID)}
<form action="addSong" method="POST" >
    <input class="form-control inputs" type="text" name="nombre" placeholder="Nombre">
    <input class="form-control inputs" type="text" name="banda" placeholder="Banda">
    <input class="form-control inputs" type="number"  name="anio" placeholder="Año">
    <input class="form-control inputs" type="text"  name="genero" placeholder="Genero" >
    <select name="album" class="inputs">
        {foreach from=$albums item=$album}
            <option value="{$album->id}">{$album->nombre}</option>
        {/foreach}
    </select>
    <button type="submit" class="btn btn-success">Agregar</button>
</form>
{/if}

{include file="footer.tpl"}