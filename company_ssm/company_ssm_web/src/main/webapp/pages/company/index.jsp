<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css"/>
    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet"
          href="${pageContext.request.contextPath}/css/skins/default.css">


    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/ie10-viewport-bug-workaround.css">

    <style type="text/css">
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

<!-- Banner start -->
<div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner banner-slider-inner text-left">
            <div class="carousel-item banner-max-height active">
                <img class="d-block w-100 h-100" src="${pageContext.request.contextPath}/img/banner/banner-1.jpg"
                     alt="banner">
            </div>
            <div class="carousel-item banner-max-height">
                <img class="d-block w-100 h-100" src="${pageContext.request.contextPath}/img/banner/banner-3.jpg"
                     alt="banner">
            </div>
            <div class="carousel-item banner-max-height">
                <img class="d-block w-100 h-100" src="${pageContext.request.contextPath}/img/banner/banner-2.jpg"
                     alt="banner">
            </div>
            <div class="carousel-content container banner-info-2 bi-3 text-center">
                <h3>寻找你想要了解的企业</h3>

            </div>
        </div>
        <!-- Search area 3 start -->
        <div class="search-area-5 none-992">
            <div class="container">
                <div class="inline-search-area">
                    <form action="${pageContext.request.contextPath}/Company/selectFuzzyIndex.do" method="post">
                    <div class="row">

                        <div id="areapick">
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group">
                                <select title="省" name="province" id="province" class="input-text areaSelected" style="border-radius: 3px;"></select>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group">
                                <select title="市"  name="city" id="city" class="input-text areaSelected" style="position: relative;left: 67px; border-radius: 3px;"></select>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group" >

                                <select title="区" name="district" id="district"  class="input-text areaSelected" style="position: relative;left: 135px; border-radius: 3px;"></select>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group" style="border-radius: 0px">
                            <select class="selectpicker search-fields" name="type">
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
                                <option value="信息传输、软件和信息技术服务业">信息技术服务业</option>
                                <option value="文化、体育和娱乐业">文化、体育和娱乐业</option>
                                <option value="居民服务、修理和其他服务业">居民服务、修理和其他服务业</option>
                                <option value="租赁和商务服务业">租赁和商务服务业</option>
                            </select>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group">
                            <input type="text"  placeholder="开始时间" style="height: 45px; border-radius: 3px;" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'endTime\')||\'%y-%M-%d\'}' })" id="beginTime"
                                   name="beginTime" class="input-text Wdate">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group">
                            <input type="text" placeholder="结束时间" style="height: 45px; border-radius: 3px;" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'beginTime\')}',maxDate:'%y-%M-%d' })"
                                   id="endTime" name="endTime" class="input-text Wdate">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group">
                            <input type="text" placeholder="检索关键字" name="keyWords" class="input-text" style="height: 45px; border-radius: 3px;" />
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group">
                            <button class="btn button-theme btn-search btn-block" type="submit">
                                <i class="fa fa-search"></i><strong>查询企业</strong>
                            </button>
                        </div>

                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Search area 3 end -->
    </div>
</div>
<!-- Banner end -->
<!-- Featured Properties start -->
<div class="featured-properties content-area-14">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>时下热门企业</h1>
            <p>推荐时下热门企业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;助您了解讯息动态</p>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${company}" var="item" begin="0" end="0">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">

                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.province}${item.city}
                                        ${item.district}${item.address}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-phone"></i>${item.phoneNumber}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${company}" var="item" begin="1" end="1">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">

                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.province}${item.city}
                                        ${item.district}${item.address}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-phone"></i>${item.phoneNumber}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${company}" var="item" begin="2" end="2">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.province}${item.city}
                                        ${item.district}${item.address}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-phone"></i>${item.phoneNumber}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${company}" var="item" begin="3" end="3">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.province}${item.city}
                                        ${item.district}${item.address}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-phone"></i>${item.phoneNumber}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${company}" var="item" begin="4" end="4">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.province}${item.city}
                                        ${item.district}${item.address}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-phone"></i>${item.phoneNumber}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${company}" var="item" begin="5" end="5">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.province}${item.city}
                                        ${item.district}${item.address}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-phone"></i>${item.phoneNumber}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Featured Properties end -->

