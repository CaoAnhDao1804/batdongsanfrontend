<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Bất động sản Đà Nẵng</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/templates/admin/assets/img/logoroundhouse.png">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/owl.theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/educate-custon-icon.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/templates/admin/assets/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/templates/admin/assets/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/templates/admin/assets/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/templates/admin/assets/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/templates/admin/assets/css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/assets/css/responsive.css">
    <!-- modernizr JS
		============================================ -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/admin/assets/css/jquery.dataTables.min.css">
    <script src="${pageContext.request.contextPath}/templates/admin/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->
<!-- Start Left menu area -->
<div class="left-sidebar-pro">
    <nav id="sidebar" class="">
        <div class="sidebar-header">
            <a href="#"><img class="main-logo"
                                      src="${pageContext.request.contextPath}/templates/admin/assets/img/logo/logonew.png"
                                      alt=""/></a>
            <strong><a href="#"><img
                    src="${pageContext.request.contextPath}/templates/admin/assets/img/logo/logosn.png"
                    alt=""/></a></strong>
        </div>
        <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
                <ul class="metismenu" id="menu1">
                    <li>
                        <a class="has-arrow" href="${pageContext.request.contextPath}/admin/post" aria-expanded="false">
                            <span class="educate-icon educate-library icon-wrap"></span>
                            <span class="mini-click-non">Bài đăng</span>
                        </a>
                        <%--<ul class="submenu-angle" aria-expanded="false">--%>
                            <%--<li><a title="Dashboard v.1" href="${pageContext.request.contextPath}/admin/post"><span--%>
                                    <%--class="mini-sub-pro">Danh sách</span></a></li>--%>
                            <%--<li><a title="Dashboard v.2" href="index-1.html"><span--%>
                                    <%--class="mini-sub-pro">Danh sách yêu thích</span></a></li>--%>
                            <%--<li><a title="Dashboard v.3" href="index-2.html"><span--%>
                                    <%--class="mini-sub-pro">Danh sách nổi bật</span></a></li>--%>
                            <%--<li><a title="Analytics" href="analytics.html"><span--%>
                                    <%--class="mini-sub-pro">Danh sách mới</span></a></li>--%>
                            <%--<li><a title="Widgets" href="widgets.html"><span class="mini-sub-pro">Danh sách chặn</span></a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    </li>
                    <li>
                        <a title="Loại sản phẩm" href="${pageContext.request.contextPath}/admin/product-type"
                           aria-expanded="false">
                            <span
                                class="educate-icon educate-home icon-wrap" aria-hidden="true">

                            </span>
                            <span class="mini-click-non">Loại sản phẩm</span>
                        </a>
                    </li>
                    <li>
                        <a title="Loại bài đăng" href="${pageContext.request.contextPath}/admin/post-type"
                           aria-expanded="false">
                            <span
                                class="educate-icon educate-course icon-wrap">

                            </span>
                            <span class="mini-click-non">Loại bài đăng</span>
                        </a>
                    </li>
                    <li>
                        <a title="Môi trường" href="${pageContext.request.contextPath}/admin/surrounding"
                           aria-expanded="false">
                            <span><i class="educate-icon educate-department icon-wrap" ></i></span>
                            <span class="mini-click-non">Môi trường</span>
                        </a>

                    </li>
                    <li>
                        <a title="Tiện ích" href="${pageContext.request.contextPath}/admin/utilities"
                           aria-expanded="false">
                            <span
                                class="educate-icon educate-course icon-wrap">
                            </span>
                            <span class="mini-click-non">Tiện ích</span>
                        </a>
                    </li>
                    <li>
                        <a title="Người dùng" href="${pageContext.request.contextPath}/admin/user" aria-expanded="false">
                            <span
                                class="educate-icon educate-professor icon-wrap">

                            </span>
                            <span
                                class="mini-click-non">Người dùng</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </nav>
