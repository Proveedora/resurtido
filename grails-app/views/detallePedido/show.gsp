
<%@ page import="prov.res.pedido.DetallePedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detallePedido.label', default: 'DetallePedido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-detallePedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-detallePedido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list detallePedido">
			
				<g:if test="${detallePedidoInstance?.articulo}">
				<li class="fieldcontain">
					<span id="articulo-label" class="property-label"><g:message code="detallePedido.articulo.label" default="Articulo" /></span>
					
						<span class="property-value" aria-labelledby="articulo-label"><g:link controller="articulo" action="show" id="${detallePedidoInstance?.articulo?.id}">${detallePedidoInstance?.articulo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${detallePedidoInstance?.cp}">
				<li class="fieldcontain">
					<span id="cp-label" class="property-label"><g:message code="detallePedido.cp.label" default="Cp" /></span>
					
						<span class="property-value" aria-labelledby="cp-label"><g:fieldValue bean="${detallePedidoInstance}" field="cp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${detallePedidoInstance?.cr}">
				<li class="fieldcontain">
					<span id="cr-label" class="property-label"><g:message code="detallePedido.cr.label" default="Cr" /></span>
					
						<span class="property-value" aria-labelledby="cr-label"><g:fieldValue bean="${detallePedidoInstance}" field="cr"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${detallePedidoInstance?.cs}">
				<li class="fieldcontain">
					<span id="cs-label" class="property-label"><g:message code="detallePedido.cs.label" default="Cs" /></span>
					
						<span class="property-value" aria-labelledby="cs-label"><g:fieldValue bean="${detallePedidoInstance}" field="cs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${detallePedidoInstance?.pedido}">
				<li class="fieldcontain">
					<span id="pedido-label" class="property-label"><g:message code="detallePedido.pedido.label" default="Pedido" /></span>
					
						<span class="property-value" aria-labelledby="pedido-label"><g:link controller="pedido" action="show" id="${detallePedidoInstance?.pedido?.id}">${detallePedidoInstance?.pedido?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${detallePedidoInstance?.unidad}">
				<li class="fieldcontain">
					<span id="unidad-label" class="property-label"><g:message code="detallePedido.unidad.label" default="Unidad" /></span>
					
						<span class="property-value" aria-labelledby="unidad-label"><g:fieldValue bean="${detallePedidoInstance}" field="unidad"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:detallePedidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${detallePedidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
