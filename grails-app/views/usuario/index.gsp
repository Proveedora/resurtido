
<%@ page import="prov.res.usuarios.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-usuario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-bordered table-condensed">
			<thead>
					<tr>

						<g:sortableColumn property="agente" title="${message(code: 'usuario.agente.label', default: 'Agente')}" />

						<g:sortableColumn property="contraseña" title="${message(code: 'usuario.contraseña.label', default: 'Contraseña')}" />

						<g:sortableColumn property="correo" title="${message(code: 'usuario.correo.label', default: 'Correo')}" />

						<g:sortableColumn property="domicilio" title="${message(code: 'usuario.domicilio.label', default: 'Domicilio')}" />

						<g:sortableColumn property="nombre" title="${message(code: 'usuario.nombre.label', default: 'Nombre')}" />

						<g:sortableColumn property="telefono" title="${message(code: 'usuario.telefono.label', default: 'Telefono')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
					<tr>

						<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "agente")}</g:link></td>

						<td>${fieldValue(bean: usuarioInstance, field: "contraseña")}</td>

						<td>${fieldValue(bean: usuarioInstance, field: "correo")}</td>

						<td>${fieldValue(bean: usuarioInstance, field: "domicilio")}</td>

						<td>${fieldValue(bean: usuarioInstance, field: "nombre")}</td>

						<td>${fieldValue(bean: usuarioInstance, field: "telefono")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
