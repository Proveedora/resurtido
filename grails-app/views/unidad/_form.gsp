<%@ page import="prov.res.catalogos.Unidad" %>



<div class="fieldcontain ${hasErrors(bean: unidadInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="unidad.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" required="" value="${unidadInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="unidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${unidadInstance?.nombre}"/>

</div>

