

<div class="form-group ${hasErrors(bean: almacenInstance, field: 'clave', 'error')} required col-xs-2">
	<label for="clave">
		<g:message code="almacen.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" class="form-control" required="" value="${almacenInstance?.clave}" placeholder="Ingresar Clave" />
</div>

<div class="form-group ${hasErrors(bean: almacenInstance, field: 'direccionDB', 'error')} required col-xs-4">
	<label for="direccionDB">
		<g:message code="almacen.direccionDB.label" default="Direccion DB" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccionDB" class="form-control" required="" value="${almacenInstance?.direccionDB}" placeholder="Ingresar Ruta"/>
</div>

<div class="form-group ${hasErrors(bean: almacenInstance, field: 'nombre', 'error')} required col-xs-3">
	<label for="nombre">
		<g:message code="almacen.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" class="form-control" required="" value="${almacenInstance?.nombre}" placeholder="Ingresar Nombre"/>
</div>

