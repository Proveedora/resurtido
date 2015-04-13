
<%@ page import="prov.res.usuarios.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">

				<g:if test="${usuarioInstance?.agente}">
				<li class="fieldcontain">
					<span id="agente-label" class="property-label"><g:message code="usuario.agente.label" default="Agente" /></span>

						<span class="property-value" aria-labelledby="agente-label"><g:fieldValue bean="${usuarioInstance}" field="agente"/></span>

				</li>
				</g:if>

				<g:if test="${usuarioInstance?.contraseña}">
				<li class="fieldcontain">
					<span id="contraseña-label" class="property-label"><g:message code="usuario.contraseña.label" default="Contraseña" /></span>

						<span class="property-value" aria-labelledby="contraseña-label"><g:fieldValue bean="${usuarioInstance}" field="contraseña"/></span>

				</li>
				</g:if>

				<g:if test="${usuarioInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="usuario.correo.label" default="Correo" /></span>

						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${usuarioInstance}" field="correo"/></span>

				</li>
				</g:if>

				<g:if test="${usuarioInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="usuario.domicilio.label" default="Domicilio" /></span>

						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${usuarioInstance}" field="domicilio"/></span>

				</li>
				</g:if>

				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>

						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>

				</li>
				</g:if>

				<g:if test="${usuarioInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="usuario.telefono.label" default="Telefono" /></span>

						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${usuarioInstance}" field="telefono"/></span>

				</li>
				</g:if>

				<g:if test="${usuarioInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="usuario.usuario.label" default="Usuario" /></span>

						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${usuarioInstance}" field="usuario"/></span>

				</li>
				</g:if>

				<g:if test="${usuarioInstance?.rol}">
				<li class="fieldcontain">
					<span id="rol-label" class="property-label"><g:message code="usuario.rol.label" default="Rol" /></span>

						<span class="property-value" aria-labelledby="rol-label"><g:link controller="rol" action="show" id="${usuarioInstance?.rol?.id}">${usuarioInstance?.rol?.encodeAsHTML()}</g:link></span>

				</li>
				</g:if>

			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
