{include file="header.tpl"}

{foreach from=$canciones item=$cancion}
    <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Cancion: {$cancion->nombre}</h5>
            {foreach from=$albums item=$album} 
                {if $cancion->album == $album->id}
                    <p> {$album->nombre} </p>
                {{/if}}
            {/foreach}
            <p class="card-text">Año: {$cancion->anio}</p>
            <p class="card-text">Genero: {$cancion->genero}</p>
            <p class="card-text">Banda: {$cancion->banda}</p>
            <a href="cancion/{$cancion->id}" class="btn btn-primary">Ver mas</a>
            <a href="deleteSong/{$cancion->id}" class="btn btn-danger">Eliminar</a>
            <a href="editFormSong/{$cancion->id}" class="btn btn-success">Editar</a>
        </div>
    </div>
{/foreach}

<form action="addSong" method="POST">
    Nombre<input class="form-control" type="text" name="nombre">
    Banda<input class="form-control" type="text" name="banda">
    Año<input class="form-control" type="number"  name="anio">
    Genero<input class="form-control" type="text"  name="genero">
    <select name="album">
        {foreach from=$albums item=$album}
            <option value="{$album->id}">{$album->nombre}</option>
        {/foreach}
    </select>
    <button type="submit">Agregar</button>
</form>

{include file="footer.tpl"}