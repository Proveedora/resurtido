<%@ page import="prov.res.pedido.Pedido" %>

<div class="span12" align="left">
<div class="form-inline" >
	<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'sucursal', 'error')} required form-group">
		 <label for="SUCURSAL">SUCURSAL</label>
		<g:select id="sucursal" name="sucursal.id" from="${prov.res.sucursal.Sucursal.list()}" optionKey="id" required="" value="${pedidoInstance?.sucursal?.id}" class="many-to-one form-control" style="width:150px;"/>

	</div>
	<script type="text/javascript">
        $(document).ready(function()
        {
          $("#datepicker").datepicker({dateFormat: 'dd/mm/yy'});
        })
    </script>
	<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'fechaEnvio', 'error')} required form-group">
		<label for="FECHA_DE_ENVIO">FECHA DE ENVIO</label>
		<input type="text" class="form-control" id="datepicker" name="fechaEnvio" size="8" />
		<!--<g:datePicker name="fechaEnvio" precision="day"  value="${pedidoInstance?.fechaEnvio}"  />-->


	</div>

	<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'estado', 'error')} required form-group">
		<label for="ESTADO">ESTADO</label>
		<g:textField class="form-control" name="estado" required="" value="NUEVO" size="5" />

	</div>


	<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'folio', 'error')} required form-group">
		<label for="FOLIO">FOLIO</label>
		<g:textField class="form-control" name="folio" required="" value="${pedidoInstance?.folio}" size="5"/>

	</div>


	<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cedis', 'error')} required form-group">
		<label for="CEDIS">CEDIS</label>
		<g:select  id="cedis" name="cedis.id" from="${prov.res.sucursal.Sucursal.list()}" optionKey="id" required="" value="${pedidoInstance?.cedis?.id}" class="many-to-one form-control" style="width:150px;"/>

	</div>
</div>
</div>











