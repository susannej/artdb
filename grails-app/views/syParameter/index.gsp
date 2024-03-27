<%--
  Created by IntelliJ IDEA.
  User: susanne
  Date: 04.02.24
  Time: 15:52
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'syParameter.label', default: 'SyParameter')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div id="content" role="main">
    <g:if test="${flash.message}">
       <div class="alert alert-success alert-dismissible text-white" role="alert">
           <span class="text-sm">${flash.message}</span>
           <button type="button" class="btn-close text-lg py-3 opacity-10" data-bs-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">×</span>
           </button>
       </div>
    </g:if>

    <g:link class="btn btn-info" action="create">
        <i class="fa fa-plus"></i>
        <g:message code="default.new.label" args="[entityName]" />
    </g:link>

    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <table border="0">
                                <tr>
                                    <td>
                                        <h6 class="text-white text-capitalize px-3"><nobr><g:message code="default.list.label" args="[entityName]" /></nobr></h6>
                                    </td>
                                    <td width="100%"></td>
                                    <td>
                                        <nobr><g:select name="max" class="px-3 mx-3" from="${(1..10)*.multiply(10)}" value="${max}" onChange="doFilterFormSubmitCheck();" /></nobr>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <div class="table-responsive p-0">
                            <table class="table align-items-center mb-0" >
                                <thead>
                                <tr>
                                    <shiro:hasPermission permission="syParameter:edit">
                                        <th class="text-secondary opacity-7"></th>
                                    </shiro:hasPermission>
                                    <th class="text-center text-uppercase text-secondary text-s font-weight-bolder opacity-7">Schlüssel</th>
                                    <th class="text-center text-uppercase text-secondary text-s font-weight-bolder opacity-7">Wert</th>
                                </tr>
                                </thead>
                                <tbody class="indexTable">
                                    <g:each in="${syParameterList}" status="i" var="syParameter">
                                        <tr>
                                            <shiro:hasPermission permission="syParameter:edit">
                                                <td class="align-middle text-center">
                                                    <g:link action="edit" id="${syParameter.id}" class="text-center"><i class="fa fa-edit"></i></g:link>
                                                </td>
                                            </shiro:hasPermission>
                                            <td class="align-middle text-center" onclick="window.document.location='${request.contextPath}/${controllerName}/show/${syParameter.id}'">
                                                <span class="text-secondary text-xs font-weight-bold">${fieldValue(bean: syParameter, field: "keyValue")}</span>
                                            </td>
                                            <td class="align-middle text-center" onclick="window.document.location='${request.contextPath}/${controllerName}/show/${syParameter.id}'">
                                                <span class="text-secondary text-xs font-weight-bold">${fieldValue(bean: syParameter, field: "value")}</span>
                                            </td>
                                        </tr>
                                    </g:each>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <g:if test="${syParameterCount > params.int('max')}">
                    <div class="pagination">
                        <g:paginate total="${syParameterCount ?: 0}" />
                    </div>
                </g:if>
            </div>
        </div>
    </div>
</div>

<g:link class="btn btn-info" action="create">
    <i class="fa fa-plus"></i>
    <g:message code="default.new.label" args="[entityName]" />
</g:link>
</body>
</html>
