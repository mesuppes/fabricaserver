<!DOCTYPE html>
<html>
<head>
	<title>Detalle receta</title>
</head>
<body>

<?php

$detalleReceta=ControladorFormularios::ctrDetalleReceta();

$detalleinsumos=ControladorFormularios::ctrInsumosReceta();

$productos=ControladorFormularios::ctrStockProductos();

$productosxreceta=ControladorFormularios::ctrProductosReceta();

foreach ($detalleReceta as $receta) {


?>


<div class="container">
	<br>
  				<div class="d-flex">
  					<div class="mr-auto">
  					<h2>Receta: <a class="nombrereceta"><?php echo $receta['nombre'] ?></a> <span class="medalla"><?php if ($_GET['estado']==1) {echo '     <span class="badge badge-success medal">Activa</span>';}else{echo '<span class="badge badge-danger medal">Desactivada</span>';}?>
					</span>
  				</h2>
  					</div>
  					<div>
  						<div class="boton">
  						<?php if ($_GET['estado']==1) {echo '<a type="button" class="btn btn-warning btn-lg" id="botonDuplicar" href="index.php?pagina=agregarReceta&idReceta='.$_GET['idReceta'].'">Duplicar</a>
              <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#ConfirmarEstadoReceta" data-accion="desactivar" id="botonCambiarEstado">Desactivar Receta</button>';}else{echo '<a type="button" class="btn btn-warning btn-lg" id="botonDuplicar" href="index.php?pagina=agregarReceta&idReceta='.$_GET['idReceta'].'">Duplicar</a>
              <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#ConfirmarEstadoReceta" data-accion="activar" id="botonCambiarEstado">Activar Receta</button>';}?>
  						</div>
  					</div>	
  					<br>
              </div>
              <hr>
              <br>
                  <div class="row">
                            <div class="input-group col-6">
                              <div class="input-group-prepend">
                         <span class="input-group-text">N° Receta:</span>
                                </div>
                                <input type="text" class="form-control text-center recetaid" id="spanrecetaid" value="<?php echo $_GET['idReceta'] ?>" readonly>
                              </div>
                            <div class="input-group col-6">
                                <div class="input-group-prepend">
                         <span class="input-group-text">Fecha de Alta:</span>
                                </div>
                                <input type="text" class="form-control text-center fechadealta" id="spanrecetafechaalta" value="<?php echo $receta['fecha_alta'] ?>" readonly>
        				            </div>
                    </div>
                    <br>
                    <br>
                    <h5>Insumos de la receta</h5>
                    <hr>
                    <div class="container">
                      <div class="col-6">
                        <table class="table table-hover table-sm">
    						<thead class="thead-light">
        						<tr>
           							<th scope="col" class="text-center text-white bg-dark">ID</th>
                        <th scope="col" class="text-white bg-dark">Insumo</th>
                        <th scope="col" class="text-center text-white bg-dark">Cantidad</th>
        						</tr>
      						</thead>
  							<tbody>
<?php

foreach ($detalleinsumos as $insumo) {

echo '<tr><td scope="col" class="text-center">' . $insumo[1] . '</td><td scope="col">' . $insumo[2] . '</td><td scope="col" class="text-center">' . $insumo[3].' ' . $insumo[4] . '</td></tr>';

};
?>
  								
  							</tbody>
					</table>
        </div>
        </div>
        <br>
   <div class="row">
                <div class="input-group col-6"> 
                    <div class="input-group-prepend">
                    <span class="input-group-text">Peso total de insumos:</span>
                  </div>
                    <input type="text" class="form-control text-right" name="pesoTotInsumosCrearReceta" value="<?php echo $receta['peso_total_insumos_kg'] ?> kilos" readonly>
                  <div class="input-group-append">
              <button type="button" class="btn font-weight-bold" data-toggle="tooltip" data-placement="right" title="El total de insumos en kilos que utilizará un paston de 100 kilos.">
   <i class="far fa-question-circle"></i>
</button>
              </div>
                </div>
              </div>
              <br>
              <br>
              <h5>Información de producción</h5>
              <hr>
                    <br>
                    <div class="row">
                     <div class="input-group col-6">
                      <div class="input-group-prepend">
                         <span class="input-group-text">Porcentaje de carne:</span>
                       </div>
                                <input type="text" class="form-control text-center recetaporcentajecarne" id="spanrecetaporcenpaston" value="<?php echo $receta['porcent_carne'] ?> %" readonly>
                                </div>
                            <div class="input-group col-6">
                              <div class="input-group-prepend">
                         <span class="input-group-text">Merma esperada:</span>
                       </div>
                                <input type="text" class="form-control text-center recetamermaesperada" id="spanrecetamermaesp" value="<?php echo $receta['merma_esperada'] ?> %" readonly>
                              <div class="input-group-append">
                                <button type="button" class="btn font-weight-bold" data-toggle="tooltip" data-placement="top" title="Porcentaje de merma esperada con respecto al producto fresco, luego de finalizar el proceso de secado">
                                 <i class="far fa-question-circle"></i>
                                </button>
                              </div>
                            </div>
                            </div>
                            <br>
                          <div class="row">
                        <div class="input-group col-6">
                      <div class="input-group-prepend">
                         <span class="input-group-text">Dias de producción:</span>
                       </div>
                                <input type="text" class="form-control text-center recetadiasproduccion" id="spanrecetadiasprodu" value="<?php echo $receta['dias_produccion'] ?> días" readonly>
                           <div class="input-group-append">
                                <button type="button" class="btn  font-weight-bold" data-toggle="tooltip" data-placement="top" title="Cantidad de días desde que comienza el proceso productivo (amasado) hasta que el producto es envasado.">
                                 <i class="far fa-question-circle"></i>
                                </button>
                              </div>
                                </div>
                            <div class="input-group col-6">
                              <div class="input-group-prepend">
                         <span class="input-group-text">Vencimiento:</span>
                       </div>
                                <input type="text" class="form-control text-center recetadiasvencimiento" id="spanrecetadiasven" value="<?php echo $receta['dias_vencimiento'] ?> días" readonly>
                              <div class="input-group-append">
                                <button type="button" class="btn font-weight-bold" data-toggle="tooltip" data-placement="top" title="Cantidad de días desde que el producto es envasado,  hasta que se vence.">
                                 <i class="far fa-question-circle"></i>
                                </button>
                              </div>
                            </div>
        				</div>
                      <br>
                      <br>
              <h5>Producto fresco</h5>
              <hr>
                           <div class="row">
        <div class="input-group col-6">
                              <div class="input-group-prepend">
                         <span class="input-group-text">Largo por unidad:</span>
                       </div>
                                <input type="text" class="form-control text-center recetalargoporunidad" id="spanrecetalargouni" value="<?php echo $receta['largo_unidad_lote'] ?> metros/unidad" readonly>
                              <div class="input-group-append">
                                <button type="button" class="btn font-weight-bold" data-toggle="tooltip" data-placement="top" title="Largo de la unidad fresca, antes de que ingrese al secadero.">
                                 <i class="far fa-question-circle"></i>
                                </button>
                              </div>
                            </div>
                            <div class="input-group col-6">
                              <div class="input-group-prepend">
                         <span class="input-group-text">Peso por unidad:</span>
                       </div>
                                <input type="text" class="form-control text-center recetalargoporunidadesperado" id="spanrecetalargouni" value="<?php echo $receta['peso_unidad_lote'] ?> kilos/unidad" readonly>
                              <div class="input-group-append">
                                <button type="button" class="btn font-weight-bold" data-toggle="tooltip" data-placement="top" title="Peso de la unidad fresca, antes de que ingrese al secadero.">
                                 <i class="far fa-question-circle"></i>
                                </button>
                              </div>
                            </div>
                              </div>
                              <br>
                              <div class="row">
                <div class="input-group col-6"> 
                    <div class="input-group-prepend">
                    <span class="input-group-text">Cantidad de unidades:</span>
                  </div>
                    <input type="number" min=0 step=0.01 class="form-control text-right" id="cantunisfrescas" name="cantidad_unidades_lote" value="<?php echo $receta['cantidad_unidades_lote'] ?>" readonly>
                  <div class="input-group-append">
                  <span class="input-group-text">unidades</span><button type="button" class="btn font-weight-bold" data-toggle="tooltip" data-placement="right" title="Cantidad de unidades frescas obtenidas con un pastón de 100 kilos.">
   <i class="far fa-question-circle"></i>
</button>
              </div>
                </div>

                              </div>
                      <br>
              <h5>Producto terminado</h5>
              <hr>
                                 <div class="row">
                   <div class="input-group col-6">
                              <div class="input-group-prepend">
                         <span class="input-group-text">Largo por unidad esperado:</span>
                       </div>
                                <input type="text" class="form-control text-center spanrecetalargouniesperado" id="spanrecetalargouniesperado" value="<?php echo $receta['largo_unidad_esperado'] ?> metros/unidad" readonly>
                              <div class="input-group-append">
                                <button type="button" class="btn font-weight-bold" data-toggle="tooltip" data-placement="top" title="Largo del producto final que será envasado.">
                                 <i class="far fa-question-circle"></i>
                                </button>
                              </div>
                            </div>
                            <div class="input-group col-6">
                              <div class="input-group-prepend">
                         <span class="input-group-text">Peso por unidad esperado:</span>
                       </div>
                                <input type="text" class="form-control text-center recetapesoporunidadesperado" id="spanrecetapesouniesperado" value="<?php echo $receta['peso_unidad_esperado'] ?> kilos/unidad" readonly>
                              <div class="input-group-append">
                                <button type="button" class="btn  font-weight-bold" data-toggle="tooltip" data-placement="top" title="Peso del producto final que será envasado.">
                                 <i class="far fa-question-circle"></i>
                                </button>
                              </div>
                            </div>
        				</div>
                <br>
     <form method="post" class="needs-validation" id="modificarproductosreceta">
     	<input type="hidden" name="idReceta" value="<?php echo $_GET['idReceta']?>">
 <h5>Complete los productos que se obtendran con esta receta:</h5>
              <br>
              <div class="container">
                  <table class="table table-sm">
                <thead>
                    <tr>
                      <td scope="col" class="text-center text-white bg-dark">Codigo</td>
                      <td scope="col" class="text-center text-white bg-dark">Producto</td>
                       <td scope="col" class="text-center text-white bg-dark">¿En cuanto se cortará el semielaborado?</td>
                        <td scope="col" class="text-center text-white bg-dark"></td>
                    </tr> 
                  </thead>
                <tbody id="TablaProductos">

<?php

foreach($productosxreceta as $productoreceta){
                           

              echo '             <tr>
                        <td scope="col">
                          <a class="idproductoselec">' . $productoreceta["id_producto"] . '</a>
                        </td>
                        <td scope="col">
                          <select class="custom-select nomprodu" name="idProductoCrearReceta[]" required>

  <option selected value="' . $productoreceta["id_producto"] . '">' . $productoreceta["nombre"] . '</option>
 </select></td>
                         <td scope="col">
                          <div class="input-group">

 <input type="number" min=0 step=1 name="unidadesNecesariasCrearReceta[]" class="form-control text-right cantprodu" value="'.$productoreceta["unidades_necesarias"].'" placeholder="Cantidad" required>
                              <div class="input-group-append">
                  <span class="input-group-text"><a class="unitprodu">cortes</a></span><button type="button" class="btn" data-toggle="tooltip" data-placement="right" title="Es la cantidad en que se dividirá el semielaborado. Ejemplo: La bondiola pack de 350 g se divide en 3.">
  <i class="far fa-question-circle"></i>
          </button>
              </div>
                  </div>
                        </td>

                           <td scope="col">
                                    <button type="button" class="btn btn-danger btn-sm borrar">Borrar</button>
                                     </td>
                    </tr>'; 
       };?>

                </tbody>
            </table>
<br>
            <button type="button" id="BotonAgregarProducto" class="btn btn-success btn-sm">Agregar Producto</button>
             <button type="button" id="BotonGuardarProductos" class="btn btn-info btn-sm">Guardar productos</button>
          </div>
     </form>
                <br>
   <h5>Descripción</h5>
              <hr>
              <textarea class="form-control" style="min-width: 100%" readonly> <?php echo $receta['descripcion']?></textarea>
              <br>
      			</div>



  <div class="modal fade" id="ConfirmarEstadoReceta" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Confirmar estado</h5>
        </div>
        <div class="modal-body">
		
		  <p>Usted está a punto de <a class="accion"></a> esta receta.</p>

          <p>¿Confirma que desea <a class="accion"></a> esta receta?</p>

        </div>
        <div class="modal-footer">
   			<button type="button" class="btn btn-success btn-lg" id="confirmar">Sí</button>
          <button type="button" class="btn btn-danger btn-lg" data-dismiss="modal">No</button>
        </div>
      </div>
    </div>
  </div>

   <div class="modal fade" id="Confirmada" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
    	</div>
        <div class="modal-body">
        		<div class="alert alert-success" role="alert">
          <h5 class="modal-title">Receta <a class="confirmacion"></a></h5>
        </div>
        </div>
        <div class="modal-footer">
   			<button type="button" class="btn btn-secondary btn-lg" id="aceptar">Aceptar</button>
        </div>
      </div>
    </div>
  </div>

<!-- Mensaje confirmacion -->
  <div class="modal fade" id="MensajeConfirmacion" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
        </div>
        <div class="modal-body">
        </div>
        <div class="modal-footer">
          <a type="button" class="btn btn-info" onclick="location.reload();">Aceptar</a>
        </div>
      </div>
    </div>
  </div>


<?php

}

?>

<script>

 (function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      var button= document.getElementById('BotonGuardarProductos');
      button.addEventListener('click', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }else{
        //alert("cargo")
        cargarproductos()}
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

      $('#BotonAgregarProducto').on('click', function (event) {

agregarproducto();
function agregarproducto() {

  $("#TablaProductos")
  .append
  (       
          $('<tr>').append(
           $('<td>').attr('scope','col')
          .append
          (
            $('<a class="idproductoselec"></a>')
            ),

            $('<td>').attr('scope','col')
          .append
          (
            
              $("<select class='custom-select nomprodu' name='idProductoCrearReceta[]' required><option value='0'>Seleccione el producto</option></select>")

              	<?php

foreach($productos as $producto){

  echo '.append(`<option value="' . $producto["id_producto"] . '">' . $producto["nombre"] . '</option>`)';

};

?>

            ),
          $('<td>').attr('scope','col')
          .append
          (
            
              $("<div class='input-group'><input type='number' min=0 step=1 name='unidadesNecesariasCrearReceta[]' class='form-control text-right cantprodu' placeholder='Cantidad' required><div class='input-group-append'><span class='input-group-text'><a class='unitprodu'>cortes</a></span><button type='button' class='btn' data-toggle='tooltip' data-placement='right' title='Ingrese la cantidad en que se dividirá el semielaborado. Ejemplo: La bondiola pack de 350 g se divide en 3.'><i class='far fa-question-circle'></i></button></div></div>")

            ),

             $('<td>').attr('scope','col')
          .append
          (
            $('<button type="button" class="btn btn-danger btn-sm borrar">Borrar</button>')
            ),

))
    $('[data-toggle="tooltip"]').tooltip()
     
    }
   }
   );

      $(function () {
                 $(document).on('click', '.borrar', function (event) {
                       event.preventDefault();
                        $(this).closest('tr').remove();
    });
});

       $('#TablaProductos').on('change', '.nomprodu',function(){
        var produID = $(this).val();
        var produ=$(this);
          $(produ).closest('tr').find('.idproductoselec').text(''+ produID);

        })



 function cargarproductos(event) {

                           
       $.post("datos.php",$("#modificarproductosreceta").serialize(),function(respuestacod){

//alert(respuestacod)
               
if(respuestacod=='"OK"'){

	   var modal=$('#MensajeConfirmacion').modal('show')
                 	modal.find('.modal-body').empty()
                 	modal.find('.modal-body').html(
                 		'<div class="alert alert-success" role="alert"><h4 class="alert-heading">Productos guardados</h4><p>Se han guardado los productos correctamente</p><hr></div>')
             
                } else {
                    var modal=$('#MensajeConfirmacion').modal('show')
                 	modal.find('.modal-body').empty()
                 	modal.find('.modal-body').html(
                 		'<div class="alert alert-danger" role="alert"><h4 class="alert-heading">Error</h4><p>Ha ocurrido un error al intentar guardar los productos de esta receta  </p><hr></div>')
           

}

                }
            )
  }

  
var accion;

var url;

var url1;

$("#botonCambiarEstado").on( "click", function() {

$('#ConfirmarEstadoReceta').modal('show')});

$('#ConfirmarEstadoReceta').on('show.bs.modal', function (event) {
var button = $('#botonCambiarEstado'); // Button that triggered the modal
accion = button.data('accion')
var modal = $(this)
modal.find('.accion').text('' + accion);

$("#confirmar").on( "click", function() {

	//alert (accion)

if (accion=='activar') {

   $.ajax({
                type:'POST',
                url:'datos.php',
                data:{idRecetaDetalle: $('.idreceta').text(), estado: 0},
                success:function(html){
                //alert('activo'+html);
                $('#ConfirmarEstadoReceta').modal('hide')
                var modalconfir = $('#Confirmada').modal('show')
                modalconfir.find('.confirmacion').text('activada')
                url=$(location).attr('href')
                url1=url.replace("estado=0", "estado=1")
               
                //$('#botonCambiarEstado').remove();
          		//$('.boton').html('<button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#ConfirmarEstadoReceta" data-accion="desactivar" id="botonCambiarEstado">Desactivar Receta</button>')
          		//$('.medal').remove()
          		//$('.medalla').html('<span class="badge badge-success medal">Activa</span>')

                }})};


if (accion=='desactivar') {

   $.ajax({
                type:'POST',
                url:'datos.php',
                data:{idRecetaDetalle: $('.idreceta').text(), estado: 1},
                success:function(html){
                $(this).prop("disabled", true);
                $('#ActivarReceta').prop("disabled", false);
                //alert('desactivo ' + html);
                $('#ConfirmarEstadoReceta').modal('hide')
                var modalconfir = $('#Confirmada').modal('show')
                modalconfir.find('.confirmacion').text('desactivada')
                url=$(location).attr('href')
                url1=url.replace("estado=1", "estado=0")
               
          		//$('#botonCambiarEstado').remove();
          		//$('.boton').html('<button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#ConfirmarEstadoReceta" data-accion="activar" id="botonCambiarEstado">Activar Receta</button>')
          		//$('.medal').remove()
          		//$('.medalla').html('<span class="badge badge-danger medal">Desactivada</span>')
                }})}})});



$("#aceptar").on( "click", function() {

 $(location).attr('href',url1)

})
  
 $(function () {
  $('[data-toggle="tooltip"]').tooltip()
});



</script>

</body>
</html>