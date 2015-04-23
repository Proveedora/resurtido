
<%@ page import="prov.res.sucursal.Sucursal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sucursal.label', default: 'Sucursal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sucursal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sucursal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sucursal">
			
				<g:if test="${sucursalInstance?.clave}">
				<li class="fieldcontain">
					<span id="clave-label" class="property-label"><g:message code="sucursal.clave.label" default="Clave" /></span>
					
						<span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${sucursalInstance}" field="clave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sucursalInstance?.serie}">
				<li class="fieldcontain">
					<span id="serie-label" class="property-label"><g:message code="sucursal.serie.label" default="Serie" /></span>
					
						<span class="property-value" aria-labelledby="serie-label"><g:fieldValue bean="${sucursalInstance}" field="serie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sucursalInstance?.ubicacion}">
				<li class="fieldcontain">
					<span id="ubicacion-label" class="property-label"><g:message code="sucursal.ubicacion.label" default="Ubicacion" /></span>
					
						<span class="property-value" aria-labelledby="ubicacion-label"><g:fieldValue bean="${sucursalInstance}" field="ubicacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sucursalInstance?.almacenes}">
				<li class="fieldcontain">
					<span id="almacenes-label" class="property-label"><g:message code="sucursal.almacenes.label" default="Almacenes" /></span>
					
						<g:each in="${sucursalInstance.almacenes}" var="a">
						<span class="property-value" aria-labelledby="almacenes-label"><g:link controller="almacen" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${sucursalInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="sucursal.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${sucursalInstance?.empresa?.id}">${sucursalInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sucursalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sucursalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
