



<div class="fieldcontain ${hasErrors(bean: almacenInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="almacen.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" required="" value="${almacenInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: almacenInstance, field: 'direccionDB', 'error')} required">
	<label for="direccionDB">
		<g:message code="almacen.direccionDB.label" default="Direccion DB" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccionDB" required="" value="${almacenInstance?.direccionDB}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: almacenInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="almacen.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${almacenInstance?.nombre}"/>

</div>

