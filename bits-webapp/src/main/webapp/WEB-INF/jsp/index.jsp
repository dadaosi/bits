<%--
    Created by panzhuowen on 2015/2/6.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <title>比特能专家</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content="Metronic Shop UI description" name="description">
    <meta content="Metronic Shop UI keywords" name="keywords">
    <meta content="keenthemes" name="author">

    <meta property="og:site_name" content="-CUSTOMER VALUE-">
    <meta property="og:title" content="-CUSTOMER VALUE-">
    <meta property="og:description" content="-CUSTOMER VALUE-">
    <meta property="og:type" content="website">
    <meta property="og:image" content="-CUSTOMER VALUE-">
    <!-- link to image for socio -->
    <meta property="og:url" content="-CUSTOMER VALUE-">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="favicon.ico" rel="SHORTCUT ICON" type="image/ico">
    <jsp:include page="includes/include.jsp"/>
</head>
<body class="corporate">
<jsp:include page="includes/header.jsp"/>
<div class="header">
    <div class="container">
        <%--<a class="site-logo" href="index.html"><img src="../../assets/frontend/layout/img/logos/logo-corp-red.png"--%>
        <%--alt="Metronic FrontEnd"></a>--%>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit">
            <ul>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">
                        Home
                        <i class="fa fa-angle-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <li class="active"><a href="index.html">Home Default</a></li>
                        <li><a href="index-header-fix.html">Home with Header Fixed</a></li>
                        <li><a href="index-without-topbar.html">Home without Top Bar</a></li>
                    </ul>
                </li>
                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>

                    <div class="search-box">
                        <form action="#">
                            <div class="input-group">
                                <input type="text" placeholder="Search" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">搜索</button>
                    </span>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>
