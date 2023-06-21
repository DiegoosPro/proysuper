<?php

include_once "../funciones/funcionesproducto.php";
$datos= getAllProductos();

?>



<?php
include_once "head.php";

?>
  
  <h1>aqui crud</h1>
  <table class="table table-striped">

  <a  href="nuevoproducto.php" class="btn btn-primary">Nuevo producto</a>
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">DESCRIPCION</th>
      <th scope="col">P.COSTO</th>
      <th scope="col">MARCA</th>
      <th scope="col">CATEGORIA</th>
      <th scope="col"> AZUCAR</th>
      <th scope="col">IVA</th>
      <th scope="col">FOTO</th>
      <th scope="col">ACCIONES</th>
    </tr>
  </thead>
  <tbody>
  <?php
if($datos != null){
foreach($datos as $indice => $row){
 ?>
    <tr>
      <th scope="row"><?php echo $row ['pro_id'];?></th>
      <td><?php echo $row ['pro_descripcion'];?></td>
      <td><?php echo $row ['pro_precio_c'];?></td>
      <td><?php echo $row ['marca_id'];?></td>
      <td><?php echo $row ['catego_id'];?></td>
      <td><?php echo $row ['pro_nivel_azucar'];?></td>
      <td><?php echo $row ['pro_apli_iva'];?></td>
      <td>
        <img src="../imagenes/<?php echo $row ['pro_imagen'];?>"  width="60" height="60" >
      </td>
      <td>
          <a href="#" class="btn btn-sm btn-success">Ver</a>
          <a href="#" class="btn btn-sm btn-info">Editar</a>
          <a href="#" class="btn btn-sm btn-warning">Eliminar</a>

      </td>

    </tr>
    <?php
           }//foreach
       }//if

?>
    
  </tbody>
</table>
<?php
include_once "footer.php";

?>

