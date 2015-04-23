
<%@ page import="prov.res.empresa.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empresa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empresa">
			
				<g:if test="${empresaInstance?.CP}">
				<li class="fieldcontain">
					<span id="CP-label" class="property-label"><g:message code="empresa.CP.label" default="CP" /></span>
					
						<span class="property-value" aria-labelledby="CP-label"><g:fieldValue bean="${empresaInstance}" field="CP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="empresa.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${empresaInstance}" field="domicilio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="empresa.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${empresaInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="empresa.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:fieldValue bean="${empresaInstance}" field="municipio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.pais}">
				<li class="fieldcontain">
					<span id="pais-label" class="property-label"><g:message code="empresa.pais.label" default="Pais" /></span>
					
						<span class="property-value" aria-labelledby="pais-label"><g:fieldValue bean="${empresaInstance}" field="pais"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.razonSocial}">
				<li class="fieldcontain">
					<span id="razonSocial-label" class="property-label"><g:message code="empresa.razonSocial.label" default="Razon Social" /></span>
					
						<span class="property-value" aria-labelledby="razonSocial-label"><g:fieldValue bean="${empresaInstance}" field="razonSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.regimen}">
				<li class="fieldcontain">
					<span id="regimen-label" class="property-label"><g:message code="empresa.regimen.label" default="Regimen" /></span>
					
						<span class="property-value" aria-labelledby="regimen-label"><g:fieldValue bean="${empresaInstance}" field="regimen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.RFC}">
				<li class="fieldcontain">
					<span id="RFC-label" class="property-label"><g:message code="empresa.RFC.label" default="RFC" /></span>
					
						<span class="property-value" aria-labelledby="RFC-label"><g:fieldValue bean="${empresaInstance}" field="RFC"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empresaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empresaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
