<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String systemNum = request.getParameter("systemNum");       // 开始时间id
    String systemLeafNum = request.getParameter("systemLeafNum");
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<input type="hidden" id="systemNum" name="systemNum" value="<%=systemNum%>"/>
<input type="hidden" id="systemLeafNum" name="systemLeafNum" value="<%=systemLeafNum%>"/>

<ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
    <li class="sidebar-toggler-wrapper">
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="sidebar-toggler hidden-phone">
        </div>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    </li>
    <li class="sidebar-search-wrapper">
        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
        <!-- END RESPONSIVE QUICK SEARCH FORM -->
    </li>
    <shiro:hasPermission name="admin">
        <li id="system_1">
            <a href="javascript:;">
                <i class="fa fa-user faa-pulse animated-hover"></i>
                <span class="title">系统设置</span>
                <span class="arrow "> </span>
            </a>
            <ul class="sub-menu">
                <shiro:hasPermission name="user_admin">
                    <li id="systemLeaf_1_1"><a href="<%=basePath%>admin/user/getUserListPageDo">用户管理</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="role_admin">
                    <li id="systemLeaf_1_2"><a href="<%=basePath%>admin/role/getRoleListPageDo">角色管理</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="perm_admin">
                    <li id="systemLeaf_1_3"><a href="<%=basePath%>admin/permission/getPermissionListPageDo">权限管理</a></li>
                </shiro:hasPermission>
            </ul>
        </li>
    </shiro:hasPermission>
    <shiro:hasPermission name="pang">
        <li id="system_2">
            <a href="javascript:;">
                <i class="fa fa-user faa-pulse animated-hover"></i>
                <span class="title">逄增瑶</span>
                <span class="arrow "> </span>
            </a>
            <ul class="sub-menu">
                <shiro:hasPermission name="ssb">
                    <li id="systemLeaf_2_1"><a href="<%=basePath%>admin/user/asdf">测试页面</a></li>
                </shiro:hasPermission>
            </ul>
        </li>
    </shiro:hasPermission>
    <shiro:hasPermission name="teacher">
        <li id="system_3">
            <a href="javascript:;">
                <i class="fa fa-user faa-pulse animated-hover"></i>
                <span class="title">教师功能</span>
                <span class="arrow "> </span>
            </a>
            <ul class="sub-menu">
                <shiro:hasPermission name="newreport">
                    <li id="systemLeaf_3_1"><a href="<%=basePath%>admin/teacher/newReportPage">新建作业</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="uploadreport">
                    <li id="systemLeaf_3_2"><a href="<%=basePath%>admin/teacher/uploadReportPage">上传作业</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="uploadreport">
                    <li id="systemLeaf_3_3"><a href="<%=basePath%>admin/teacher/analysisReportPage">分析作业</a></li>
                </shiro:hasPermission>
            </ul>
        </li>

    </shiro:hasPermission>
    <shiro:hasPermission name="info">
        <li id="system_4">
            <a href="javascript:;">
                <i class="fa fa-user faa-pulse animated-hover"></i>
                <span class="title">信息管理</span>
                <span class="arrow "> </span>
            </a>
            <ul class="sub-menu">
                <shiro:hasPermission name="classinfo">
                    <li id="systemLeaf_4_1"><a href="<%=basePath%>admin/info/lessonInfoPage">班级管理</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="stuinfo">
                    <li id="systemLeaf_4_2"><a href="<%=basePath%>admin/info/stuInfoPage">学生管理</a></li>
                </shiro:hasPermission>

            </ul>
        </li>

    </shiro:hasPermission>
</ul>
<script type="text/javascript">
    var systemNum=$("#systemNum").val();
    var systemLeafNum=$("#systemLeafNum").val();
    $("#system_"+systemNum).addClass("active");
    $("#systemSpan_"+systemNum).addClass("selected");
    $("#systemLeaf_"+systemNum+"_"+systemLeafNum).addClass("active");

</script>