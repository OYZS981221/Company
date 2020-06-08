<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <title></title>
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


    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath}/js/ie-emulation-modes-warning.js"></script>
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
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
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
<!-- Top header end -->

<!-- Main header start -->
<header class="main-header fixed-header-2">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand company-logo" href="${pageContext.request.contextPath}/Company/index.do">
                <h2 style="display: inline">企业档案</h2>
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


<!-- Sub banner start -->
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>企业 详情</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">企业详情</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Properties details page start -->
<div class="properties-details-page content-area-6">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 col-xs-12">
                <div class="properties-details-section">
                    <div id="propertiesDetailsSlider" class="carousel properties-details-sliders slide mb-40">
                        <!-- main slider carousel items -->
                        <div class="carousel-inner">
                            <div class="active item carousel-item" data-slide-number="0">
                                <img src="${pageContext.request.contextPath}${company.indeximg}" class="img-fluid"
                                     alt="slider-properties">
                            </div>
                            <div class="item carousel-item" data-slide-number="1">
                                <img src="${pageContext.request.contextPath}${company.otherimgF}" class="img-fluid"
                                     alt="slider-properties">
                            </div>
                            <div class="item carousel-item" data-slide-number="2">
                                <img src="${pageContext.request.contextPath}${company.otherimgS}" class="img-fluid"
                                     alt="slider-properties">
                            </div>
                            <div class="item carousel-item" data-slide-number="4">
                                <img src="${pageContext.request.contextPath}${company.otherimgT}" class="img-fluid"
                                     alt="slider-properties">
                            </div>
                            <!-- <div class="item carousel-item" data-slide-number="5">
                                <img src="img/properties/properties-5.jpg" class="img-fluid" alt="slider-properties">
                            </div> -->
                        </div>
                        <!-- main slider carousel nav controls -->
                        <ul class="carousel-indicators smail-properties list-inline nav nav-justified">
                            <li class="list-inline-item active">
                                <a id="carousel-selector-0" class="selected" data-slide-to="0"
                                   data-target="#propertiesDetailsSlider">
                                    <img src="${pageContext.request.contextPath}${company.indeximg}" class="img-fluid"
                                         alt="properties-small">
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a id="carousel-selector-1" data-slide-to="1" data-target="#propertiesDetailsSlider">
                                    <img src="${pageContext.request.contextPath}${company.otherimgF}" class="img-fluid"
                                         alt="properties-small">
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a id="carousel-selector-2" data-slide-to="2" data-target="#propertiesDetailsSlider">
                                    <img src="${pageContext.request.contextPath}${company.otherimgS}" class="img-fluid"
                                         alt="properties-small">
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a id="carousel-selector-3" data-slide-to="3" data-target="#propertiesDetailsSlider">
                                    <img src="${pageContext.request.contextPath}${company.otherimgT}" class="img-fluid"
                                         alt="properties-small">
                                </a>
                            </li>

                        </ul>
                        <div class="heading-properties-2">
                            <h3>${company.name}</h3>
                            <div class="price-location">
                                <span class="location"><i class="flaticon-pin"></i>${company.province}${company.city}
                                    ${company.district}${company.address}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Advanced search start -->
                    <div class="widget-2 advanced-search bg-grea-2 d-lg-none d-xl-none">
                        <h3 class="sidebar-title">Search Properties</h3>
                        <form method="GET">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="all-status">
                                    <option>All Status</option>
                                    <option>For Sale</option>
                                    <option>For Rent</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="all-type">
                                    <option>All Type</option>
                                    <option>Apartments</option>
                                    <option>Shop</option>
                                    <option>Restaurant</option>
                                    <option>Villa</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="commercial">
                                    <option>Commercial</option>
                                    <option>Residential</option>
                                    <option>Land</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="location">
                                    <option>Location</option>
                                    <option>American</option>
                                    <option>Florida</option>
                                    <option>Belgium</option>
                                    <option>Canada</option>
                                </select>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <select class="selectpicker search-fields" name="bedrooms">
                                            <option>Bedrooms</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <select class="selectpicker search-fields" name="bathroom">
                                            <option>Bathroom</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="range-slider">
                                <label>Price</label>
                                <div data-min="0" data-max="150000" data-min-name="min_price" data-max-name="max_price"
                                     data-unit="USD" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                <div class="clearfix"></div>
                            </div>
                            <a class="show-more-options" data-toggle="collapse" data-target="#options-content2">
                                <i class="fa fa-plus-circle"></i> Other Features
                            </a>
                            <div id="options-content2" class="collapse">
                                <h3 class="sidebar-title">Amenities</h3>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox9" type="checkbox">
                                    <label for="checkbox9">
                                        Air Condition
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox10" type="checkbox">
                                    <label for="checkbox10">
                                        Places to seat
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox11" type="checkbox">
                                    <label for="checkbox11">
                                        Swimming Pool
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox12" type="checkbox">
                                    <label for="checkbox12">
                                        Free Parking
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox13" type="checkbox">
                                    <label for="checkbox13">
                                        Central Heating
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox14" type="checkbox">
                                    <label for="checkbox14">
                                        Laundry Room
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox15" type="checkbox">
                                    <label for="checkbox15">
                                        Window Covering
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox16" type="checkbox">
                                    <label for="checkbox16">
                                        Alarm
                                    </label>
                                </div>
                                <br>
                            </div>
                            <div class="form-group mb-0">
                                <button class="search-button">Search</button>
                            </div>
                        </form>
                    </div>
                    <!-- Tabbing box start -->
                    <div class="tabbing tabbing-box mb-40">
                        <ul class="nav nav-tabs" id="carTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active show" id="one-tab" data-toggle="tab" href="#one" role="tab"
                                   aria-controls="one" aria-selected="false">企业 描述</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="6-tab" data-toggle="tab" href="#6" role="tab" aria-controls="6"
                                   aria-selected="true">企业 详情</a>
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link" id="two-tab" data-toggle="tab" href="#two" role="tab" aria-controls="two" aria-selected="false">法人 信息</a>
                            </li> -->
                            <li class="nav-item">
                                <a class="nav-link" id="three-tab" data-toggle="tab" href="#three" role="tab"
                                   aria-controls="three" aria-selected="true">经营 动态</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="5-tab" data-toggle="tab" href="#5" role="tab" aria-controls="5"
                                   aria-selected="true">地址 信息</a>
                            </li>

                        </ul>
                        <div class="tab-content" id="carTabContent">
                            <div class="tab-pane fade active show" id="one" role="tabpanel" aria-labelledby="one-tab">
                                <div class="properties-description mb-50">
                                    <h3 class="heading-2">
                                        企业 描述
                                    </h3>
                                    <p>${company.introduction}</p>

                                </div>
                            </div>
                            <div class="tab-pane fade " id="three" role="tabpanel" aria-labelledby="three-tab">
                                <div class="property-details mb-40">
                                    <h3 class="heading-2">经营 动态</h3>
                                    <div id="action">${company.action}</div>
                                </div>
                            </div>
                            <div class="tab-pane fade " id="6" role="tabpanel" aria-labelledby="6-tab">
                                <div class="property-details mb-40">
                                    <h3 class="heading-2">企业 详情</h3>
                                    <div class="row">
                                        <div class="col-md-4 col-sm-6">
                                            <ul style="font-family:arial">
                                                <li>
                                                    <strong>公司名:</strong>${company.name}
                                                </li>
                                                <li>
                                                    <strong>公司地址:</strong>${company.address}
                                                </li>
                                                <li>
                                                    <strong>电话号码</strong>${company.phoneNumber}
                                                </li>
                                                <li>
                                                    <strong>注册时间:</strong><fmt:formatDate value="${company.time}"
                                                                                          pattern="yyyy-MM-dd"/>
                                                </li>
                                                <li>
                                                    <strong>经营范围:</strong>${company.type}
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
                                            <ul style="font-family:arial">
                                                <li>
                                                    <strong></strong>
                                                </li>
                                                <li>
                                                    <strong>法人代表:</strong>${company.boss}
                                                </li>
                                                <li>
                                                    <strong>邮箱:</strong>${company.email}
                                                </li>
                                                <li>
                                                    <strong>注册资产:</strong>${company.assets}
                                                </li>
                                                <li>
                                                    <strong>公司官网:</strong>${company.internet}
                                                </li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade " id="5" role="tabpanel" aria-labelledby="5-tab">
                                <div class="location mb-50">
                                    <div class="map">
                                        <h3 class="heading-2">地址 信息</h3>
                                        <div>地址：${company.address}</div>
                                    </div>

                                    <img src="${pageContext.request.contextPath}${company.addressimg}" alt="floor-plans"
                                         class="img-fluid">
                                </div>
                            </div>
