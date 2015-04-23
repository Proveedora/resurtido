<%@ page import="prov.res.sucursal.Sucursal" %>



<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="sucursal.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" required="" value="${sucursalInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'serie', 'error')} required">
	<label for="serie">
		<g:message code="sucursal.serie.label" default="Serie" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="serie" required="" value="${sucursalInstance?.serie}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'ubicacion', 'error')} required">
	<label for="ubicacion">
		<g:message code="sucursal.ubicacion.label" default="Ubicacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ubicacion" required="" value="${sucursalInstance?.ubicacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'almacenes', 'error')} ">
	<label for="almacenes">
		<g:message code="sucursal.almacenes.label" default="Almacenes" />
		
	</label>
	<g:select name="almacenes" from="${prov.res.almacenes.Almacen.list()}" multiple="multiple" optionKey="id" size="5" value="${sucursalInstance?.almacenes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sucursalInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="sucursal.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${prov.res.empresa.Empresa.list()}" optionKey="id" required="" value="${sucursalInstance?.empresa?.id}" class="many-to-one"/>

</div>

