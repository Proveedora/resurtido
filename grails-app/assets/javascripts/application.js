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
    })
});


function addArticulo(sku,descripcion,unidad,cantidad){
    
    var tabla = $('#detallePedido');
    tabla.append('<tr>'+
    '<td><input type="text" id ="id[]" name="id[]" size = "7" value ="'+''+'" ></td> '+
    '<td><input type="text" id="sku[]" name="sku[]"  size = "7" value ="'+sku+'" ></td> '+
    '<td><input type="text" id="descripcion[]" name="descripcion[]"  size = "40" value ="'+descripcion+'" ></td> '+
    '<td><input type="text" id="unidad[]" name="unidad[]"  size = "7" value ="'+unidad+'" ></td> '+
    '<td><input type="text" id="cantPedida[]" name="cantPedida[]" size = "7" value = "'+cantidad+'" ></td> '+
    '</tr>');

}
        
  