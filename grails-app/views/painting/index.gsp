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
    <g:set var="entityName" value="${message(code: 'painting.label', default: 'Painting')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div id="content" role="main">
    <g:if test="${flash.message}">
       <div class="alert alert-primary alert-dismissible text-white" role="alert">
           <span class="text-sm">${flash.message}</span>
           <button type="button" class="btn-close text-lg py-3 opacity-10" data-bs-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">×</span>
           </button>
       </div>
    </g:if>

    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3"><g:message code="default.list.label" args="[entityName]" /></h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <div class="table-responsive p-0">
                            <table class="table align-items-center mb-0" >
                                <thead>
                                <tr>
                                    <th class="text-secondary opacity-7"></th>
                                    <th class="text-center text-uppercase text-secondary text-s font-weight-bolder opacity-7">WEB</th>
                                    <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7">Titel</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Beschreibung</th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Datum</th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Ort</th>
                                    <th class="text-secondary opacity-7"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="align-middle text-center">
                                       <a href="" class="text-center text-secondary font-weight-bold text-s"><i class="fa fa-edit"></i></a>
                                    </td>
                                    <td class="align-middle text-center">
                                        <i class="fa fa-check text-info text-center" aria-hidden="true"></i>
                                    </td>
                                    <td>
                                        <div class="d-flex px-2 py-1">
                                            <div>
                                                <asset:image src="template_painting.jpeg" class="avatar avatar-m me-3 border-radius-lg" />
                                                <!--
                                                <img src="../assets/img/team-2.jpg" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                                -->
                                            </div>
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="mb-0 text-sm">John Michael</h6>
                                                <p class="text-xs text-secondary mb-0">john@creative-tim.com</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-xs font-weight-bold mb-0">Manager</p>
                                        <p class="text-xs text-secondary mb-0">Organization</p>
                                    </td>
                                    <td class="align-middle text-center text-sm">
                                        <span class="badge badge-sm bg-gradient-success">Online</span>
                                    </td>
                                    <td class="align-middle text-center">
                                        <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--
                <g:if test="${paintingCount > params.int('max')}">
                    <div class="pagination">
                        <g:paginate total="${paintingCount ?: 0}" />
                    </div>
                </g:if>
            </div>
        </section>
    </div>
</div>
 -->
</body>
</html>