<%--                            <div class="tab-pane fade " id="4" role="tabpanel" aria-labelledby="4-tab">--%>
<%--                                <div class="inside-properties mb-50">--%>
<%--                                    <h3 class="heading-2">--%>
<%--                                        Property Video--%>
<%--                                    </h3>--%>
<%--                                    <!--<iframe src="https://www.youtube.com/embed/5e0LxrLSzok" allowfullscreen=""></iframe>-->--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                    <!-- Heading 2 -->
                    <h3 class="heading-2">用户评论</h3>
                    <!-- Comments start -->
                    <ul class="comments">
                        <c:forEach items="${comment}" var="item">
                            <li>
                                <div class="comment">
                                    <div class="comment-author">
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/img/avatar/avatar-1.jpg"
                                                 alt="comments-user">
                                        </a>
                                    </div>
                                    <div class="comment-content">
                                        <div class="comment-meta">
                                            <h6>
                                                    ${item.user.userName}
                                                <span class="float-right"><fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/></span>
                                            </h6>
                                        </div>
                                        <p>${item.comment}</p>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>

                    </ul>

                    <button id="collection" type="button">加入 收藏</button>
                    <br>
                    <br>
                    <br>
                    <!-- Contact 2 start -->
                    <div class="contact-2 ca mb-50">
                        <h3 class="heading">用户 留言</h3>
                        <form action="#" method="GET" enctype="multipart/form-data">
                            <div class="row">
                                <div class="form-group message col-md-12">
                                    <div id="introduction"></div>
                                </div>
                                <div class="send-btn col-md-12">
                                    <button id="btn-submit3" type="button" class="btn btn-md button-theme">提交 评论
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search">
                        <h3 class="sidebar-title">企业 搜索</h3>
                        <form action="${pageContext.request.contextPath}/Company/selectFuzzyIndex.do" method="post">
                            <div class="form-group">
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
                                    <option value="信息传输、软件和信息技术服务业">信息传输、软件和信息技术服务业</option>
                                    <option value="文化、体育和娱乐业">文化、体育和娱乐业</option>
                                    <option value="居民服务、修理和其他服务业">居民服务、修理和其他服务业</option>
                                    <option value="租赁和商务服务业">租赁和商务服务业</option>
                                </select>
                            </div>
                            <div id="areapick">
                                <div class="form-group" >
                                    <select title="省"  class="areaSelect bootstrap-select areaSelected filter-option-inner" name="province" id="province" ></select>
                                </div>
                                <div class="form-group">
                                    <select title="市"  class="areaSelect bootstrap-select areaSelected filter-option-inner" name="city" id="city" ></select>
                                </div>
                                <div class="form-group">
                                    <select title="区"  class="areaSelect bootstrap-select areaSelected filter-option-inner" name="district" id="district" ></select>
                                </div>
                                <div class="form-group">
                                    <input name="keyWords" type="text" class="areaSelect bootstrap-select areaSelected filter-option-inner" style="width: 310px;"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'endTime\')||\'%y-%M-%d\'}' })" id="beginTime"
                                               name="beginTime" class="selectpicker search-fields Wdate" style="width: 140px; height: 45px;" />
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input class="selectpicker search-fields Wdate" style="width: 140px; height: 45px;" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'beginTime\')}',maxDate:'%y-%M-%d' })"
                                               id="endTime" name="endTime"/>
                                    </div>
                                </div>

                            </div>

                            <div class="form-group mb-0">
                                <button class="search-button" type="submit">搜企业</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
