<%@ page import="prov.res.empresa.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'CP', 'error')} required">
	<label for="CP">
		<g:message code="empresa.CP.label" default="CP" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="CP" type="number" value="${empresaInstance.CP}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'domicilio', 'error')} required">
	<label for="domicilio">
		<g:message code="empresa.domicilio.label" default="Domicilio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="domicilio" required="" value="${empresaInstance?.domicilio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="empresa.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${empresaInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="empresa.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="municipio" required="" value="${empresaInstance?.municipio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="empresa.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pais" required="" value="${empresaInstance?.pais}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'razonSocial', 'error')} required">
	<label for="razonSocial">
		<g:message code="empresa.razonSocial.label" default="Razon Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razonSocial" required="" value="${empresaInstance?.razonSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'regimen', 'error')} required">
	<label for="regimen">
		<g:message code="empresa.regimen.label" default="Regimen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="regimen" required="" value="${empresaInstance?.regimen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'RFC', 'error')} required">
	<label for="RFC">
		<g:message code="empresa.RFC.label" default="RFC" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="RFC" required="" value="${empresaInstance?.RFC}"/>

</div>

