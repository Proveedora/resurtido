<%@ page import="prov.res.catalogos.Agente" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'agente.label', default: 'Agente')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-agente" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-agente" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="numagt" title="${message(code: 'agente.numagt.label', default: 'Numagt')}"/>

            <g:sortableColumn property="nombreagt"
                              title="${message(code: 'agente.nombreagt.label', default: 'Nombreagt')}"/>

            <g:sortableColumn property="numalm" title="${message(code: 'agente.numalm.label', default: 'Numalm')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${agenteInstanceList}" status="i" var="agenteInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${agenteInstance.id}">${fieldValue(bean: agenteInstance, field: "numagt")}</g:link></td>

                <td>${fieldValue(bean: agenteInstance, field: "nombreagt")}</td>

                <td>${fieldValue(bean: agenteInstance, field: "numalm")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${agenteInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
