<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'almacen.label', default: 'Almacen')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		
		<div id="list-almacen" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			
			<g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			<!--<g:link class="btn btn-primary" action="edit"><g:message code="default.edit.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-primary" action="delete"><g:message code="default.button.delete.label" args="[entityName]" /></g:link>-->
			<table class="table table-hover">
			<thead>
					<tr>
					
						<g:sortableColumn property="clave" title="${message(code: 'almacen.clave.label', default: 'Clave')}" />
					
						<g:sortableColumn property="direccionDB" title="${message(code: 'almacen.direccionDB.label', default: 'Direccion DB')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'almacen.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${almacenInstanceList}" status="i" var="almacenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${almacenInstance.id}">${fieldValue(bean: almacenInstance, field: "clave")}</g:link></td>
					
						<td>${fieldValue(bean: almacenInstance, field: "direccionDB")}</td>
					
						<td>${fieldValue(bean: almacenInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="pagination">
				<g:paginate total="${almacenInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