</div>
<!-- End Left menu area -->
<!-- Start Welcome area -->
<div class="all-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="logo-pro">
                    <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt=""/></a>
                </div>
            </div>
        </div>
    </div>
    <div class="header-advance-area">
        <div class="header-top-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="header-top-wraper" style="background: #1390c5">
                            <div class="row">
                                <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                    <div class="menu-switcher-pro">
                                        <button type="button" id="sidebarCollapse"
                                                class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn"
                                                style="margin-left: 30px"
                                        >
                                            <i class="educate-icon educate-nav"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                    <div class="header-top-menu tabl-d-n">
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                    <div class="header-right-info">
                                        <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                            <li class="nav-item">
                                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                                   class="nav-link dropdown-toggle">
                                                    <img src="${pageContext.request.contextPath}/templates/admin/assets/img/profile/1.jpg" alt=""/>
                                                    <span class="admin-name"> Quản trị viên </span>
                                                    <a href="${pageContext.request.contextPath}/logout"> <i class="fa fa-sign-out"></i></a>
                                                </a>
                                            </li>

                                                <div role="menu"
                                                     class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
                                                    <ul class="nav nav-tabs custon-set-tab">
                                                        <li class="active"><a data-toggle="tab" href="#Notes">Notes</a>
                                                        </li>
                                                        <li><a data-toggle="tab" href="#Projects">Projects</a>
                                                        </li>
                                                        <li><a data-toggle="tab" href="#Settings">Settings</a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content custom-bdr-nt">
                                                        <div id="Notes" class="tab-pane fade in active">
                                                            <div class="notes-area-wrap">
                                                                <div class="note-heading-indicate">
                                                                    <h2><i class="fa fa-comments-o"></i> Latest Notes
                                                                    </h2>
                                                                    <p>You have 10 new message.</p>
                                                                </div>
                                                                <div class="notes-list-area notes-menu-scrollbar">
                                                                    <ul class="notes-menu-list">
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="img/contact/4.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/1.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/${pageContext.request.contextPath}/templates/admin/assets/img/contact/2.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/3.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/4.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/1.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/2.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/1.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/2.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="notes-list-flow">
                                                                                    <div class="notes-img">
                                                                                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/3.jpg"
                                                                                             alt=""/>
                                                                                    </div>
                                                                                    <div class="notes-content">
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a
                                                                                            more-or-less normal.</p>
                                                                                        <span>Yesterday 2:45 pm</span>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="Projects" class="tab-pane fade">
                                                            <div class="projects-settings-wrap">
                                                                <div class="note-heading-indicate">
                                                                    <h2><i class="fa fa-cube"></i> Latest projects</h2>
                                                                    <p> You have 20 projects. 5 not completed.</p>
                                                                </div>
                                                                <div class="project-st-list-area project-st-menu-scrollbar">
                                                                    <ul class="projects-st-menu-list">
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Web Development</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">1 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content">
                                                                                        <p>Completion with: 28%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 28%;"
                                                                                                 class="progress-bar progress-bar-danger hd-tp-1"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Software Development</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">2 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content project-rating-cl">
                                                                                        <p>Completion with: 68%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 68%;"
                                                                                                 class="progress-bar hd-tp-2"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Graphic Design</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">3 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content">
                                                                                        <p>Completion with: 78%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 78%;"
                                                                                                 class="progress-bar hd-tp-3"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Web Design</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">4 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content project-rating-cl2">
                                                                                        <p>Completion with: 38%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 38%;"
                                                                                                 class="progress-bar progress-bar-danger hd-tp-4"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Business Card</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">5 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content">
                                                                                        <p>Completion with: 28%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 28%;"
                                                                                                 class="progress-bar progress-bar-danger hd-tp-5"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Ecommerce Business</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">6 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content project-rating-cl">
                                                                                        <p>Completion with: 68%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 68%;"
                                                                                                 class="progress-bar hd-tp-6"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Woocommerce Plugin</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">7 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content">
                                                                                        <p>Completion with: 78%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 78%;"
                                                                                                 class="progress-bar"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="project-list-flow">
                                                                                    <div class="projects-st-heading">
                                                                                        <h2>Wordpress Theme</h2>
                                                                                        <p> The point of using Lorem
                                                                                            Ipsum is that it has a more
                                                                                            or less normal.</p>
                                                                                        <span class="project-st-time">9 hours ago</span>
                                                                                    </div>
                                                                                    <div class="projects-st-content project-rating-cl2">
                                                                                        <p>Completion with: 38%</p>
                                                                                        <div class="progress progress-mini">
                                                                                            <div style="width: 38%;"
                                                                                                 class="progress-bar progress-bar-danger"></div>
                                                                                        </div>
                                                                                        <p>Project end: 4:00 pm -
                                                                                            12.06.2014</p>
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="Settings" class="tab-pane fade">
                                                            <div class="setting-panel-area">
                                                                <div class="note-heading-indicate">
                                                                    <h2><i class="fa fa-gears"></i> Settings Panel</h2>
                                                                    <p> You have 20 Settings. 5 not completed.</p>
                                                                </div>
                                                                <ul class="setting-panel-list">
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Show notifications</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Disable Chat</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example3">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example3">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Enable history</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example4">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example4">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Show charts</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example7">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example7">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Update everyday</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               checked=""
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example2">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example2">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="checkbox-setting-pro">
                                                                            <div class="checkbox-title-pro">
                                                                                <h2>Global search</h2>
                                                                                <div class="ts-custom-check">
                                                                                    <div class="onoffswitch">
                                                                                        <input type="checkbox"
                                                                                               name="collapsemenu"
                                                                                               checked=""
                                                                                               class="onoffswitch-checkbox"
                                                                                               id="example6">
                                                                                        <label class="onoffswitch-label"
                                                                                               for="example6">
                                                                                            <span class="onoffswitch-inner"></span>
                                                                                            <span class="onoffswitch-switch"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