<!-- Header END -->
<div class="page-slider margin-bottom-40">
    <div class="fullwidthbanner-container revolution-slider">
        <div class="fullwidthabnner">
            <ul id="revolutionul">
                <!-- THE NEW SLIDE -->

                <!-- THE SECOND SLIDE -->
                <li data-transition="fade" data-slotamount="7" data-masterspeed="300" data-delay="9400"
                    data-thumb="<c:url value="/assets/frontend/pages/img/revolutionslider/thumbs/thumb2.jpg"/> ">
                    <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/bg2.jpg"/> " alt="">

                    <div class="caption lfl slide_title slide_item_left"
                         data-x="30"
                         data-y="125"
                         data-speed="400"
                         data-start="3500"
                         data-easing="easeOutExpo">
                        工业时代 &amp; 比特能
                    </div>
                    <div class="caption lfl slide_subtitle slide_item_left"
                         data-x="30"
                         data-y="200"
                         data-speed="400"
                         data-start="4000"
                         data-easing="easeOutExpo">
                        信息化时代 &amp; 比特能专家机器人
                    </div>
                    <div class="caption lfl slide_desc slide_item_left"
                         data-x="30"
                         data-y="245"
                         data-speed="400"
                         data-start="4500"
                         data-easing="easeOutExpo">
                        找技术，找专家，就来比特能专家机器人<br> 上千位机器人专家为您服务
                    </div>
                    <div class="caption lfr slide_item_right"
                         data-x="635"
                         data-y="105"
                         data-speed="1200"
                         data-start="1500"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/mac.png"/> " alt="Image 1">
                    </div>
                    <div class="caption lfr slide_item_right"
                         data-x="580"
                         data-y="245"
                         data-speed="1200"
                         data-start="2000"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/ipad.png"/> " alt="Image 1">
                    </div>
                    <div class="caption lfr slide_item_right"
                         data-x="735"
                         data-y="290"
                         data-speed="1200"
                         data-start="2500"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/iphone.png"/> "
                             alt="Image 1">
                    </div>
                    <div class="caption lfr slide_item_right"
                         data-x="835"
                         data-y="230"
                         data-speed="1200"
                         data-start="3000"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/macbook.png"/> "
                             alt="Image 1">
                    </div>
                    <div class="caption lft slide_item_right"
                         data-x="865"
                         data-y="45"
                         data-speed="500"
                         data-start="5000"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/hint1-red.png"/> "
                             id="rev-hint1"
                             alt="Image 1">
                    </div>
                    <div class="caption lfb slide_item_right"
                         data-x="355"
                         data-y="355"
                         data-speed="500"
                         data-start="5500"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/hint2-red.png"/> "
                             id="rev-hint2"
                             alt="Image 1">
                    </div>
                </li>

                <!-- THE THIRD SLIDE -->
                <li data-transition="fade" data-slotamount="8" data-masterspeed="700" data-delay="9400"
                    data-thumb="<c:url value="/assets/frontend/pages/img/revolutionslider/thumbs/thumb2.jpg"/> ">
                    <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/bg3.jpg"/> " alt="">

                    <div class="caption lfr slide_title"
                         data-x="470"
                         data-y="100"
                         data-speed="400"
                         data-start="2000"
                         data-easing="easeOutExpo">
                        24小时在线为您解答
                    </div>
                    <div class="caption lfr slide_subtitle"
                         data-x="470"
                         data-y="170"
                         data-speed="400"
                         data-start="2500"
                         data-easing="easeOutExpo">
                        比特能专家机器人为您服务
                    </div>
                    <div class="caption lfr slide_desc"
                         data-x="470"
                         data-y="220"
                         data-speed="400"
                         data-start="3000"
                         data-easing="easeOutExpo">
                        还在位专家难找而头疼吗<br>比特能专家来帮助你
                    </div>
                    <a class="caption lfr btn yellow slide_btn" href=""
                       data-x="470"
                       data-y="280"
                       data-speed="400"
                       data-start="3500"
                       data-easing="easeOutExpo">
                        专家水平难辨
                    </a>
                </li>

                <!-- THE FORTH SLIDE -->
                <li data-transition="fade" data-slotamount="8" data-masterspeed="700" data-delay="9400"
                    data-thumb="<c:url value="/assets/frontend/pages/img/revolutionslider/thumbs/thumb2.jpg"/> ">
                    <!-- THE MAIN IMAGE IN THE FIRST SLIDE -->
                    <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/bg4.jpg"/> " alt="">

                    <div class="caption lft slide_title"
                         data-x="30"
                         data-y="105"
                         data-speed="400"
                         data-start="1500"
                         data-easing="easeOutExpo">
                        比特能专家机器人
                    </div>
                    <div class="caption lft slide_subtitle"
                         data-x="30"
                         data-y="180"
                         data-speed="400"
                         data-start="2000"
                         data-easing="easeOutExpo">
                        信息化时代信息无价
                    </div>
                    <div class="caption lft slide_desc"
                         data-x="30"
                         data-y="225"
                         data-speed="400"
                         data-start="2500"
                         data-easing="easeOutExpo">
                        如何掌握信息<br> 保证信息时效性
                    </div>
                    <a class="caption lft slide_btn btn red slide_item_left"
                       href="#"
                       data-x="30"
                       data-y="300"
                       data-speed="400"
                       data-start="3000"
                       data-easing="easeOutExpo">
                        更多
                    </a>

                    <div class="caption lft start"
                         data-x="670"
                         data-y="55"
                         data-speed="400"
                         data-start="2000"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/iphone_left.png"/> "
                             alt="Image 2">
                    </div>

                    <div class="caption lft start"
                         data-x="850"
                         data-y="55"
                         data-speed="400"
                         data-start="2400"
                         data-easing="easeOutBack">
                        <img src="<c:url value="/assets/frontend/pages/img/revolutionslider/iphone_right.png"/> "
                             alt="Image 3">
                    </div>
                </li>
            </ul>
            <div class="tp-bannertimer tp-bottom"></div>
        </div>
    </div>
</div>
<!-- END SLIDER -->
</body>
</html>