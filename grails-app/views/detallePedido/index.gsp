
<%@ page import="prov.res.pedido.DetallePedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detallePedido.label', default: 'DetallePedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-detallePedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-detallePedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="detallePedido.articulo.label" default="Articulo" /></th>
					
						<g:sortableColumn property="cp" title="${message(code: 'detallePedido.cp.label', default: 'Cp')}" />
					
						<g:sortableColumn property="cr" title="${message(code: 'detallePedido.cr.label', default: 'Cr')}" />
					
						<g:sortableColumn property="cs" title="${message(code: 'detallePedido.cs.label', default: 'Cs')}" />
					
						<th><g:message code="detallePedido.pedido.label" default="Pedido" /></th>
					
						<g:sortableColumn property="unidad" title="${message(code: 'detallePedido.unidad.label', default: 'Unidad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${detallePedidoInstanceList}" status="i" var="detallePedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${detallePedidoInstance.id}">${fieldValue(bean: detallePedidoInstance, field: "articulo")}</g:link></td>
					
						<td>${fieldValue(bean: detallePedidoInstance, field: "cp")}</td>
					
						<td>${fieldValue(bean: detallePedidoInstance, field: "cr")}</td>
					
						<td>${fieldValue(bean: detallePedidoInstance, field: "cs")}</td>
					
						<td>${fieldValue(bean: detallePedidoInstance, field: "pedido")}</td>
					
						<td>${fieldValue(bean: detallePedidoInstance, field: "unidad")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${detallePedidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
