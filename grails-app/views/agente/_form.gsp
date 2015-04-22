<%@ page import="prov.res.catalogos.Agente" %>



<div class="fieldcontain ${hasErrors(bean: agenteInstance, field: 'numagt', 'error')} required">
    <label for="numagt">
        <g:message code="agente.numagt.label" default="Numagt"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="numagt" required="" value="${agenteInstance?.numagt}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: agenteInstance, field: 'nombreagt', 'error')} required">
    <label for="nombreagt">
        <g:message code="agente.nombreagt.label" default="Nombreagt"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombreagt" required="" value="${agenteInstance?.nombreagt}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: agenteInstance, field: 'numalm', 'error')} required">
    <label for="numalm">
        <g:message code="agente.numalm.label" default="Numalm"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="numalm" required="" value="${agenteInstance?.numalm}"/>

</div>

