<%@ page import="prov.res.catalogos.Articulo" %>



<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'numart', 'error')} required">
    <label for="numart">
        <g:message code="articulo.numart.label" default="Numart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="numart" maxlength="18" required="" value="${articuloInstance?.numart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'upcart', 'error')} required">
    <label for="upcart">
        <g:message code="articulo.upcart.label" default="Upcart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="upcart" maxlength="18" required="" value="${articuloInstance?.upcart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'nomart', 'error')} required">
    <label for="nomart">
        <g:message code="articulo.nomart.label" default="Nomart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="nomart" cols="40" rows="5" maxlength="999999" required="" value="${articuloInstance?.nomart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'uniart', 'error')} required">
    <label for="uniart">
        <g:message code="articulo.uniart.label" default="Uniart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="uniart" maxlength="10" required="" value="${articuloInstance?.uniart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'flgart', 'error')} required">
    <label for="flgart">
        <g:message code="articulo.flgart.label" default="Flgart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="flgart" maxlength="10" required="" value="${articuloInstance?.flgart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'numdep', 'error')} required">
    <label for="numdep">
        <g:message code="articulo.numdep.label" default="Numdep"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="numdep" maxlength="3" required="" value="${articuloInstance?.numdep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'tipart', 'error')} required">
    <label for="tipart">
        <g:message code="articulo.tipart.label" default="Tipart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="tipart" maxlength="1" required="" value="${articuloInstance?.tipart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'uniart2', 'error')} required">
    <label for="uniart2">
        <g:message code="articulo.uniart2.label" default="Uniart2"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="uniart2" maxlength="10" required="" value="${articuloInstance?.uniart2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'nummon', 'error')} required">
    <label for="nummon">
        <g:message code="articulo.nummon.label" default="Nummon"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nummon" maxlength="10" required="" value="${articuloInstance?.nummon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'nomart2', 'error')} required">
    <label for="nomart2">
        <g:message code="articulo.nomart2.label" default="Nomart2"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="nomart2" cols="40" rows="5" maxlength="999999" required="" value="${articuloInstance?.nomart2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'crpart', 'error')} required">
    <label for="crpart">
        <g:message code="articulo.crpart.label" default="Crpart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="crpart" value="${fieldValue(bean: articuloInstance, field: 'crpart')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'fucart', 'error')} required">
    <label for="fucart">
        <g:message code="articulo.fucart.label" default="Fucart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="fucart" precision="day" value="${articuloInstance?.fucart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'ivaart', 'error')} required">
    <label for="ivaart">
        <g:message code="articulo.ivaart.label" default="Ivaart"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="ivaart" value="${fieldValue(bean: articuloInstance, field: 'ivaart')}" required=""/>

</div>