<!-- advantages start -->
<div class="advantages content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title-2 text-center">
            <h1>行业热点新闻</h1>
            <p>推荐时下热门企业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;助您了解企业动态</p>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${news}" var="item" begin="0" end="0">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">${item.title}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.title}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${news}" var="item" begin="1" end="1">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">${item.title}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.author},
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${news}" var="item" begin="2" end="2">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.title}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.author},
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.type},
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>

                        </div>

                    </c:forEach>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- advantages end -->

<!-- Blog section start -->
<div class="blog-section content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>推送企业</h1>
        </div>

        <div class="col-lg-4 col-md-6">
            <div class="property-box">
                <c:forEach items="${company}" var="item" begin="0" end="0">
                    <div class="property-thumbnail">
                        <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                           class="property-img">

                            <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                 alt="properties">
                        </a>
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                        </h1>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-pin"></i>${item.province}${item.city}
                                    ${item.district}${item.address}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-phone"></i>${item.phoneNumber}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-air-conditioner"></i>${item.type}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-calendar-1"></i>
                                <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                            </a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="col-lg-4 col-md-6">
            <div class="property-box">
                <c:forEach items="${company}" var="item" begin="1" end="1">
                    <div class="property-thumbnail">
                        <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                           class="property-img">

                            <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                 alt="properties">
                        </a>
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                        </h1>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-pin"></i>${item.province}${item.city}
                                    ${item.district}${item.address}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-phone"></i>${item.phoneNumber}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-air-conditioner"></i>${item.type}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-calendar-1"></i>
                                <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                            </a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="col-lg-4 col-md-6">
            <div class="property-box">
                <c:forEach items="${company}" var="item" begin="2" end="2">
                    <div class="property-thumbnail">
                        <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                           class="property-img">
                            <div class="tag">Featured</div>
                            <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                 alt="properties">
                        </a>
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a style="font-family:'Microsoft Yahei',serif" href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.name}</a>
                        </h1>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-pin"></i>${item.province}${item.city}
                                    ${item.district}${item.address}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-phone"></i>${item.phoneNumber}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-air-conditioner"></i>${item.type}
                            </a>
                        </div>
                        <div class="location">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                <i class="flaticon-calendar-1"></i>
                                <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                            </a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- Blog section end -->
<!-- Blog section start -->
<div class="blog-section content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>推送新闻</h1>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${news}" var="item" begin="0" end="0">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">${item.title}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.title}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${news}" var="item" begin="1" end="1">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">${item.title}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.author}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/News/news.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="property-box">
                    <c:forEach items="${news}" var="item" begin="2" end="2">
                        <div class="property-thumbnail">
                            <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}"
                               class="property-img">
                                <div class="tag">Featured</div>
                                <img class="d-block w-100" src="${pageContext.request.contextPath}${item.indeximg}"
                                     alt="properties">
                            </a>
                        </div>
                        <div class="detail">
                            <h1 class="title">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">${item.title}</a>
                            </h1>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-air-conditioner"></i>${item.author}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-pin"></i>${item.type}
                                </a>
                            </div>
                            <div class="location">
                                <a href="${pageContext.request.contextPath}/Company/companyA.do?id=${item.id}">
                                    <i class="flaticon-calendar-1"></i>
                                    <fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/>
                                </a>
                            </div>

                        </div>

                    </c:forEach>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- Blog section end -->

<!-- Our team start -->


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
<!-- Intro section end -->

<!-- Footer end -->

<script src="${pageContext.request.contextPath}/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
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
<script src="${pageContext.request.contextPath}/js/maps.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>

<script type="text/javascript">
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
