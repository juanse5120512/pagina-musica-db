{include file="header.tpl"}

{foreach from=$songs item=$cancion}
    
    {foreach from=$albums item=$album} 
        {if $cancion->album == $album->id}
            <p> {$album->nombre} </p>
        {{/if}}
    {/foreach}
    <div class="card" style="width: 18rem;">
        
        <div class="card-body">
            <h5 class="card-title">Nombre: {$cancion->nombre}</h5>
            <p class="card-text">Año: {$cancion->anio}</p>
            <p class="card-text">Genero: {$cancion->genero}</p>
            <p class="card-text">Banda: {$cancion->banda}</p>
        </div>
    </div>

{/foreach}

{include file="footer.tpl"}
