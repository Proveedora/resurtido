// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self
//= require bootstrap

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
$(document).ready(function() {

    

    $(document).on("click", "#addArticulo", function(e){
        e.preventDefault();
        var sku = $("#sku").val();
        var descripcion = $("#descripcion").val();
        var unidad = $("#unidad").val();
        var cantidad = $("#cantidad").val();
        addArticulo(sku,descripcion,unidad,cantidad);
    });

    $(document).on("click", "#delArticulo", function(e){
        e.preventDefault();
        var datos = $(this).parent().parent();
        $(datos).remove();
        
    });

  




});


function addArticulo(sku,descripcion,unidad,cantidad){
    
    var tabla = $('#detallePedido');
    tabla.append('<tr>'+
    '<td><input type="text" id="sku[]" name="sku[]"  size = "7" value ="'+sku+'" disabled></td> '+
    '<td><input type="text" id="descripcion[]" name="descripcion[]"  size = "40" value ="'+descripcion+'" disabled></td> '+
    '<td><input type="text" id="unidad[]" name="unidad[]"  size = "7" value ="'+unidad+'" disabled></td> '+
    '<td><input type="text" id="cantPedida[]" name="cantPedida[]" size = "7" value = "'+cantidad+'" disabled></td> '+
    '<td align="center"><button id="delArticulo" class="btn btn-danger btn-sm" size = "3" title="Eliminar"><span class="glyphicon glyphicon-remove"></span></button></td> '+
    '<td align="center"><button id="modArticulo" class="btn btn-warning btn-sm" size = "3" title="Modificar"><span class="glyphicon glyphicon-pencil"></span></button></td> '+
    '</tr>');
}
        

  