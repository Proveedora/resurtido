<%@ page import="prov.res.catalogos.Articulo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'articulo.label', default: 'Articulo')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-articulo" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-articulo" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="numart" title="${message(code: 'articulo.numart.label', default: 'Numart')}"/>

            <g:sortableColumn property="upcart" title="${message(code: 'articulo.upcart.label', default: 'Upcart')}"/>

            <g:sortableColumn property="nomart" title="${message(code: 'articulo.nomart.label', default: 'Nomart')}"/>

            <g:sortableColumn property="uniart" title="${message(code: 'articulo.uniart.label', default: 'Uniart')}"/>

            <g:sortableColumn property="flgart" title="${message(code: 'articulo.flgart.label', default: 'Flgart')}"/>

            <g:sortableColumn property="numdep" title="${message(code: 'articulo.numdep.label', default: 'Numdep')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${articuloInstanceList}" status="i" var="articuloInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${articuloInstance.id}">${fieldValue(bean: articuloInstance, field: "numart")}</g:link></td>

                <td>${fieldValue(bean: articuloInstance, field: "upcart")}</td>

                <td>${fieldValue(bean: articuloInstance, field: "nomart")}</td>

                <td>${fieldValue(bean: articuloInstance, field: "uniart")}</td>

                <td>${fieldValue(bean: articuloInstance, field: "flgart")}</td>

                <td>${fieldValue(bean: articuloInstance, field: "numdep")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${articuloInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
