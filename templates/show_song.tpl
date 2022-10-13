{include file="header.tpl"}


<div class="card" style="width: 18rem;">
<img src="..." class="card-img-top" alt="...">
<div class="card-body">
    <h5 class="card-title">{$cancion->nombre}</h5>
    <p class="card-text">{$cancion->album}</p>
    <p class="card-text">{$cancion->anio}</p>
    <p class="card-text">{$cancion->genero}</p>
    <p class="card-text">{$cancion->banda}</p>
</div>
</div>


{include file="footer.tpl"}