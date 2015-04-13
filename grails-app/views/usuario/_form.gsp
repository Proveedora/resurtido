<%@ page import="prov.res.usuarios.Usuario" %>



<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'agente', 'error')} required col-sm-4">
	<label for="agente">
		<g:message code="usuario.agente.label" default="Agente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="agente" class="form-control" required="" value="${usuarioInstance?.agente}"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contraseña', 'error')} required col-sm-4">
	<label for="contraseña">
		<g:message code="usuario.contraseña.label" default="Contraseña" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="contraseña" class="form-control" maxlength="12" required="" value="${usuarioInstance?.contraseña}"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'correo', 'error')} required col-sm-4">
	<label for="correo">
		<g:message code="usuario.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="correo" required="" class="form-control" value="${usuarioInstance?.correo}"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'domicilio', 'error')} col-sm-4">
	<label for="domicilio">
		<g:message code="usuario.domicilio.label" default="Domicilio" />

	</label>
	<g:textField name="domicilio" class="form-control" value="${usuarioInstance?.domicilio}"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required col-sm-4">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" class="form-control" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefono', 'error')} col-sm-4">
	<label for="telefono">
		<g:message code="usuario.telefono.label" default="Telefono" />

	</label>
	<g:textField name="telefono"class="form-control" value="${usuarioInstance?.telefono}"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usuario', 'error')} required col-sm-4">
	<label for="usuario">
		<g:message code="usuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" class="form-control" required="" value="${usuarioInstance?.usuario}"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'rol', 'error')} required col-sm-4">
	<label for="rol">
		<g:message code="usuario.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rol"  name="rol.id" from="${prov.res.usuarios.Rol.list()}" optionKey="id" required="" value="${usuarioInstance?.rol?.id}" class="form-control"/>

</div>

