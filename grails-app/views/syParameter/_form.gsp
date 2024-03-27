<%@ page import="artdb.SyParameter" %>

<!-- ------------------------------------------------------------------
   3 Sprachiger Titel und Beschreibung
------------------------------------------------------------------- -->

<!--
<hr style="margin: 1rem 0; color: inherit; background-color: currentColor; border: 0; opacity: 0.25;" />
 -->

<div class="form-group col-12">
    <div class="row col-12">
        <label for="keyValue" class="col-2 control-label col-form-label text-end ${hasErrors(bean: syParameter, field: 'keyValue', 'text-danger')}">
            <b><g:message code="syParameter.keyValue.label" default="keyValue" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="keyValue" name="keyValue" value="${syParameter?.keyValue}" required="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: syParameter, field: 'keyValue', 'text-danger')}" id="keyValue" name="keyValue" value="${syParameter?.keyValue}" required=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="value" class="col-2 control-label col-form-label text-end ${hasErrors(bean: syParameter, field: 'value', 'text-danger')}">
            <b><g:message code="syParameter.value.label" default="value" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: syParameter, field: 'value', 'text-danger')}" id="value" name="value" rows="7" disabled>${syParameter?.value}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: syParameter, field: 'value', 'text-danger')}" id="value" name="value" rows="7" required="">${syParameter?.value}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>
<br>
