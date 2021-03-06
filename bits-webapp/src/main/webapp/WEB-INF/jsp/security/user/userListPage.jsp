<%--
  Created by IntelliJ IDEA.
  User: panzhuowen
  Date: 2014/10/17
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>用户列表</title>
    <%@include file="../../includes/adminCommon.jsp"%>
    <script src="<c:url value="/js/admin/systemUser.js"/>" type="text/javascript"></script>
</head>
<body class="page-header-fixed">
<%@include file="../../includes/top.jsp"%>
<div class="page-container" data-options="tools:'#tab-tools'">
    <div class="page-sidebar-wrapper">
        <div class="page-sidebar navbar-collapse collapse">
            <jsp:include page="../../includes/menu.jsp">
                <jsp:param name="systemNum" value="1"/>
                <jsp:param name="systemLeafNum" value="1"/>
            </jsp:include>
        </div>
    </div>
    <div class="page-content-wrapper">
        <div class="page-content" style="min-height:1033px !important" >
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                    <h3 class="page-title"></h3>
                    <ul class="page-breadcrumb breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <span>主页</span>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <span>用户管理</span>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <span></span>
                        </li>
                    </ul>
                    <!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                    <!-- Begin: life time stats -->
                    <div class="portlet box grey-cascade">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a>
                            </div>
                            <div class="actions">
                                <a href="#" onclick="userListTable.addUserInfo()" class="btn btn-default" id="datatable_ajax_new"><i class="fa fa-plus faa-shake animated-hover"></i>添加用户</a>
                                <a href="#" class="btn btn-default" id="reloadTable"><i class="fa fa-refresh faa-spin animated-hover"></i>重新载入</a>
                                <div class="btn-group">
                                    <a class="btn btn-default" href="#" data-toggle="dropdown">
                                        <i class="fa fa-columns faa-shake animated-hover "></i>
                                        选择列 <i class="fa fa-angle-down"></i>
                                    </a>
                                    <div id="datatable_ajax_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
                                        <label><input type="checkbox" checked data-column="0">账号</label>
                                        <label><input type="checkbox" checked data-column="1">用户名</label>
                                        <label><input type="checkbox" checked data-column="1">用户名</label>
                                        <label><input type="checkbox" checked data-column="2">角色</label>
                                        <label><input type="checkbox" checked data-column="3">操作</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-container">
                                <table id="datatable_ajax" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr role="row" class="heading">
                                        <th>账号</th>
                                        <th>用户名</th>
                                        <th>角色</th>
                                        <th>操作</th>
                                    </tr>
                                    <tr role="row" class="filter">
                                        <td>
                                            <input type="text" class="form-control form-filter input-sm" name="nameQuery"
                                                   id="logName" placeholder="账号">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control form-filter input-sm" name="usernameQuery"
                                                   id="userName" placeholder="用户名">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control form-filter input-sm" name="emailQuery"
                                                   id="roleName" placeholder="角色">
                                        </td>

                                        <td>
                                            <div class="margin-bottom-5">
                                                <a class="btn btn-sm yellow filter-submit margin-bottom">
                                                    <i class="fa fa-search faa-shake animated-hover"></i>查询</a>
                                                <a class="btn btn-sm red filter-cancel">
                                                    <i class="fa fa-refresh faa-spin animated-hover"></i>重置</a>
                                            </div>
                                        </td>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr class="heading">
                                        <th>账号</th>
                                        <th>用户名</th>
                                        <th>角色</th>
                                        <th>操作</th>
                                    </tr>
                                    </tfoot>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- End: life time stats -->
                </div>
            </div>
            <!-- END PAGE CONTENT-->
        </div>
    </div>
</div>
<!-- BEGIN FOOTER -->
<%@include file="../../includes/footer.jsp" %>
<div class="modal fade" id="modalDialog" tabindex="-1" role="basic" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog" style="width: 900px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="dialogTitle"></h4>
            </div>
            <div class="modal-body">
                <div class="portlet-body">
                    <iframe id="userEditIframe" style="border: none;width:858px;height:350px;" frameBorder="0"></iframe>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- END FOOTER -->
<div class="modal fade" id="deleteRowConfirm" tabindex="-1" role="basic" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">确认</h4>
            </div>
            <div class="modal-body">确认删除当前行？</div>
            <div class="modal-footer">
                <button type="button" class="btn default" data-dismiss="modal">取消</button>
                <button type="button" class="btn blue" id="deleteRow">删除</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
</body>
</html>
<script type="text/javascript">
    $(function () {
        userListTable.init();
    });
</script>

