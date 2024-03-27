<%@ page import="artdb.Category" %>

<!-- ------------------------------------------------------------------
   3 Sprachiger Titel und Beschreibung
------------------------------------------------------------------- -->

<!--
<hr style="margin: 1rem 0; color: inherit; background-color: currentColor; border: 0; opacity: 0.25;" />
 -->

<div class="form-group col-12">
    <div class="row col-12">
        <label for="shortDesc" class="col-2 control-label col-form-label text-end ${hasErrors(bean: category, field: 'shortDesc', 'text-danger')}">
            <b><g:message code="category.shortDesc.label" default="shortDesc" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="shortDesc" name="shortDesc" value="${category?.shortDesc}" required="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: category, field: 'shortDesc', 'text-danger')}" id="shortDesc" name="shortDesc" value="${category?.shortDesc}" required=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="shortDescFa" class="col-2 control-label col-form-label text-end ${hasErrors(bean: category, field: 'shortDescFa', 'text-danger')}">
            <b><g:message code="category.shortDescFa.label" default="shortDescFa" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="shortDescFa" name="shortDescFa" value="${category?.shortDescFa}" required="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: category, field: 'shortDescFa', 'text-danger')}" id="shortDescFa" name="shortDescFa" value="${category?.shortDescFa}" required=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="descriptionDe" class="col-2 control-label col-form-label text-end ${hasErrors(bean: category, field: 'descriptionDe', 'text-danger')}">
            <b><g:message code="category.descriptionDe.label" default="descriptionDe" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: category, field: 'descriptionDe', 'text-danger')}" id="descriptionDe" name="descriptionDe" rows="7" disabled>${category?.descriptionDe}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: category, field: 'descriptionDe', 'text-danger')}" id="descriptionDe" name="descriptionDe" rows="7" required="">${category?.descriptionDe}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="descriptionEn" class="col-2 control-label col-form-label text-end ${hasErrors(bean: category, field: 'descriptionEn', 'text-danger')}">
            <b><g:message code="category.descriptionEn.label" default="descriptionEn" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: category, field: 'descriptionEn', 'text-danger')}" id="descriptionEn" name="descriptionEn" rows="7" disabled>${category?.descriptionEn}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: category, field: 'descriptionEn', 'text-danger')}" id="descriptionEn" name="descriptionEn" rows="7" required="">${category?.descriptionEn}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="descriptionFa" class="col-2 control-label col-form-label text-end ${hasErrors(bean: category, field: 'descriptionFa', 'text-danger')}">
            <b><g:message code="category.descriptionFa.label" default="descriptionFa" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <textarea class="form-control ${hasErrors(bean: category, field: 'descriptionFa', 'text-danger')}" id="descriptionFa" name="descriptionFa" rows="7" disabled>${category?.descriptionFa}</textarea>
                </g:if>
                <g:else>
                    <textarea class="form-control ${hasErrors(bean: category, field: 'descriptionFa', 'text-danger')}" id="descriptionFa" name="descriptionFa" rows="7" required="">${category?.descriptionFa}</textarea>
                </g:else>
            </div>
        </div>
    </div>
</div>
<br>