</div>
<!-- Properties details page end -->

<!-- Intro section start -->
<div class="intro-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-12">
                <div class="intro-text">
                    <h3></h3>
                </div>
            </div>
        </div>
    </div>
</div>


</footer>


<script src="${pageContext.request.contextPath}/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/wangEditor/3.1.1/wangEditor.js"></script>
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

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${pageContext.request.contextPath}/js/ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script src="${pageContext.request.contextPath}/js/ie10-viewport-bug-workaround.js"></script>
<script type="text/javascript">
    var date = new Date();
    var time = date.getTime();
    var E = window.wangEditor;
    var editor = new E('#introduction');
    editor.create();

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

    // 点击确认按钮触发
    $('#btn-submit3').click(function () {
        $.ajax({
            <!-- 向后端传输的数据 -->
            type: 'POST',
            url: '${pageContext.request.contextPath}/Comment/insertComment.do',
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            data: JSON.stringify({
                companyID: ${company.id},
                userID: ${sessionScope.user.id},
                time: time,
                comment: editor.txt.html()
            }),
            success:
                function (data) {
                    if (data.state == 200) {
                        layer.msg(data.message, {icon: 1, time: 1000}, function () {
                            location.reload();
                        });

                    }
                    if (data.state == 300) {
                        layer.msg(data.message, {icon: 2, time: 1000});
                        return;
                    }
                }
        });
    });
</script>

<script>
    // 点击确认按钮触发
    $('#collection').click(function () {
        $.ajax({
            <!-- 向后端传输的数据 -->
            type: 'POST',
            url: '${pageContext.request.contextPath}/Collection/insertCollection.do',
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            data: JSON.stringify({
                companyID: ${company.id},
                userID: ${sessionScope.user.id},
            }),
            success:
                function (data) {
                    if (data.state == 200) {
                        layer.msg(data.message, {icon: 1, time: 1000}, function () {
                            location.reload();
                        });

                    }
                    if (data.state == 300) {
                        layer.msg(data.message, {icon: 2, time: 1000});
                        return;
                    }
                    if (data.state == 400) {
                        layer.msg(data.message, {icon: 2, time: 1000});
                        return;
                    }
                }
        });
    });
</script>
</body>
</html>

