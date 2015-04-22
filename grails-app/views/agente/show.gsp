<%@ page import="prov.res.catalogos.Agente" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'agente.label', default: 'Agente')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-agente" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-agente" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list agente">

        <g:if test="${agenteInstance?.numagt}">
            <li class="fieldcontain">
                <span id="numagt-label" class="property-label"><g:message code="agente.numagt.label"
                                                                          default="Numagt"/></span>

                <span class="property-value" aria-labelledby="numagt-label"><g:fieldValue bean="${agenteInstance}"
                                                                                          field="numagt"/></span>

            </li>
        </g:if>

        <g:if test="${agenteInstance?.nombreagt}">
            <li class="fieldcontain">
                <span id="nombreagt-label" class="property-label"><g:message code="agente.nombreagt.label"
                                                                             default="Nombreagt"/></span>

                <span class="property-value" aria-labelledby="nombreagt-label"><g:fieldValue bean="${agenteInstance}"
                                                                                             field="nombreagt"/></span>

            </li>
        </g:if>

        <g:if test="${agenteInstance?.numalm}">
            <li class="fieldcontain">
                <span id="numalm-label" class="property-label"><g:message code="agente.numalm.label"
                                                                          default="Numalm"/></span>

                <span class="property-value" aria-labelledby="numalm-label"><g:fieldValue bean="${agenteInstance}"
                                                                                          field="numalm"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: agenteInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${agenteInstance}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
