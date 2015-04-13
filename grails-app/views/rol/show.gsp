
<%@ page import="prov.res.usuarios.Rol" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rol.label', default: 'Rol')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="show-rol" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rol">

				<g:if test="${rolInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="rol.nombre.label" default="Nombre" /></span>

						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${rolInstance}" field="nombre"/></span>

				</li>
				</g:if>

				<g:if test="${rolInstance?.permisos}">
				<li class="fieldcontain">
					<span id="permisos-label" class="property-label"><g:message code="rol.permisos.label" default="Permisos" /></span>

						<span class="property-value" aria-labelledby="permisos-label"><g:fieldValue bean="${rolInstance}" field="permisos"/></span>

				</li>
				</g:if>

			</ol>
			<g:form url="[resource:rolInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${rolInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
