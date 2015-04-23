
<%@ page import="prov.res.empresa.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empresa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="CP" title="${message(code: 'empresa.CP.label', default: 'CP')}" />
					
						<g:sortableColumn property="domicilio" title="${message(code: 'empresa.domicilio.label', default: 'Domicilio')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'empresa.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="municipio" title="${message(code: 'empresa.municipio.label', default: 'Municipio')}" />
					
						<g:sortableColumn property="pais" title="${message(code: 'empresa.pais.label', default: 'Pais')}" />
					
						<g:sortableColumn property="razonSocial" title="${message(code: 'empresa.razonSocial.label', default: 'Razon Social')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empresaInstance.id}">${fieldValue(bean: empresaInstance, field: "CP")}</g:link></td>
					
						<td>${fieldValue(bean: empresaInstance, field: "domicilio")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "municipio")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "pais")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "razonSocial")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empresaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
