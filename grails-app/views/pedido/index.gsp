
<%@ page import="prov.res.pedido.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="pedido.cedis.label" default="Cedis" /></th>
					
						<g:sortableColumn property="estado" title="${message(code: 'pedido.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="fechaEnvio" title="${message(code: 'pedido.fechaEnvio.label', default: 'Fecha Envio')}" />
					
						<g:sortableColumn property="folio" title="${message(code: 'pedido.folio.label', default: 'Folio')}" />
					
						<th><g:message code="pedido.sucursal.label" default="Sucursal" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pedidoInstanceList}" status="i" var="pedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pedidoInstance.id}">${fieldValue(bean: pedidoInstance, field: "cedis")}</g:link></td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "estado")}</td>
					
						<td><g:formatDate date="${pedidoInstance.fechaEnvio}" /></td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "folio")}</td>
					
						<td>${fieldValue(bean: pedidoInstance, field: "sucursal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pedidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
