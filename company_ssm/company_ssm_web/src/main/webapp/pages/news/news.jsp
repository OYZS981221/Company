<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>企业列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">


    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-submenu.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leaflet.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/map.css" type="text/css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dropzone.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/slick.css">
    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet"
          href="${pageContext.request.contextPath}/css/skins/default.css">
    <style type="text/css">
        .areaSelect{
            min-height: 45px;
            padding: 5px 0;
            border-radius: 3px;
            box-shadow: none;
            border: 1px solid #e0e0e0;
            background: #fff;
        }
        .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn) {
            width:220px
        }
        .filter-option-inner {
            overflow: hidden;
            font-size: 14px;
            font-weight: 500;
        }
        .areaSelected{
            height: 45px;
            width: 240px;
            /* 去掉三角 */
            appearance:none;
            -moz-appearance:none; /* Firefox */
            -webkit-appearance:none; /* Safari 和 Chrome */
        }

    </style>
</head>
<body>
<div class="page_loader"></div>

<!-- Top header start -->
<header class="top-header" id="top-header-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-9 col-sm-7">
                <div class="list-inline">
                    <a href="tel:1-8X0-666-8X88"><i class="fa fa-phone"></i>联系方式：18720962055</a>
                    <%--                    <a href="tel:info@themevessel.com"><i class="fa fa-envelope"></i>info@themevessel.com</a>--%>
                    <%--                    <a href="tel:info@themevessel.com"><i class="flaticon-pin"></i>Mon - Sun: 8:00am - 6:00pm</a>--%>
                </div>
            </div>

        </div>
    </div>
</header>
<!-- Top header end -->

<!-- Main header start -->
<header class="main-header fixed-header-2">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand company-logo" href="${pageContext.request.contextPath}/Company/index.do">
                <h2 style="display: inline">企业档案中心</h2>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav header-ml">
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Company/index.do" id="navbarDropdownMenuLink2">首页HOME</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Company/companyD.do"
                                            id="navbarDropdownMenuLink3">企业档案</a></li>
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/News/newslist.do"
                                            id="navbarDropdownMenuLink4">新闻讯息</a></li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item ">
                        <a class="nav-link" href="#">
                            <i class="flaticon-user"></i>${sessionScope.user.userName}
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a id="outLogin" class="nav-link" href="#">
                            <i class="flaticon-logout"></i>退出登录
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/User/userJsp.do"
                           class="nav-link link-color">
                            <i class="flaticon-plus"></i>个人中心</a>
                    </li>

                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- Main header end -->

<!-- Sub banner start -->
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>企业档案中心</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">首页</a></li>
                <li class="active">新闻 讯息</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Properties section start -->
<div class="properties-section content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <!-- Option bar start -->
                <!-- Property box 2 start -->
                <c:forEach items="${news}" var="item">
                    <div class="property-box-2">
                        <div class="row">

                            <div class="col-lg-5 col-md-5 col-pad">
                                <div class="property-thumbnail">
                                    <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}" class="property-img">
                                        <img src="${pageContext.request.contextPath}${item.indeximg}"
                                             alt="properties" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7 col-pad align-self-center">
                                <div class="detail">
                                    <h3 class="title">
                                        <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">${item.title}</a>
                                    </h3>
                                    <h5 class="location">
                                        <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                            <i class="flaticon-pin"></i>${item.author}
                                        </a>
                                    </h5>
                                    <ul class="facilities-list clearfix">
                                        发布时间：<fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </c:forEach>


                <!-- Page navigation start -->
                <div class="pagination-box p-box-2 text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
                            </li>
                            <li class="page-item"><a class="page-link active" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search">
                        <h3 class="sidebar-title">新闻 检索</h3>
                        <form action="${pageContext.request.contextPath}/News/NewsFuzzy.do" method="post">
                            <div class="form-group">
                                <select  class="selectpicker search-fields" name="type">
                                    <option value="">类型</option>
                                    <option value="建筑业">建筑业</option>
                                    <option value="金融业">金融业</option>
                                    <option value="房地产业">房地产业</option>
                                    <option value="教育">教育</option>
                                    <option value="金融业">金融业</option>
                                    <option value="房地产业">房地产业</option>
                                    <option value="采矿业">采矿业</option>
                                    <option value="制造业">制造业</option>
                                    <option value="交通运输">交通运输</option>
                                    <option value="信息传输、软件和信息技术服务业">信息传输、软件和信息技术服务业</option>
                                    <option value="文化、体育和娱乐业">文化、体育和娱乐业</option>
                                    <option value="居民服务、修理和其他服务业">居民服务、修理和其他服务业</option>
                                    <option value="租赁和商务服务业">租赁和商务服务业</option>
                                </select>
                            </div>


                                    <div class="form-group">
                                        <input onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'endTime\')||\'%y-%M-%d\'}' })" id="beginTime"
                                               name="beginTime" class="areaSelect bootstrap-select areaSelected filter-option-inner Wdate" />
                                    </div>


                                    <div class="form-group">
                                        <input class="areaSelect bootstrap-select areaSelected filter-option-inner Wdate"  onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'beginTime\')}',maxDate:'%y-%M-%d' })"
                                               id="endTime" name="endTime"/>
                                    </div>


                                <div class="form-group">
                                    <input type="text" name="keyWords" class="areaSelect bootstrap-select areaSelected filter-option-inner" />
                                </div>


                            <div class="form-group mb-0">
                                <button class="search-button">搜新闻</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Properties section end -->

<!-- Intro section start -->
<div class="intro-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-12">
                <div class="intro-text">
<%--                    <h3>Do You Have Questions ?</h3>--%>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-12">

            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-submenu.js"></script>
<script src="${pageContext.request.contextPath}/js/rangeslider.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.mb.YTPlayer.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.scrollUp.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${pageContext.request.contextPath}/js/leaflet.js"></script>
<script src="${pageContext.request.contextPath}/js/leaflet-providers.js"></script>
<script src="${pageContext.request.contextPath}/js/leaflet.markercluster.js"></script>
<script src="${pageContext.request.contextPath}/js/dropzone.js"></script>
<script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.filterizr.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.countdown.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<script>
    $(function () {
        $('#areapick').distpicker();
    });
    $("#outLogin").click(function () {
        if (confirm("是否退出登录")) {
            location.href = "${pageContext.request.contextPath}/User/outLogin.do";
        } else {
            return false;
        }
    })
</script>

</body>
</html>
