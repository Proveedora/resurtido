<%@ page import="prov.res.pedido.DetallePedido" %>



<div class="fieldcontain ${hasErrors(bean: detallePedidoInstance, field: 'articulo', 'error')} required">
	<label for="articulo">
		<g:message code="detallePedido.articulo.label" default="Articulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="articulo" name="articulo.id" from="${prov.res.catalogos.Articulo.list()}" optionKey="id" required="" value="${detallePedidoInstance?.articulo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: detallePedidoInstance, field: 'cp', 'error')} required">
	<label for="cp">
		<g:message code="detallePedido.cp.label" default="Cp" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cp" type="number" value="${detallePedidoInstance.cp}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: detallePedidoInstance, field: 'cr', 'error')} required">
	<label for="cr">
		<g:message code="detallePedido.cr.label" default="Cr" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cr" type="number" value="${detallePedidoInstance.cr}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: detallePedidoInstance, field: 'cs', 'error')} required">
	<label for="cs">
		<g:message code="detallePedido.cs.label" default="Cs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cs" type="number" value="${detallePedidoInstance.cs}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: detallePedidoInstance, field: 'pedido', 'error')} required">
	<label for="pedido">
		<g:message code="detallePedido.pedido.label" default="Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pedido" name="pedido.id" from="${prov.res.pedido.Pedido.list()}" optionKey="id" required="" value="${detallePedidoInstance?.pedido?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: detallePedidoInstance, field: 'unidad', 'error')} required">
	<label for="unidad">
		<g:message code="detallePedido.unidad.label" default="Unidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unidad" required="" value="${detallePedidoInstance?.unidad}"/>

</div>

