<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bluesky</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Bluesky template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/bootstrap4/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/templates/user/assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/responsive.css">
</head>
<body>

<div class="super_container">

    <!-- Header -->

    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="header_content d-flex flex-row align-items-center justify-content-start">
                        <div class="logo">
                            <a href="#"><img src="${pageContext.request.contextPath}/templates/user/assets/images/logo.png" alt=""></a>
                        </div>
                        <nav class="main_nav">
                            <ul>
                                <li class="menu_item"><a href="/">Trang chủ</a></li>
                                <c:if test="${not empty loggedUser}">
                                    <li class="menu_item"><a href="/favorite/">Yêu thích</a></li>
                                    <li class="menu_item"><a href="/care/">Quan tâm</a></li>
                                </c:if>
                                <li class="menu_item"><a href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>
                            </ul>
                        </nav>
                        <div class="phone_num ml-auto">
                            <div class="phone_num_inner">
                                <c:if test="${not empty loggedUser}">
                                    <div class="login-logout">
                                        <a href="javascript:void(0)" style="color: white">Xin chào, ${loggedUser.username}
                                        </a>
                                        <a href="/logout" style="color: white" ><i class="fa fa-sign-out"></i> </a>
                                    </div>

                                </c:if>
                                <c:if test="${empty loggedUser}">
                                    <div class="login-logout">
                                        <a href="/login" style="color: white;">Đăng nhập
                                        </a>
                                        <a href="/signup" style="color: white;">Đăng ký
                                        </a>
                                    </div>

                                </c:if>
                            </div>
                        </div>
                        <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Menu -->

    <div class="menu trans_500">
        <div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
            <div class="menu_close_container"><div class="menu_close"></div></div>
            <div class="logo menu_logo">
                <a href="#">
                    <div class="logo_container d-flex flex-row align-items-start justify-content-start">
                        <div class="logo_image"><div><img src="${pageContext.request.contextPath}/templates/user/assets/images/logo.png" alt=""></div></div>
                    </div>
                </a>
            </div>
            <ul>
                <li class="menu_item"><a href="index.html">Home</a></li>
                <li class="menu_item"><a href="about.html">About us</a></li>
                <li class="menu_item"><a href="#">Speakers</a></li>
                <li class="menu_item"><a href="#">Tickets</a></li>
                <li class="menu_item"><a href="news.html">News</a></li>
                <li class="menu_item"><a href="contact.html">Contact</a></li>
            </ul>
        </div>
        <div class="menu_phone"><span>call us: </span>652 345 3222 11</div>
    </div>

    <!-- Home -->

    <div class="home">

        <!-- Home Slider -->
        <div class="home_slider_container">
            <div class="owl-carousel owl-theme home_slider">

                <!-- Slide -->
                <div class="owl-item">
                    <div class="home_slider_background" style="background-image:url(${pageContext.request.contextPath}/templates/user/assets/images/home_slider_1.jpg)"></div>
                    <div class="slide_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="slide_content">
                                        <div class="home_subtitle">super offer</div>
                                        <div class="home_title">Villa with sea view</div>
                                        <div class="home_details">
                                            <ul class="home_details_list d-flex flex-row align-items-center justify-content-start">
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_1.png" alt=""></div>
                                                    <span> 650 Ftsq</span>
                                                </li>
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_2.png" alt=""></div>
                                                    <span> 3 Bedrooms</span>
                                                </li>
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_3.png" alt=""></div>
                                                    <span> 2 Bathrooms</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="home_price">$ 1. 245 999</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide -->
                <div class="owl-item">
                    <div class="home_slider_background" style="background-image:url(${pageContext.request.contextPath}/templates/user/assets/images/home_slider_1.jpg)"></div>
                    <div class="slide_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="slide_content">
                                        <div class="home_subtitle">super offer</div>
                                        <div class="home_title">Villa with sea view</div>
                                        <div class="home_details">
                                            <ul class="home_details_list d-flex flex-row align-items-center justify-content-start">
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_1.png" alt=""></div>
                                                    <span> 650 Ftsq</span>
                                                </li>
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_2.png" alt=""></div>
                                                    <span> 3 Bedrooms</span>
                                                </li>
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_3.png" alt=""></div>
                                                    <span> 2 Bathrooms</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="home_price">$ 1. 245 999</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide -->
                <div class="owl-item">
                    <div class="home_slider_background" style="background-image:url(${pageContext.request.contextPath}/templates/user/assets/images/home_slider_1.jpg)"></div>
                    <div class="slide_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="slide_content">
                                        <div class="home_subtitle">super offer</div>
                                        <div class="home_title">Villa with sea view</div>
                                        <div class="home_details">
                                            <ul class="home_details_list d-flex flex-row align-items-center justify-content-start">
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_1.png" alt=""></div>
                                                    <span> 650 Ftsq</span>
                                                </li>
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_2.png" alt=""></div>
                                                    <span> 3 Bedrooms</span>
                                                </li>
                                                <li>
                                                    <div class="home_details_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_3.png" alt=""></div>
                                                    <span> 2 Bathrooms</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="home_price">$ 1. 245 999</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Home Search -->
    <div class="home_search">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="home_search_container">
                        <div class="home_search_content">
                            <form action="#" class="search_form d-flex flex-row align-items-start justfy-content-start">
                                <div class="search_form_content d-flex flex-row align-items-start justfy-content-start flex-wrap">
                                    <div>
                                        <select class="search_form_select">
                                            <option disabled selected>For rent</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                        </select>
                                    </div>
                                    <div>
                                        <select class="search_form_select">
                                            <option disabled selected>All types</option>
                                            <option>Type 1</option>
                                            <option>Type 2</option>
                                            <option>Type 3</option>
                                            <option>Type 4</option>
                                        </select>
                                    </div>
                                    <div>
                                        <select class="search_form_select">
                                            <option disabled selected>City</option>
                                            <option>New York</option>
                                            <option>Paris</option>
                                            <option>Amsterdam</option>
                                            <option>Rome</option>
                                        </select>
                                    </div>
                                    <div>
                                        <select class="search_form_select">
                                            <option disabled selected>Bedrooms</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                    <div>
                                        <select class="search_form_select">
                                            <option disabled selected>Bathrooms</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                        </select>
                                    </div>
                                </div>
                                <button class="search_form_button ml-auto">Tìm kiếm</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

