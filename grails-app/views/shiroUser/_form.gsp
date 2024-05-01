<%@ page import="artdb.ShiroUser" %>
<%@ page import="artdb.ShiroRole" %>

<!-- ------------------------------------------------------------------
   3 Sprachiger Titel und Beschreibung
------------------------------------------------------------------- -->

<!--
<hr style="margin: 1rem 0; color: inherit; background-color: currentColor; border: 0; opacity: 0.25;" />
 -->
<div class="form-check form-switch ps-0">
    <input class="form-check-input ms-auto" type="checkbox" id="active" name="active" ${shiroUser?.active ? 'checked' : ''} ${(actionName == 'show')? 'disabled' : ''}>
    <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault"><g:message code="shiroUser.active.label" default="Active" /></label>
</div>

<br>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="username" class="col-2 control-label col-form-label text-end ${hasErrors(bean: shiroUser, field: 'username', 'text-danger')}">
            <b><g:message code="shiroUser.username.label" default="username" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="username" name="username" value="${shiroUser?.username}" required="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: shiroUser, field: 'username', 'text-danger')}" id="username" name="username" value="${shiroUser?.username}" required=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="password" class="col-2 control-label col-form-label text-end ${hasErrors(bean: shiroUser, field: 'password', 'text-danger')}">
            <b><g:message code="shiroUser.password.label" default="password" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="password" name="password" value="" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: shiroUser, field: 'password', 'text-danger')}" id="password" name="password" value=""  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="permissions_dp" class="col-2 control-label col-form-label text-end ${hasErrors(bean: shiroUser, field: 'permissions', 'text-danger')}">
            <b><g:message code="shiroUser.permissions.label" default="permissions" /></b>
        </label>
        <div class="col-8">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:textField class="form-control" id="permissions_dp" name="permissions_dp" value="${shiroUser?.permissions}" disabled="true" />
                </g:if>
                <g:else>
                    <g:textField class="form-control ${hasErrors(bean: shiroUser, field: 'permissions', 'text-danger')}" id="permissions_dp" name="permissions_dp" value="${shiroUser?.permissions}"  />
                </g:else>
            </div>
        </div>
    </div>
</div>

<div class="form-group col-12">
    <div class="row col-12">
        <label for="roles_dp" class="col-2 control-label col-form-label text-end ${hasErrors(bean: shiroUser, field: 'roles', 'text-danger')}">
            <b><g:message code="shiroRole.label" default="roles" /></b>
        </label>
        <div class="col-2">
            <div class="input-group input-group-outline mb-1">
                <g:if test="${actionName == 'show'}">
                    <g:select id="roles_dp" name='roles' class="form-select input-group input-group-outline"
                              value="${shiroUser?.roles*.id}"
                              multiple="multiple"
                              from='${ShiroRole.list()}'
                              optionKey="id" disabled="true" />
                </g:if>
                <g:else>
                    <g:select id="roles_dp" name='roles' class="form-select input-group input-group-outline"
                              value="${shiroUser?.roles*.id}"
                              multiple="multiple"
                              from='${ShiroRole.list()}'
                              optionKey="id" />
                </g:else>
            </div>
        </div>
    </div>
</div>