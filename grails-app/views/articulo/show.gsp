<%@ page import="prov.res.catalogos.Articulo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'articulo.label', default: 'Articulo')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-articulo" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-articulo" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list articulo">

        <g:if test="${articuloInstance?.numart}">
            <li class="fieldcontain">
                <span id="numart-label" class="property-label"><g:message code="articulo.numart.label"
                                                                          default="Numart"/></span>

                <span class="property-value" aria-labelledby="numart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="numart"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.upcart}">
            <li class="fieldcontain">
                <span id="upcart-label" class="property-label"><g:message code="articulo.upcart.label"
                                                                          default="Upcart"/></span>

                <span class="property-value" aria-labelledby="upcart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="upcart"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.nomart}">
            <li class="fieldcontain">
                <span id="nomart-label" class="property-label"><g:message code="articulo.nomart.label"
                                                                          default="Nomart"/></span>

                <span class="property-value" aria-labelledby="nomart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="nomart"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.uniart}">
            <li class="fieldcontain">
                <span id="uniart-label" class="property-label"><g:message code="articulo.uniart.label"
                                                                          default="Uniart"/></span>

                <span class="property-value" aria-labelledby="uniart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="uniart"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.flgart}">
            <li class="fieldcontain">
                <span id="flgart-label" class="property-label"><g:message code="articulo.flgart.label"
                                                                          default="Flgart"/></span>

                <span class="property-value" aria-labelledby="flgart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="flgart"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.numdep}">
            <li class="fieldcontain">
                <span id="numdep-label" class="property-label"><g:message code="articulo.numdep.label"
                                                                          default="Numdep"/></span>

                <span class="property-value" aria-labelledby="numdep-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="numdep"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.tipart}">
            <li class="fieldcontain">
                <span id="tipart-label" class="property-label"><g:message code="articulo.tipart.label"
                                                                          default="Tipart"/></span>

                <span class="property-value" aria-labelledby="tipart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="tipart"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.uniart2}">
            <li class="fieldcontain">
                <span id="uniart2-label" class="property-label"><g:message code="articulo.uniart2.label"
                                                                           default="Uniart2"/></span>

                <span class="property-value" aria-labelledby="uniart2-label"><g:fieldValue bean="${articuloInstance}"
                                                                                           field="uniart2"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.nummon}">
            <li class="fieldcontain">
                <span id="nummon-label" class="property-label"><g:message code="articulo.nummon.label"
                                                                          default="Nummon"/></span>

                <span class="property-value" aria-labelledby="nummon-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="nummon"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.nomart2}">
            <li class="fieldcontain">
                <span id="nomart2-label" class="property-label"><g:message code="articulo.nomart2.label"
                                                                           default="Nomart2"/></span>

                <span class="property-value" aria-labelledby="nomart2-label"><g:fieldValue bean="${articuloInstance}"
                                                                                           field="nomart2"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.crpart}">
            <li class="fieldcontain">
                <span id="crpart-label" class="property-label"><g:message code="articulo.crpart.label"
                                                                          default="Crpart"/></span>

                <span class="property-value" aria-labelledby="crpart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="crpart"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.fucart}">
            <li class="fieldcontain">
                <span id="fucart-label" class="property-label"><g:message code="articulo.fucart.label"
                                                                          default="Fucart"/></span>

                <span class="property-value" aria-labelledby="fucart-label"><g:formatDate
                        date="${articuloInstance?.fucart}"/></span>

            </li>
        </g:if>

        <g:if test="${articuloInstance?.ivaart}">
            <li class="fieldcontain">
                <span id="ivaart-label" class="property-label"><g:message code="articulo.ivaart.label"
                                                                          default="Ivaart"/></span>

                <span class="property-value" aria-labelledby="ivaart-label"><g:fieldValue bean="${articuloInstance}"
                                                                                          field="ivaart"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: articuloInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${articuloInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
