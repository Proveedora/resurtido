<%@ page import="prov.res.usuarios.Rol" %>

<div class="form-group fieldcontain ${hasErrors(bean: rolInstance, field: 'nombre', 'error')} required col-sm-6">
    <label for="nombre">
    	<g:message code="rol.nombre.label" default="Nombre" />
	<span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" class="form-control" required="" value="${rolInstance?.nombre}"/>
  </div>

<div class="form-group fieldcontain ${hasErrors(bean: rolInstance, field: 'permisos', 'error')} required col-sm-6">
    <label for="permisos">
		<g:message code="rol.permisos.label" default="Permisos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="permisos" class="form-control" required="" value="${rolInstance?.permisos}"/>
  </div>
