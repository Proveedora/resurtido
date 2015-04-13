

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'almacen.label', default: 'Almacen')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-almacen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-almacen" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<dl class="dl-horizontal">
			
				<g:if test="${almacenInstance?.clave}">				
				<dt><span id="clave-label" class="property-label"><g:message code="almacen.clave.label" default="Clave" /></span></dt>
				<dd><span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${almacenInstance}" field="clave"/></span></dd>
				</g:if>
			
				<g:if test="${almacenInstance?.direccionDB}">
				<dt><span id="direccionDB-label" class="property-label"><g:message code="almacen.direccionDB.label" default="Direccion DB" /></span></dt>
				<dd><span class="property-value" aria-labelledby="direccionDB-label"><g:fieldValue bean="${almacenInstance}" field="direccionDB"/></span></dd>	
				</g:if>
			
				<g:if test="${almacenInstance?.nombre}">
				<dt><span id="nombre-label" class="property-label"><g:message code="almacen.nombre.label" default="Nombre" /></span><dt>
				<dd><span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${almacenInstance}" field="nombre"/></span><dd>
				</g:if>
			
			</dl>
			<g:form url="[resource:almacenInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${almacenInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
