<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Property</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Bluesky template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/bootstrap4/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/templates/user/assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/rangeslider.js-2.3.0/rangeslider.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/property.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/property_responsive.css">
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
                                <li><a href="index.html">Home</a></li>
                                <li><a href="about.html">About us</a></li>
                                <li><a href="properties.html">Properties</a></li>
                                <li><a href="news.html">News</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </nav>
                        <div class="phone_num ml-auto">
                            <div class="phone_num_inner">
                                <a href="${pageContext.request.contextPath}/login-logout"><i class="fa fa-sign-in"></i><span>Đăng ký/ Đăng nhập</span></a>
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
        <div class="menu_phone"><span>Đăng ký/ Đăng nhập </span></div>
    </div>

    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/templates/user/assets/images/properties.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content d-flex flex-row align-items-end justify-content-start">
                            <div class="home_title">Search results</div>
                            <div class="breadcrumbs ml-auto">
                                <ul>
                                    <li><a href="index.htmo">Home</a></li>
                                    <li>Search Results</li>
                                </ul>
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
                                <button class="search_form_button ml-auto">search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Intro -->

    <div class="intro">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="intro_content d-flex flex-lg-row flex-column align-items-start justify-content-start">
                        <div class="intro_title_container">
                            <div class="intro_title">
                                <div class="col-8">
                                    ${objPost.name}
                                </div>
                                <div class="property_rooms d-flex flex-sm-row flex-column align-items-start justify-content-start">

                                    <!-- Property Room Item -->
                                    <div class="property_room">
                                        <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                            <div class="room_icon"><i class="fa fa-heart" aria-hidden="true" style="color: red"></i> </div>
                                            <div class="room_num">${objPost.favoritePersons}</div>
                                        </div>
                                    </div>
                                    <div class="property_room">
                                        <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                            <div class="room_icon"><i class="fa fa-eye" aria-hidden="true" style="color: dodgerblue"></i> </div>
                                            <div class="room_num">${objPost.carePersons}</div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <div class="intro_tags">
                                <ul>
                                        <li><a href="#">${postTypeOfPost.name}</a></li>
                                        <li><a href="#">${productTypeOfPost.name}</a></li>
                                </ul>
                            </div>
                            <div class="intro_tags">
                                <ul>
                                    <c:forEach var="objUtilities" items="${utilitiesOfPost}">
                                        <li><a href="#">${objUtilities.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="intro_tags">
                                <ul>
                                    <c:forEach var="objSurounding" items="${surroundingsOfPost}">
                                        <li><a href="#">${objSurounding.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>

                        </div>
                        <div class="intro_price_container ml-lg-auto d-flex flex-column align-items-start justify-content-center">
                            <div>Giá tham khảo</div>
                            <div class="intro_price">100000 VND</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="intro_slider_container">

            <!-- Intro Slider -->
            <div class="owl-carousel owl-theme intro_slider">

                <c:forEach var="objPicture" items="${pictureList}">
                    <div class="owl-item"><img src="${objPicture.url}" alt=""></div>
                </c:forEach>
                <!-- Slide -->
            </div>

            <!-- Intro Slider Nav -->
            <div class="intro_slider_nav_container">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="intro_slider_nav_content d-flex flex-row align-items-start justify-content-end">
                                <div class="intro_slider_nav intro_slider_prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></div>
                                <div class="intro_slider_nav intro_slider_next"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Property -->

    <div class="property">
        <div class="container">
            <div class="row">

                <!-- Sidebar -->

                <!-- Property Content -->
                <div class="col-lg-7 offset-lg-1">
                    <div class="property_content">
                        <div class="property_icons">
                            <div class="property_title">Thông tin chi tiếc vật chất</div>
                            <div class="property_text property_text_1">
                                <p>Donec ullamcorper nulla non metus auctor fringi lla. Curabitur blandit tempus porttitor.</p>
                            </div>
                            <div class="property_rooms d-flex flex-sm-row flex-column align-items-start justify-content-start">

                                <!-- Property Room Item -->
                                <div class="property_room">
                                    <div class="property_room_title">Phòng ngủ</div>
                                    <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                        <div class="room_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/room_1.png" alt=""></div>
                                        <div class="room_num">${objPost.bedrooms}</div>
                                    </div>
                                </div>

                                <!-- Property Room Item -->
                                <div class="property_room">
                                    <div class="property_room_title">Phòng tắm</div>
                                    <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                        <div class="room_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/room_2.png" alt=""></div>
                                        <div class="room_num">${objPost.bathrooms}</div>
                                    </div>
                                </div>

                                <!-- Property Room Item -->
                                <div class="property_room">
                                    <div class="property_room_title">Diện tích</div>
                                    <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                        <div class="room_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/room_3.png" alt=""></div>
                                        <div class="room_num">${objPost.acreage}</div>
                                    </div>
                                </div>

                                <!-- Property Room Item -->
                                <div class="property_room">
                                    <div class="property_room_title">Đường trước nhà</div>
                                    <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                        <div class="room_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/room_4.png" alt=""></div>
                                        <div class="room_num">${objPost.roadInFrontOf}</div>
                                    </div>
                                </div>

                                <!-- Property Room Item -->
                                <div class="property_room">
                                    <div class="property_room_title">Số tầng</div>
                                    <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                        <div class="room_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/room_5.png" alt=""></div>
                                        <div class="room_num">${objPost.numberFloor}</div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- Description -->

                        <div class="property_description">
                            <div class="property_title">Mô tả thông tin chi tiếc</div>
                            <div class="property_text property_text_2">
                                <p>${objPost.description}</p>
                            </div>
                        </div>

                        <!-- Additional Details -->

                        <div class="additional_details">
                            <div class="property_title">Thông tin thêm</div>
                            <div class="details_container">
                                <ul>
                                    <li><span>bedroom features: </span>Main Floor Master Bedroom, Walk-In Closet</li>
                                    <li><span>dining area: </span>Breakfast Counter/Bar, Living/Dining Combo</li>
                                    <li><span>doors & windows: </span>Bay Window</li>
                                    <li><span>entry location: </span>Mid Level</li>
                                    <li><span>floors: </span>Raised Foundation, Vinyl Tile, Wall-to-Wall Carpet, Wood</li>
                                </ul>
                            </div>
                        </div>

                        <!-- Property On Map -->

                        <div class="property_map">
                            <div class="property_title">Property on map</div>
                            <div class="property_map_container">

                                <!-- Google Map -->
                                <div id="google_map" class="google_map">
                                    <div class="map_container">
                                        <label>${objPost.address}</label>
                                        <div id="map"> </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Newsletter -->

    <div class="newsletter">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/templates/user/assets/images/images/newsletter.jpg" data-speed="0.8"></div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="newsletter_content d-flex flex-lg-row flex-column align-items-start justify-content-start">
                        <div class="newsletter_title_container">
                            <div class="newsletter_title">Are you buying or selling?</div>
                            <div class="newsletter_subtitle">Search your dream home</div>
                        </div>
                        <div class="newsletter_form_container">
                            <form action="#" class="newsletter_form">
                                <input type="email" class="newsletter_input" placeholder="Your e-mail address" required="required">
                                <button class="newsletter_button">subscribe now</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->

    <footer class="footer">
        <div class="footer_main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="footer_logo"><a href="#"><img src="${pageContext.request.contextPath}/templates/user/assets/images/logo_large.png" alt=""></a></div>
                    </div>
                    <div class="col-lg-9 d-flex flex-column align-items-start justify-content-end">
                        <div class="footer_title">Latest Properties</div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 footer_col">
                        <div class="footer_about">
                            <div class="footer_about_text">Donec in tempus leo. Aenean ultricies mauris sed quam lacinia lobortis. Cras ut vestibulum enim, in gravida nulla. Curab itur ornare nisl at sagittis cursus.</div>
                        </div>
                    </div>
                    <div class="col-lg-3 footer_col">
                        <div class="footer_latest d-flex flex-row align-items-start justify-content-start">
                            <div><div class="footer_latest_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/footer_latest_1.jpg" alt=""></div></div>
                            <div class="footer_latest_content">
                                <div class="footer_latest_location">Miami</div>
                                <div class="footer_latest_name"><a href="#">Sea view property</a></div>
                                <div class="footer_latest_price">$ 1. 234 981</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 footer_col">
                        <div class="footer_latest d-flex flex-row align-items-start justify-content-start">
                            <div><div class="footer_latest_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/footer_latest_2.jpg" alt=""></div></div>
                            <div class="footer_latest_content">
                                <div class="footer_latest_location">Miami</div>
                                <div class="footer_latest_name"><a href="#">Town House</a></div>
                                <div class="footer_latest_price">$ 1. 234 981</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 footer_col">
                        <div class="footer_latest d-flex flex-row align-items-start justify-content-start">
                            <div><div class="footer_latest_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/footer_latest_3.jpg" alt=""></div></div>
                            <div class="footer_latest_content">
                                <div class="footer_latest_location">Miami</div>
                                <div class="footer_latest_name"><a href="#">Modern House</a></div>
                                <div class="footer_latest_price">$ 1. 234 981</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_bar">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="footer_bar_content d-flex flex-row align-items-center justify-content-start">
                            <div class="cr"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </div>
                            <div class="footer_nav">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="properties.html">Properties</a></li>
                                    <li><a href="news.html">News</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                            <div class="footer_phone ml-auto"><span>call us: </span>652 345 3222 11</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<script src="${pageContext.request.contextPath}/templates/user/assets/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/styles/bootstrap4/popper.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/greensock/TweenMax.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/greensock/TimelineMax.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/greensock/animation.gsap.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/rangeslider.js-2.3.0/rangeslider.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/js/property.js"></script>
</body>
</html>