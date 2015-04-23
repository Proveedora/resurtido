
<%@ page import="prov.res.sucursal.Sucursal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sucursal.label', default: 'Sucursal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sucursal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sucursal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="clave" title="${message(code: 'sucursal.clave.label', default: 'Clave')}" />
					
						<g:sortableColumn property="serie" title="${message(code: 'sucursal.serie.label', default: 'Serie')}" />
					
						<g:sortableColumn property="ubicacion" title="${message(code: 'sucursal.ubicacion.label', default: 'Ubicacion')}" />
					
						<th><g:message code="sucursal.empresa.label" default="Empresa" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sucursalInstanceList}" status="i" var="sucursalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sucursalInstance.id}">${fieldValue(bean: sucursalInstance, field: "clave")}</g:link></td>
					
						<td>${fieldValue(bean: sucursalInstance, field: "serie")}</td>
					
						<td>${fieldValue(bean: sucursalInstance, field: "ubicacion")}</td>
					
						<td>${fieldValue(bean: sucursalInstance, field: "empresa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sucursalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
