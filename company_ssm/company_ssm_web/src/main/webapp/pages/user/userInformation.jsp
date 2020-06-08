<%--
  Created by IntelliJ IDEA.
  User: 欧阳忠森
  Date: 2020/4/10
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
    <title>个人资料</title>
    <!-- Bootstrap Core CSS -->
    <link href="../../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="${pageContext.request.contextPath}/css/colors/default-dark.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
    <script>
        $(function(){
            var sex = "${user.sex}";
            if (sex == "男"){
                $("#select option[value='男']").prop("selected",true);
            }else {
                $("#select option[value='女']").prop("selected",true);
            }
        });
    </script>
</head>

<body class="fix-header card-no-border fix-sidebar">
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">个人 中心</p>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <header class="topbar">
        <nav class="navbar top-navbar navbar-expand-md navbar-light">
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/Company/index.do?id=${user.id}">
                    <!-- Logo icon --><b>
                    <img src="../../assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span>
                            <img src="../../assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                        </span>
                </a>
            </div>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <div class="navbar-collapse">
                <!-- ============================================================== -->
                <!-- toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav mr-auto">
                    <!-- This is  -->
                    <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                </ul>
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->
                <ul class="navbar-nav my-lg-0">
                    <!-- ============================================================== -->
                    <!-- Search -->
                    <!-- ============================================================== -->
                    <li class="nav-item hidden-xs-down search-box"> <a class="nav-link hidden-sm-down waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                        <form class="app-search">
                            <input type="text" class="form-control" placeholder="Search & enter"> <a class="srh-btn"><i class="ti-close"></i></a>
                        </form>
                    </li>
                    <!-- ============================================================== -->
                    <!-- Profile -->
                    <!-- ============================================================== -->
                </ul>
            </div>
        </nav>
    </header>
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <li> <a class="waves-effect waves-dark" href="" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">个人资料</span></a></li>
                    <li> <a class="waves-effect waves-dark" href="table-basic.html" aria-expanded="false"><i class="mdi mdi-table"></i><span class="hide-menu">我的关注</span></a></li>
                    <li> <a class="waves-effect waves-dark" href="map-google.html" aria-expanded="false"><i class="mdi mdi-earth"></i><span class="hide-menu">浏览历史</span></a></li>
                    <li> <a class="waves-effect waves-dark" href="pages-blank.html" aria-expanded="false"><i class="mdi mdi-book-open-variant"></i><span class="hide-menu">我的评论</span></a></li>
                    <li> <a class="waves-effect waves-dark" href="pages-error-404.html" aria-expanded="false"><i class="mdi mdi-help-circle"></i><span class="hide-menu">登录日志</span></a></li>
                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor">个人资料</h3>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <!-- Row -->
            <div class="row">
                <!-- Column -->

                <!-- Column -->
                <!-- Column -->
                <div class="col-lg-8 col-xlg-9 col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <form:form action="${pageContext.request.contextPath}/User/editor.do" modelAttribute="user"  method="post" class="form-horizontal form-material">
                                <div class="form-group">
                                    <label class="col-md-12">用户名</label>
                                    <div class="col-md-12">
                                        <form:input type="text" path="userName" class="form-control form-control-line"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">密码</label>
                                    <div class="col-md-12">
                                        <form:input type="password" path="passWord" class="form-control form-control-line"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-12">性别</label>
                                    <div class="col-sm-12">
                                        <form:select id="select" type="selection" path="sex"  class="form-control form-control-line">
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                        </form:select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">出生日期</label>
                                    <div class="col-md-12">
                                        <form:input type="date" path="birth" placeholder="123 456 7890" class="form-control form-control-line"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="example-email" class="col-md-12">Email</label>
                                    <div class="col-md-12">
                                        <form:input type="email" path="email" class="form-control form-control-line" name="example-email" id="example-email"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">电话号码</label>
                                    <div class="col-md-12">
                                        <form:input type="text" path="phoneNumber" class="form-control form-control-line"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button class="btn btn-success">更新 用户</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-7 align-self-center">
                                        <a id="delete" href="#" class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down">注销 用户</a>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
                <!-- Column -->
            </div>
            <!-- Row -->
            <!-- ============================================================== -->
            <!-- End PAge Content -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer">Copyright &copy; 2019.Company name All rights reserved.</footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="../../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="../../assets/plugins/bootstrap/js/popper.min.js"></script>
<script src="../../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="${pageContext.request.contextPath}/js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="${pageContext.request.contextPath}/js/waves.js"></script>
<!--Menu sidebar -->
<script src="${pageContext.request.contextPath}/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="${pageContext.request.contextPath}/js/custom.min.js"></script>
<script>
    $("#delete").click(function (){
        if (confirm("此操作无法撤回，你真的要注销此账号吗")) {
            location.href="${pageContext.request.contextPath}/User/delete.do?id=${user.id}";
        }
        else {
            return false;
        }
    })
</script>
</body>

</html>