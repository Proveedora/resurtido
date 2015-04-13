
<%@ page import="prov.res.usuarios.Rol" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rol.label', default: 'Rol')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-rol" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-condensed table-striped">
			<thead>
					<tr>
						<g:sortableColumn property="nombre" title="${message(code: 'rol.nombre.label', default: 'Nombre')}" />

						<g:sortableColumn property="permisos" title="${message(code: 'rol.permisos.label', default: 'Permisos')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${rolInstanceList}" status="i" var="rolInstance">
					<tr>
						<td><g:link action="show" id="${rolInstance.id}">${fieldValue(bean: rolInstance, field: "nombre")}</g:link></td>
						<td>${fieldValue(bean: rolInstance, field: "permisos")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rolInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
