<%@ page import="artdb.Place" %>

<!-- ------------------------------------------------------------------
   3 Sprachiger Titel und Beschreibung
------------------------------------------------------------------- -->

<!--
<hr style="margin: 1rem 0; color: inherit; background-color: currentColor; border: 0; opacity: 0.25;" />
 -->

<div class="form-group col-12">
    <div class="row col-12">
        <label for="shortDesc" class="col-2 control-label col-form-label text-end ${hasErrors(bean: place, field: 'shortDesc', 'text-danger')}">
            <b><g:message code="place.shortDesc.label" default="shortDesc" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="shortDesc" name="shortDesc" value="${place?.shortDesc}" required="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: place, field: 'shortDesc', 'text-danger')}" id="shortDesc" name="shortDesc" value="${place?.shortDesc}" required=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="description" class="col-2 control-label col-form-label text-end ${hasErrors(bean: place, field: 'description', 'text-danger')}">
            <b><g:message code="place.description.label" default="description" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: place, field: 'description', 'text-danger')}" id="description" name="description" rows="7" disabled>${place?.description}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: place, field: 'description', 'text-danger')}" id="description" name="description" rows="7" required="">${place?.description}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>
<br>
