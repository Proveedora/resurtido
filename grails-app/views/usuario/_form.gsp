<%@ page import="prov.res.usuarios.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'agente', 'error')} required">
	<label for="agente">
		<g:message code="usuario.agente.label" default="Agente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="agente" required="" value="${usuarioInstance?.agente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contraseña', 'error')} required">
	<label for="contraseña">
		<g:message code="usuario.contraseña.label" default="Contraseña" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contraseña" maxlength="12" required="" value="${usuarioInstance?.contraseña}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="usuario.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="correo" required="" value="${usuarioInstance?.correo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'domicilio', 'error')} ">
	<label for="domicilio">
		<g:message code="usuario.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" value="${usuarioInstance?.domicilio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="usuario.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${usuarioInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="usuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${usuarioInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="usuario.roles.label" default="Roles" />
		
	</label>
	<g:select name="roles" from="${prov.res.usuarios.Rol.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.roles*.id}" class="many-to-many"/>

</div>

