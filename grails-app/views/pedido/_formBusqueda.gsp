<%@ page import="prov.res.pedido.Pedido" %>
	
       
<div class="span12" align="left">
	<div class="form-group" >
        <label for="claveArticulo">Clave Articulo</label>
        <input type="text" class="form-control" size="10" id="sku" name="sku" placeholder="Clave Articulo" required>
    </div>
	<div class="form-group">
        <label for="exampleInputName2">Descripcion</label>
        <input type="text" class="form-control"size="35" id="descripcion" name="descripcion" placeholder="Descripcion Articulo" required>
    </div>
    <div class="form-group">
        <label for="exampleInputName2">Cantidad</label>
        <input type="text" class="form-control"size="5" id="cantidad"  name="cantidad" placeholder="Cantidad" required>
    </div>
    <div class="form-group">
        <label for="exampleInputName2">Unidad</label>
        <input type="text" class="form-control"size="5" id="unidad" name="unidad" placeholder="Unidad" required>
    </div>
    <div class="form-group">
        <button id="addArticulo" class="btn btn-success btn-sm" title="Click si desea guardar su informacion"> AGREGAR </button>
    </div>


</div>















