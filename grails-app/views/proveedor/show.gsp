<%@ page import="prov.res.catalogos.Proveedor" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'proveedor.label', default: 'Proveedor')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-proveedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-proveedor" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list proveedor">

        <g:if test="${proveedorInstance?.numpro}">
            <li class="fieldcontain">
                <span id="numpro-label" class="property-label"><g:message code="proveedor.numpro.label"
                                                                          default="Numpro"/></span>

                <span class="property-value" aria-labelledby="numpro-label"><g:fieldValue bean="${proveedorInstance}"
                                                                                          field="numpro"/></span>

            </li>
        </g:if>

        <g:if test="${proveedorInstance?.nompro}">
            <li class="fieldcontain">
                <span id="nompro-label" class="property-label"><g:message code="proveedor.nompro.label"
                                                                          default="Nompro"/></span>

                <span class="property-value" aria-labelledby="nompro-label"><g:fieldValue bean="${proveedorInstance}"
                                                                                          field="nompro"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: proveedorInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${proveedorInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
