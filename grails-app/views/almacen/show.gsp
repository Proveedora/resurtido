

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'almacen.label', default: 'Almacen')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-almacen" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>

			<g:link class="btn btn-primary" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
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
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form url="[resource:almacenInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-warning" action="edit" resource="${almacenInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>