<%@ page import="artdb.Material" %>

<!-- ------------------------------------------------------------------
   3 Sprachiger Titel und Beschreibung
------------------------------------------------------------------- -->

<!--
<hr style="margin: 1rem 0; color: inherit; background-color: currentColor; border: 0; opacity: 0.25;" />
 -->

<div class="form-group col-12">
    <div class="row col-12">
        <label for="shortDesc" class="col-2 control-label col-form-label text-end ${hasErrors(bean: material, field: 'shortDesc', 'text-danger')}">
            <b><g:message code="material.shortDesc.label" default="shortDesc" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="shortDesc" name="shortDesc" value="${material?.shortDesc}" required="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: material, field: 'shortDesc', 'text-danger')}" id="shortDesc" name="shortDesc" value="${material?.shortDesc}" required=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="shortDescFa" class="col-2 control-label col-form-label text-end ${hasErrors(bean: material, field: 'shortDescFa', 'text-danger')}">
            <b><g:message code="material.shortDescFa.label" default="shortDescFa" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="shortDescFa" name="shortDescFa" value="${material?.shortDescFa}" required="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: material, field: 'shortDescFa', 'text-danger')}" id="shortDescFa" name="shortDescFa" value="${material?.shortDescFa}" required=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="descriptionDe" class="col-2 control-label col-form-label text-end ${hasErrors(bean: material, field: 'descriptionDe', 'text-danger')}">
            <b><g:message code="material.descriptionDe.label" default="descriptionDe" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: material, field: 'descriptionDe', 'text-danger')}" id="descriptionDe" name="descriptionDe" rows="7" disabled>${material?.descriptionDe}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: material, field: 'descriptionDe', 'text-danger')}" id="descriptionDe" name="descriptionDe" rows="7" required="">${material?.descriptionDe}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="descriptionEn" class="col-2 control-label col-form-label text-end ${hasErrors(bean: material, field: 'descriptionEn', 'text-danger')}">
            <b><g:message code="material.descriptionEn.label" default="descriptionEn" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: material, field: 'descriptionEn', 'text-danger')}" id="descriptionEn" name="descriptionEn" rows="7" disabled>${material?.descriptionEn}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: material, field: 'descriptionEn', 'text-danger')}" id="descriptionEn" name="descriptionEn" rows="7" required="">${material?.descriptionEn}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="descriptionFa" class="col-2 control-label col-form-label text-end ${hasErrors(bean: material, field: 'descriptionFa', 'text-danger')}">
            <b><g:message code="material.descriptionFa.label" default="descriptionFa" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: material, field: 'descriptionFa', 'text-danger')}" id="descriptionFa" name="descriptionFa" rows="7" disabled>${material?.descriptionFa}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: material, field: 'descriptionFa', 'text-danger')}" id="descriptionFa" name="descriptionFa" rows="7" required="">${material?.descriptionFa}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>
<br>