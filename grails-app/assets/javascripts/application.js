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

$(document).ready(function(){
	$("#addArticulo").click(function(){      
            var tabla = $('#detallePedido'); 
            tabla.append('<tr>'+
                '<td><input type="hidden" name="nummov[]" id ="nummov[]" size = "7" value ="'+respuesta.nummov+'" readonly></td> '+
                '<td><input type="text" id="serfol[]" name="serfol[]" size = "7" value ="'+respuesta.serfol+'" readonly></td> '+
                '<td><input type="text" id="numfol[]" name="numfol[]" size = "7" value ="'+respuesta.numfol+'" readonly></td> '+
                '<td><input type="text" id="impmov[]" name="impmov[]" size = "7" value ="'+respuesta.impmov+'" readonly></td> '+
                '<td><input type="text" id="ivatmov[]" name="ivatmov[]" size = "7" value = "'+respuesta.ivatmov+'" readonly></td> '+
                '<td><input type="text" id="total[]" name="total[]" size = "7" value = "'+respuesta.total+'" readonly></td> '+
                '<td><input type="text" id="fecha[]" name="fecha[]" size = "15" value = "'+respuesta.fcapmov+'" readonly></td> '+
                '</tr>'); 
                   
         });
        
    });
        
  