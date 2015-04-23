<%@ page import="prov.res.catalogos.Proveedor" %>



<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'numpro', 'error')} required">
    <label for="numpro">
        <g:message code="proveedor.numpro.label" default="Numpro"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="numpro" required="" value="${proveedorInstance?.numpro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'nompro', 'error')} required">
    <label for="nompro">
        <g:message code="proveedor.nompro.label" default="Nompro"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nompro" required="" value="${proveedorInstance?.nompro}"/>

</div>

