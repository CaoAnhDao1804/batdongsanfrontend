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
          href="${pageContext.request.contextPath}/templates/admin/assets/img/house.ico">
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
            <a href="index.html"><img class="main-logo"
                                      src="${pageContext.request.contextPath}/templates/admin/assets/img/logo/long_house.png"
                                      alt=""/></a>
            <strong><a href="index.html"><img
                    src="${pageContext.request.contextPath}/templates/admin/assets/img/logo/logosn.png"
                    alt=""/></a></strong>
        </div>
        <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
                <ul class="metismenu" id="menu1">
                    <li>
                        <a class="has-arrow" href="${pageContext.request.contextPath}/admin/post">
                            <span class="educate-icon educate-home icon-wrap"></span>
                            <span class="mini-click-non">Post</span>
                        </a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Dashboard v.1" href="${pageContext.request.contextPath}/admin/post"><span
                                    class="mini-sub-pro">Danh sách</span></a></li>
                            <li><a title="Dashboard v.2" href="index-1.html"><span
                                    class="mini-sub-pro">Danh sách yêu thích</span></a></li>
                            <li><a title="Dashboard v.3" href="index-2.html"><span
                                    class="mini-sub-pro">Danh sách nổi bật</span></a></li>
                            <li><a title="Analytics" href="analytics.html"><span
                                    class="mini-sub-pro">Danh sách mới</span></a></li>
                            <li><a title="Widgets" href="widgets.html"><span class="mini-sub-pro">Danh sách chặn</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a title="Landing Page" href="${pageContext.request.contextPath}/admin/product-type"
                           aria-expanded="false"><span
                                class="educate-icon educate-event icon-wrap sub-icon-mg" aria-hidden="true"></span>
                            <span class="mini-click-non">Product Type</span></a>
                    </li>
                    <li>
                        <a class="has-arrow" href="${pageContext.request.contextPath}/admin/post-type"
                           aria-expanded="false"><span
                                class="educate-icon educate-professor icon-wrap"></span> <span class="mini-click-non">Post Type</span></a>
                    </li>
                    <li>
                        <a class="has-arrow" href="${pageContext.request.contextPath}/admin/surrounding"
                           aria-expanded="false"><span
                                class="educate-icon educate-student icon-wrap"></span> <span class="mini-click-non">Surounding</span></a>

                    </li>
                    <li>
                        <a class="has-arrow" href="${pageContext.request.contextPath}/admin/utilities"
                           aria-expanded="false"><span
                                class="educate-icon educate-course icon-wrap"></span> <span class="mini-click-non">Utilitie</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="All Courses" href="all-courses.html"><span
                                    class="mini-sub-pro">All Courses</span></a></li>
                            <li><a title="Add Courses" href="add-course.html"><span
                                    class="mini-sub-pro">Add Course</span></a></li>
                            <li><a title="Edit Courses" href="edit-course.html"><span
                                    class="mini-sub-pro">Edit Course</span></a></li>
                            <li><a title="Courses Profile" href="course-info.html"><span class="mini-sub-pro">Courses Info</span></a>
                            </li>
                            <li><a title="Product Payment" href="course-payment.html"><span class="mini-sub-pro">Courses Payment</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="${pageContext.request.contextPath}/admin/user" aria-expanded="false"><span
                                class="educate-icon educate-library icon-wrap"></span> <span
                                class="mini-click-non">User</span></a>
                    </li>
                    <li>
                        <a class="has-arrow" href="all-courses.html" aria-expanded="false"><span
                                class="educate-icon educate-department icon-wrap"></span> <span class="mini-click-non">Departments</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Departments List" href="departments.html"><span class="mini-sub-pro">Departments List</span></a>
                            </li>
                            <li><a title="Add Departments" href="add-department.html"><span class="mini-sub-pro">Add Departments</span></a>
                            </li>
                            <li><a title="Edit Departments" href="edit-department.html"><span class="mini-sub-pro">Edit Departments</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><span
                                class="educate-icon educate-message icon-wrap"></span> <span class="mini-click-non">Mailbox</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Inbox" href="mailbox.html"><span class="mini-sub-pro">Inbox</span></a></li>
                            <li><a title="View Mail" href="mailbox-view.html"><span
                                    class="mini-sub-pro">View Mail</span></a></li>
                            <li><a title="Compose Mail" href="mailbox-compose.html"><span class="mini-sub-pro">Compose Mail</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><span
                                class="educate-icon educate-interface icon-wrap"></span> <span class="mini-click-non">Interface</span></a>
                        <ul class="submenu-angle interface-mini-nb-dp" aria-expanded="false">
                            <li><a title="Google Map" href="google-map.html"><span
                                    class="mini-sub-pro">Google Map</span></a></li>
                            <li><a title="Data Maps" href="data-maps.html"><span
                                    class="mini-sub-pro">Data Maps</span></a></li>
                            <li><a title="Pdf Viewer" href="pdf-viewer.html"><span
                                    class="mini-sub-pro">Pdf Viewer</span></a></li>
                            <li><a title="X-Editable" href="x-editable.html"><span
                                    class="mini-sub-pro">X-Editable</span></a></li>
                            <li><a title="Code Editor" href="code-editor.html"><span
                                    class="mini-sub-pro">Code Editor</span></a></li>
                            <li><a title="Tree View" href="tree-view.html"><span
                                    class="mini-sub-pro">Tree View</span></a></li>
                            <li><a title="Preloader" href="preloader.html"><span
                                    class="mini-sub-pro">Preloader</span></a></li>
                            <li><a title="Images Cropper" href="images-cropper.html"><span class="mini-sub-pro">Images Cropper</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><span
                                class="educate-icon educate-charts icon-wrap"></span> <span class="mini-click-non">Charts</span></a>
                        <ul class="submenu-angle chart-mini-nb-dp" aria-expanded="false">
                            <li><a title="Bar Charts" href="bar-charts.html"><span
                                    class="mini-sub-pro">Bar Charts</span></a></li>
                            <li><a title="Line Charts" href="line-charts.html"><span
                                    class="mini-sub-pro">Line Charts</span></a></li>
                            <li><a title="Area Charts" href="area-charts.html"><span
                                    class="mini-sub-pro">Area Charts</span></a></li>
                            <li><a title="Rounded Charts" href="rounded-chart.html"><span class="mini-sub-pro">Rounded Charts</span></a>
                            </li>
                            <li><a title="C3 Charts" href="c3.html"><span class="mini-sub-pro">C3 Charts</span></a></li>
                            <li><a title="Sparkline Charts" href="sparkline.html"><span class="mini-sub-pro">Sparkline Charts</span></a>
                            </li>
                            <li><a title="Peity Charts" href="peity.html"><span class="mini-sub-pro">Peity Charts</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><span
                                class="educate-icon educate-data-table icon-wrap"></span> <span class="mini-click-non">Data Tables</span></a>
                        <ul class="submenu-angle" aria-expanded="false">
                            <li><a title="Peity Charts" href="static-table.html"><span
                                    class="mini-sub-pro">Static Table</span></a></li>
                            <li><a title="Data Table" href="data-table.html"><span
                                    class="mini-sub-pro">Data Table</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><span
                                class="educate-icon educate-form icon-wrap"></span> <span class="mini-click-non">Forms Elements</span></a>
                        <ul class="submenu-angle form-mini-nb-dp" aria-expanded="false">
                            <li><a title="Basic Form Elements" href="basic-form-element.html"><span
                                    class="mini-sub-pro">Bc Form Elements</span></a></li>
                            <li><a title="Advance Form Elements" href="advance-form-element.html"><span
                                    class="mini-sub-pro">Ad Form Elements</span></a></li>
                            <li><a title="Password Meter" href="password-meter.html"><span class="mini-sub-pro">Password Meter</span></a>
                            </li>
                            <li><a title="Multi Upload" href="multi-upload.html"><span
                                    class="mini-sub-pro">Multi Upload</span></a></li>
                            <li><a title="Text Editor" href="tinymc.html"><span class="mini-sub-pro">Text Editor</span></a>
                            </li>
                            <li><a title="Dual List Box" href="dual-list-box.html"><span class="mini-sub-pro">Dual List Box</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="mailbox.html" aria-expanded="false"><span
                                class="educate-icon educate-apps icon-wrap"></span> <span class="mini-click-non">App views</span></a>
                        <ul class="submenu-angle app-mini-nb-dp" aria-expanded="false">
                            <li><a title="Notifications" href="notifications.html"><span class="mini-sub-pro">Notifications</span></a>
                            </li>
                            <li><a title="Alerts" href="alerts.html"><span class="mini-sub-pro">Alerts</span></a></li>
                            <li><a title="Modals" href="modals.html"><span class="mini-sub-pro">Modals</span></a></li>
                            <li><a title="Buttons" href="buttons.html"><span class="mini-sub-pro">Buttons</span></a>
                            </li>
                            <li><a title="Tabs" href="tabs.html"><span class="mini-sub-pro">Tabs</span></a></li>
                            <li><a title="Accordion" href="accordion.html"><span
                                    class="mini-sub-pro">Accordion</span></a></li>
                        </ul>
                    </li>
                    <li id="removable">
                        <a class="has-arrow" href="#" aria-expanded="false"><span
                                class="educate-icon educate-pages icon-wrap"></span> <span
                                class="mini-click-non">Pages</span></a>
                        <ul class="submenu-angle page-mini-nb-dp" aria-expanded="false">
                            <li><a title="Login" href="login.html"><span class="mini-sub-pro">Login</span></a></li>
                            <li><a title="Register" href="register.html"><span class="mini-sub-pro">Register</span></a>
                            </li>
                            <li><a title="Lock" href="lock.html"><span class="mini-sub-pro">Lock</span></a></li>
                            <li><a title="Password Recovery" href="password-recovery.html"><span class="mini-sub-pro">Password Recovery</span></a>
                            </li>
                            <li><a title="404 Page" href="404.html"><span class="mini-sub-pro">404 Page</span></a></li>
                            <li><a title="500 Page" href="500.html"><span class="mini-sub-pro">500 Page</span></a></li>
                        </ul>
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
                        <div class="header-top-wraper">
                            <div class="row">
                                <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                    <div class="menu-switcher-pro">
                                        <button type="button" id="sidebarCollapse"
                                                class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                            <i class="educate-icon educate-nav"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                    <div class="header-top-menu tabl-d-n">
                                        <ul class="nav navbar-nav mai-top-nav">
                                            <li class="nav-item"><a href="#" class="nav-link">Home</a>
                                            </li>
                                            <li class="nav-item"><a href="#" class="nav-link">About</a>
                                            </li>
                                            <li class="nav-item"><a href="#" class="nav-link">Services</a>
                                            </li>
                                            <li class="nav-item dropdown res-dis-nn">
                                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                                   class="nav-link dropdown-toggle">Project <span
                                                        class="angle-down-topmenu"><i
                                                        class="fa fa-angle-down"></i></span></a>
                                                <div role="menu" class="dropdown-menu animated zoomIn">
                                                    <a href="#" class="dropdown-item">Documentation</a>
                                                    <a href="#" class="dropdown-item">Expert Backend</a>
                                                    <a href="#" class="dropdown-item">Expert FrontEnd</a>
                                                    <a href="#" class="dropdown-item">Contact Support</a>
                                                </div>
                                            </li>
                                            <li class="nav-item"><a href="#" class="nav-link">Support</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                    <div class="header-right-info">
                                        <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                            <li class="nav-item dropdown">
                                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                                   class="nav-link dropdown-toggle"><i
                                                        class="educate-icon educate-message edu-chat-pro"
                                                        aria-hidden="true"></i><span class="indicator-ms"></span></a>
                                                <div role="menu"
                                                     class="author-message-top dropdown-menu animated zoomIn">
                                                    <div class="message-single-top">
                                                        <h1>Message</h1>
                                                    </div>
                                                    <ul class="message-menu">
                                                        <li>
                                                            <a href="#">
                                                                <div class="message-img">
                                                                    <img src="img/contact/1.jpg" alt="">
                                                                </div>
                                                                <div class="message-content">
                                                                    <span class="message-date">16 Sept</span>
                                                                    <h2>Advanda Cro</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="message-img">
                                                                    <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/4.jpg"
                                                                         alt="">
                                                                </div>
                                                                <div class="message-content">
                                                                    <span class="message-date">16 Sept</span>
                                                                    <h2>Sulaiman din</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="message-img">
                                                                    <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/3.jpg"
                                                                         alt="">
                                                                </div>
                                                                <div class="message-content">
                                                                    <span class="message-date">16 Sept</span>
                                                                    <h2>Victor Jara</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="message-img">
                                                                    <img src="${pageContext.request.contextPath}/templates/admin/assets/img/contact/2.jpg"
                                                                         alt="">
                                                                </div>
                                                                <div class="message-content">
                                                                    <span class="message-date">16 Sept</span>
                                                                    <h2>Victor Jara</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <div class="message-view">
                                                        <a href="#">View All Messages</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button"
                                                                    aria-expanded="false"
                                                                    class="nav-link dropdown-toggle"><i
                                                    class="educate-icon educate-bell" aria-hidden="true"></i><span
                                                    class="indicator-nt"></span></a>
                                                <div role="menu"
                                                     class="notification-author dropdown-menu animated zoomIn">
                                                    <div class="notification-single-top">
                                                        <h1>Notifications</h1>
                                                    </div>
                                                    <ul class="notification-menu">
                                                        <li>
                                                            <a href="#">
                                                                <div class="notification-icon">
                                                                    <i class="educate-icon educate-checked edu-checked-pro admin-check-pro"
                                                                       aria-hidden="true"></i>
                                                                </div>
                                                                <div class="notification-content">
                                                                    <span class="notification-date">16 Sept</span>
                                                                    <h2>Advanda Cro</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="notification-icon">
                                                                    <i class="fa fa-cloud edu-cloud-computing-down"
                                                                       aria-hidden="true"></i>
                                                                </div>
                                                                <div class="notification-content">
                                                                    <span class="notification-date">16 Sept</span>
                                                                    <h2>Sulaiman din</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="notification-icon">
                                                                    <i class="fa fa-eraser edu-shield"
                                                                       aria-hidden="true"></i>
                                                                </div>
                                                                <div class="notification-content">
                                                                    <span class="notification-date">16 Sept</span>
                                                                    <h2>Victor Jara</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <div class="notification-icon">
                                                                    <i class="fa fa-line-chart edu-analytics-arrow"
                                                                       aria-hidden="true"></i>
                                                                </div>
                                                                <div class="notification-content">
                                                                    <span class="notification-date">16 Sept</span>
                                                                    <h2>Victor Jara</h2>
                                                                    <p>Please done this project as soon possible.</p>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <div class="notification-view">
                                                        <a href="#">View All Notification</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                                   class="nav-link dropdown-toggle">
                                                    <img src="img/product/pro4.jpg" alt=""/>
                                                    <span class="admin-name">Prof.Anderson</span>
                                                    <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                </a>
                                                <ul role="menu"
                                                    class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                    <li><a href="#"><span
                                                            class="edu-icon edu-home-admin author-log-ic"></span>My
                                                        Account</a>
                                                    </li>
                                                    <li><a href="#"><span
                                                            class="edu-icon edu-user-rounded author-log-ic"></span>My
                                                        Profile</a>
                                                    </li>
                                                    <li><a href="#"><span
                                                            class="edu-icon edu-money author-log-ic"></span>User Billing</a>
                                                    </li>
                                                    <li><a href="#"><span
                                                            class="edu-icon edu-settings author-log-ic"></span>Settings</a>
                                                    </li>
                                                    <li><a href="#"><span
                                                            class="edu-icon edu-locked author-log-ic"></span>Log Out</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item nav-setting-open"><a href="#" data-toggle="dropdown"
                                                                                     role="button" aria-expanded="false"
                                                                                     class="nav-link dropdown-toggle"><i
                                                    class="educate-icon educate-menu"></i></a>

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
        <!-- Mobile Menu start -->
        <div class="mobile-menu-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul class="mobile-menu-nav">
                                    <li><a data-toggle="collapse" data-target="#Charts" href="#">Home <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul class="collapse dropdown-header-top">
                                            <li><a href="index.html">Dashboard v.1</a></li>
                                            <li><a href="index-1.html">Dashboard v.2</a></li>
                                            <li><a href="index-3.html">Dashboard v.3</a></li>
                                            <li><a href="analytics.html">Analytics</a></li>
                                            <li><a href="widgets.html">Widgets</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="events.html">Event</a></li>
                                    <li><a data-toggle="collapse" data-target="#demoevent" href="#">Professors <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="demoevent" class="collapse dropdown-header-top">
                                            <li><a href="all-professors.html">All Professors</a>
                                            </li>
                                            <li><a href="add-professor.html">Add Professor</a>
                                            </li>
                                            <li><a href="edit-professor.html">Edit Professor</a>
                                            </li>
                                            <li><a href="professor-profile.html">Professor Profile</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#demopro" href="#">Students <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="demopro" class="collapse dropdown-header-top">
                                            <li><a href="all-students.html">All Students</a>
                                            </li>
                                            <li><a href="add-student.html">Add Student</a>
                                            </li>
                                            <li><a href="edit-student.html">Edit Student</a>
                                            </li>
                                            <li><a href="student-profile.html">Student Profile</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#democrou" href="#">Courses <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="democrou" class="collapse dropdown-header-top">
                                            <li><a href="all-courses.html">All Courses</a>
                                            </li>
                                            <li><a href="add-course.html">Add Course</a>
                                            </li>
                                            <li><a href="edit-course.html">Edit Course</a>
                                            </li>
                                            <li><a href="course-profile.html">Courses Info</a>
                                            </li>
                                            <li><a href="course-payment.html">Courses Payment</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#demolibra" href="#">Library <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="demolibra" class="collapse dropdown-header-top">
                                            <li><a href="library-assets.html">Library Assets</a>
                                            </li>
                                            <li><a href="add-library-assets.html">Add Library Asset</a>
                                            </li>
                                            <li><a href="edit-library-assets.html">Edit Library Asset</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#demodepart" href="#">Departments <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="demodepart" class="collapse dropdown-header-top">
                                            <li><a href="departments.html">Departments List</a>
                                            </li>
                                            <li><a href="add-department.html">Add Departments</a>
                                            </li>
                                            <li><a href="edit-department.html">Edit Departments</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#demo" href="#">Mailbox <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="demo" class="collapse dropdown-header-top">
                                            <li><a href="mailbox.html">Inbox</a>
                                            </li>
                                            <li><a href="mailbox-view.html">View Mail</a>
                                            </li>
                                            <li><a href="mailbox-compose.html">Compose Mail</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#Miscellaneousmob" href="#">Interface
                                        <span class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="Miscellaneousmob" class="collapse dropdown-header-top">
                                            <li><a href="google-map.html">Google Map</a>
                                            </li>
                                            <li><a href="data-maps.html">Data Maps</a>
                                            </li>
                                            <li><a href="pdf-viewer.html">Pdf Viewer</a>
                                            </li>
                                            <li><a href="x-editable.html">X-Editable</a>
                                            </li>
                                            <li><a href="code-editor.html">Code Editor</a>
                                            </li>
                                            <li><a href="tree-view.html">Tree View</a>
                                            </li>
                                            <li><a href="preloader.html">Preloader</a>
                                            </li>
                                            <li><a href="images-cropper.html">Images Cropper</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#Chartsmob" href="#">Charts <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="Chartsmob" class="collapse dropdown-header-top">
                                            <li><a href="bar-charts.html">Bar Charts</a>
                                            </li>
                                            <li><a href="line-charts.html">Line Charts</a>
                                            </li>
                                            <li><a href="area-charts.html">Area Charts</a>
                                            </li>
                                            <li><a href="rounded-chart.html">Rounded Charts</a>
                                            </li>
                                            <li><a href="c3.html">C3 Charts</a>
                                            </li>
                                            <li><a href="sparkline.html">Sparkline Charts</a>
                                            </li>
                                            <li><a href="peity.html">Peity Charts</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#Tablesmob" href="#">Tables <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="Tablesmob" class="collapse dropdown-header-top">
                                            <li><a href="static-table.html">Static Table</a>
                                            </li>
                                            <li><a href="data-table.html">Data Table</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#formsmob" href="#">Forms <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="formsmob" class="collapse dropdown-header-top">
                                            <li><a href="basic-form-element.html">Basic Form Elements</a>
                                            </li>
                                            <li><a href="advance-form-element.html">Advanced Form Elements</a>
                                            </li>
                                            <li><a href="password-meter.html">Password Meter</a>
                                            </li>
                                            <li><a href="multi-upload.html">Multi Upload</a>
                                            </li>
                                            <li><a href="tinymc.html">Text Editor</a>
                                            </li>
                                            <li><a href="dual-list-box.html">Dual List Box</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#Appviewsmob" href="#">App views <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="Appviewsmob" class="collapse dropdown-header-top">
                                            <li><a href="basic-form-element.html">Basic Form Elements</a>
                                            </li>
                                            <li><a href="advance-form-element.html">Advanced Form Elements</a>
                                            </li>
                                            <li><a href="password-meter.html">Password Meter</a>
                                            </li>
                                            <li><a href="multi-upload.html">Multi Upload</a>
                                            </li>
                                            <li><a href="tinymc.html">Text Editor</a>
                                            </li>
                                            <li><a href="dual-list-box.html">Dual List Box</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Pages <span
                                            class="admin-project-icon edu-icon edu-down-arrow"></span></a>
                                        <ul id="Pagemob" class="collapse dropdown-header-top">
                                            <li><a href="login.html">Login</a>
                                            </li>
                                            <li><a href="register.html">Register</a>
                                            </li>
                                            <li><a href="lock.html">Lock</a>
                                            </li>
                                            <li><a href="password-recovery.html">Password Recovery</a>
                                            </li>
                                            <li><a href="404.html">404 Page</a></li>
                                            <li><a href="500.html">500 Page</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu end -->
        <div class="breadcome-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcome-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="breadcome-heading">
                                        <form role="search" class="sr-input-func">
                                            <input type="text" placeholder="Search..." class="search-int form-control">
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <ul class="breadcome-menu">
                                        <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                        </li>
                                        <li><span class="bread-blod">Dashboard V.1</span>
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

    <!-- Basic Form Start -->
    <div class="basic-form-area mg-b-15">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="sparkline12-list">
                        <div class="sparkline12-hd">
                            <div class="main-sparkline12-hd">
                                <h1>All Form Element</h1>
                            </div>
                        </div>
                        <div class="sparkline12-graph">
                            <div class="basic-login-form-ad">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="all-form-element-inner">
                                            <form action="${pageContext.request.contextPath}/admin/post/add" method="post" enctype="multipart/form-data">
                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                                            <label class="login2 pull-right pull-right-pro">Tên bài đăng</label>
                                                        </div>
                                                        <div class="col-lg-9 col-md-10 col-sm-9 col-xs-12">
                                                            <input type="text" class="form-control" id="name" name="name"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                                            <label class="login2 pull-right pull-right-pro">Tên chủ sở hữu</label>
                                                        </div>
                                                        <div class="col-lg-9 col-md-10 col-sm-9 col-xs-12">
                                                            <input type="text" class="form-control" id="nameOwner" name="nameOwner" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                                            <label class="login2 pull-right pull-right-pro">Địa chỉ</label>
                                                        </div>
                                                        <div class="col-lg-9 col-md-10 col-sm-9 col-xs-12">
                                                            <input type="text" class="form-control" id="address" name="address" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Diện tích (m2)</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                                                <input type="number" class="form-control" id="acreage" name="acreage"/>

                                                            </div>
                                                        </div>

                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Loại bài đăng</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                    <div class="form-select-list">
                                                                        <select class="form-control custom-select-value" name="postType_id">
                                                                            <c:forEach var="postType" items="${listPostTypes}">
                                                                                <option value="${postType.id}">${postType.name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Loại nhà</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                    <div class="form-select-list">
                                                                        <select class="form-control custom-select-value" name="productType_id">
                                                                            <c:forEach var="productType" items="${listProductTypes}">
                                                                                <option value="${productType.id}">${productType.name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Độ rộng đường (m)</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                    <input type="number" class="form-control" id="roadInFrontOf" name="roadInFrontOf" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">SDT liên hệ</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                                                    <input type="number" class="form-control" id="phoneNumber" name="phoneNumber"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Email</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                                                    <input type="email" class="form-control" id="mail" name="mail"/>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Số tầng</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                    <input type="number" class="form-control" id="numberFloor" name="numberFloor"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Số phòng ngủ</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                    <input type="number" class="form-control" id="bedrooms" name="bedrooms"/>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                    <label class="login2 pull-right pull-right-pro">Số phòng tắm</label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                    <input type="number" class="form-control" id="bathrooms" name="bathrooms"/>
                                                                </div>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>
                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                            <label class="login2 pull-right pull-right-pro">Môi trường xung quanh
                                                            </label>
                                                        </div>

                                                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                            <select name="surrounding_id[]" required id="categories" class="form-control" multiple="multiple">
                                                                <c:forEach var="surrounding" items="${listSurroundings}">
                                                                    <option value="${surrounding.id}">${surrounding.name}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                            <label class="login2 pull-right pull-right-pro">Tiện ích hiện có
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                            <select name="utilities_id[]" required id="utilities" class="form-control" multiple="multiple">
                                                                <c:forEach var="utilities" items="${listUtilities}">
                                                                    <option value="${utilities.id}">${utilities.name}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                            <label class="login2 pull-right pull-right-pro">Mô tả chi tiết
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                                            <textarea id="description" name="description" placeholder="Description" rows="5" cols="80"></textarea>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="form-group col-md-12">
                                                            <div class="fileupload-exists" style="width: 200px;height: auto;display: inline;" >
                                                                <img style="width: 200px;object-fit: cover;padding-top: 6px;border-radius: 3px;display: none" src="#" id="file">
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-md-12">
                                                            <label class="control-label">Image Cover</label>
                                                            <div class="col-md-12 fileupload-exists">
                                                                <input type="file" onchange="readURL(this);" name="file" id="fileCover" class="btn-default">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group-inner">
                                                    <div class="row">
                                                        <div class="form-group col-md-12">
                                                            <div class="fileupload-exists" style="width: 200px; height: auto;" id="files"></div>
                                                        </div>
                                                        <div class="form-group col-md-12">
                                                            <label class="control-label">Image Upload</label>
                                                            <div class="fileupload-exists">
                                                                <input type="file" onchange="readURLs(this)" name="files" id="filesNotCover" multiple class="btn-default">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group-inner">
                                                    <div class="login-btn-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3"></div>
                                                            <div class="col-lg-9">
                                                                <div class="login-horizental cancel-wp pull-left form-bc-ele">
                                                                    <button class="btn btn-white" type="submit">Cancel</button>
                                                                    <button class="btn btn-sm btn-primary login-submit-cs" type="submit">Save Change</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
        </div>
    </div>
    <!-- Basic Form End-->
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2018. All rights reserved. Template by <a
                                href="https://colorlib.com/wp/templates/">Colorlib</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">


  function changeStatus(id, status) {
    var post = {};
    post["id"] = id;
    if (confirm("Bạn thật sự muốn thay đổi trạng thái của bài đăng này?")) {
      $.ajax({
        url: '<%=request.getContextPath()%>/admin/post/',
        contentType: "application/json",
        type: 'PUT',
        data: JSON.stringify(post),
        dataType: 'json',
        success: function (data) {
          if (data){
            console.log("success")
          }
          changeButton(id, status);
        },
        error: function () {
          console.log("failed")
        }
      });
    }
  }

  function changeButton(id, status) {
    idDiv = "status" + id;
    if (status == 0) {
      $('#status' +id).html("<button type=\"button\"\n" +
        "class=\"btn btn-custon-four btn-success\"\n" +
        "onclick=\"changeStatus(" + id +", 1)\">\n" +
        "<i class=\"fa fa-check\"></i>\n" +
        "</button>");
    } else {
      $('#status' +id).html("<button type=\"button\" " +
        "class=\"btn btn-custon-four btn-danger\"\n" +
        "onclick=\"changeStatus(" + id +", 0)\">\n" +
        "<i class=\"fa fa-times\"></i>\n" +
        "</button>");

    }

  }
</script>
<script>
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $('#file').attr('src', e.target.result);
        $('#file').show();
      }

      reader.readAsDataURL(input.files[0]);
    }
  }
  function readURLs(input) {
    $('#files').html('');
    if (input.files) {
      var filesAmount = input.files.length;

      for (var i = 0; i < filesAmount; i++) {
        var reader = new FileReader();

        reader.onload = function(event) {
          $('#files').append('<img style="width: 200px;object-fit: cover;border-radius: 3px;padding: 20px 20px 10px 0px;" src="' + event.target.result + '">');
        }

        reader.readAsDataURL(input.files[i]);
      }
    }
  }
  var editor = CKEDITOR.replace('editor');
  CKFinder.setupCKEditor(editor, '${pageContext.request.contextPath}/lib/ckfinder/');
</script>

<!-- jquery
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery-price-slider.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/owl.carousel.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/jquery.scrollUp.min.js"></script>
<!-- counterup JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/counterup/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/counterup/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/counterup/counterup-active.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/scrollbar/mCustomScrollbar-active.js"></script>
<!-- metisMenu JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/metisMenu/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/metisMenu/metisMenu-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/morrisjs/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/morrisjs/morris.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/morrisjs/morris-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/sparkline/jquery.charts-sparkline.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/sparkline/sparkline-active.js"></script>
<!-- calendar JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/calendar/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/calendar/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/calendar/fullcalendar-active.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/main.js"></script>
<!-- tawk chat JS
    ============================================ -->
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/tawk-chat.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/tawk-chat.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/tawk-chat.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/tawk-chat.js"></script>
<script src="${pageContext.request.contextPath}/templates/admin/assets/js/tawk-chat.js"></script>
</body>

</html>