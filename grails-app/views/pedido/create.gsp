<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<link rel="stylesheet" href="${resource(dir: 'css/ui', file: 'jquery-ui.min.css')}" type="text/css">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<g:javascript library="jquery" plugin="jquery"/>
		<r:require module="jquery-ui"/>
		<jqui:resources theme="darkness" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-pedido" class="panel panel-info" role="main">
			<div class="panel-heading"><h4><strong>Captura De Pedido</strong></h4></div>
				<div class="panel-body">
					<!--validacion en vista -->
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${pedidoInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${pedidoInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<!--termina validacion en vista -->
					<g:form url="[resource:pedidoInstance, action:'save']" >
						<fieldset class="form-inline">
							<g:render template="form"/>
						</fieldset>
					</g:form>
				</div>
		</div>
		<div id="busqueda-articulos" class="panel panel-info" role="main">
			<div class="panel-heading"><h4><strong>Busqueda de Articulos</strong></h4>
			<g:form url="[resource:pedidoInstance, action:'onClick']" id="formBuscar">
						<fieldset class="form-inline">
							<g:render template="formBusqueda"/>
						</fieldset>
					</g:form>
			</div>

			<div class="panel-body">
					<!--validacion en vista -->
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${pedidoInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${pedidoInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<!--termina validacion en vista -->
					<g:form url="[resource:pedidoInstance, action:'save']" >
						<fieldset class="form">
							<g:render template="formDetallePedido"/>
						</fieldset>
					</g:form>
			</div>
		</div>
					
			
		
	</body>
</html>
