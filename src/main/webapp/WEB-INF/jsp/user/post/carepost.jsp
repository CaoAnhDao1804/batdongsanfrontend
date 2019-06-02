<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bất động sản Đà Nẵng</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/templates/admin/assets/img/logoroundhouse.png">
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
                                <li class="menu_item"><a href="index.html">Trang chủ</a></li>
                                <c:if test="${not empty loggedUser}">
                                    <li class="menu_item"><a href="/favorite/">Yêu thích</a></li>
                                    <li class="menu_item"><a href="/care/">Quan tâm</a></li>
                                </c:if>
                                <li class="menu_item"><a href="contact.html">Liên hệ</a></li>
                            </ul>
                        </nav>
                        <div class="phone_num ml-auto">
                            <div class="phone_num_inner">
                                <img src="${pageContext.request.contextPath}/templates/user/assets/images/phone.png" alt=""><span>652-345 3222 11</span>
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
    <%--<div class="home_search">--%>
        <%--<div class="container">--%>
            <%--<div class="row">--%>
                <%--<div class="col">--%>
                    <%--<div class="home_search_container">--%>
                        <%--<div class="home_search_content">--%>
                            <%--<form action="#" class="search_form d-flex flex-row align-items-start justfy-content-start">--%>
                                <%--<div class="search_form_content d-flex flex-row align-items-start justfy-content-start flex-wrap">--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>For rent</option>--%>
                                            <%--<option>Yes</option>--%>
                                            <%--<option>No</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>All types</option>--%>
                                            <%--<option>Type 1</option>--%>
                                            <%--<option>Type 2</option>--%>
                                            <%--<option>Type 3</option>--%>
                                            <%--<option>Type 4</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>City</option>--%>
                                            <%--<option>New York</option>--%>
                                            <%--<option>Paris</option>--%>
                                            <%--<option>Amsterdam</option>--%>
                                            <%--<option>Rome</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>Bedrooms</option>--%>
                                            <%--<option>1</option>--%>
                                            <%--<option>2</option>--%>
                                            <%--<option>3</option>--%>
                                            <%--<option>4</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>Bathrooms</option>--%>
                                            <%--<option>1</option>--%>
                                            <%--<option>2</option>--%>
                                            <%--<option>3</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<button class="search_form_button ml-auto">search</button>--%>
                            <%--</form>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <!-- Recent -->

    <div class="recent">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title">Danh sách quan tâm của bạn</div>
                </div>
            </div>
            <div class="row recent_row">
                <div class="col">
                    <div class="recent_slider_container">
                        <div class="owl-carousel owl-theme recent_slider">

                            <!-- Slide -->
                            <c:forEach var="objPost" items="${postBasicInformations}">

                                <div class="owl-item">
                                    <div class="recent_item">
                                        <div class="recent_item_inner">
                                            <div class="recent_item_image">
                                                <p class="anh">
                                                    <img src="${objPost.urlPictureCover}" alt="Image">

                                                </p>

                                                <div class="tag_featured property_tag"><a href="#">New</a></div>
                                            </div>
                                            <div class="recent_item_body text-center">
                                                <div class="recent_item_location">${objPost.address}</div>
                                                <div class="recent_item_title"><a href="${pageContext.request.contextPath}/post/${objPost.id}">${objPost.name}</a></div>
                                                <div class="recent_item_price">${objPost.price} </div>
                                            </div>
                                            <div class="recent_item_footer d-flex flex-row align-items-center justify-content-start">
                                                <div><div class="recent_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_1.png" alt=""></div><span>${objPost.acreage}</span></div>
                                                <div><div class="recent_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_2.png" alt=""></div><span>${objPost.bedrooms}</span></div>
                                                <div><div class="recent_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/icon_3.png" alt=""></div><span>${objPost.bathrooms}</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="recent_slider_nav_container d-flex flex-row align-items-start justify-content-start">
                                <div class="recent_slider_nav recent_slider_prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></div>
                                <div class="recent_slider_nav recent_slider_next"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>
                            </div>
                        </div>
                        <div class="button recent_button"><a href="#">see more</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Cities -->

    <div class="cities">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title">Find properties in these cities</div>
                    <div class="section_subtitle">Search your dream home</div>
                </div>
            </div>
        </div>

        <div class="cities_container d-flex flex-row flex-wrap align-items-start justify-content-between">

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_1.jpg" alt="https://unsplash.com/@dnevozhai">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_2.jpg" alt="https://unsplash.com/@lachlanjdempsey">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_3.jpg" alt="https://unsplash.com/@hellolightbulb">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_4.jpg" alt="https://unsplash.com/@justinbissonbeck">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_5.jpg" alt="https://unsplash.com/@claudiotrigueros">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_6.jpg" alt="https://unsplash.com/@andersjilden">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_7.jpg" alt="https://unsplash.com/@sawyerbengtson">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>

            <!-- City -->
            <div class="city">
                <img src="${pageContext.request.contextPath}/templates/user/assets/images/city_8.jpg" alt="https://unsplash.com/@mathewwaters">
                <div class="city_overlay">
                    <a href="#" class="d-flex flex-column align-items-center justify-content-center">
                        <div class="city_title">Ibiza Town</div>
                        <div class="city_subtitle">Rentals from $450/month</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonials -->

    <div class="testimonials">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title">Ý kiến khách hàng sau khi sử dụng trang web</div>
                </div>
            </div>
            <div class="row testimonials_row">

                <!-- Testimonial Item -->
                <div class="col-lg-4 testimonial_col">
                    <div class="testimonial">
                        <div class="testimonial_title">Một ngôi nhà tốt cho tôi</div>
                        <div class="testimonial_text"> Đây là một website đáng tin cậy cho mọi nhà. Mọi người có thể kết nối dễ dàng để giao dịch thông qua website này. Tôi sẽ giới thiệu bạn bè nếu họ cần tìm kiếm nhà và mua bán nhà cửa sử dụng website của các bạn.</div>
                        <div class="testimonial_author_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/testimonial_1.jpg" alt=""></div>
                        <div class="testimonial_author"><a href="#">Nguyễn Hoài</a><span>, Khách hàng</span></div>
                        <div class="rating_r rating_r_5 testimonial_rating"><i></i><i></i><i></i><i></i><i></i></div>
                    </div>
                </div>

                <!-- Testimonial Item -->
                <div class="col-lg-4 testimonial_col">
                    <div class="testimonial">
                        <div class="testimonial_title">Giao dịch dễ dàng</div>
                        <div class="testimonial_text"> Tôi đã tìm kiếm được rất nhiều khách hàng từ giao dịch trên website này. Thông tin sản phẩm được trình bày rõ ràng chi tiếc và có nhiều thông tin hữu ích cho khách hàng. Cảm ơn website rất nhiều. </div>
                        <div class="testimonial_author_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/testimonial_2.jpg" alt=""></div>
                        <div class="testimonial_author"><a href="#">Đắt Tâm</a><span>, Nhân viên BDS</span></div>
                        <div class="rating_r rating_r_5 testimonial_rating"><i></i><i></i><i></i><i></i><i></i></div>
                    </div>
                </div>

                <!-- Testimonial Item -->
                <div class="col-lg-4 testimonial_col">
                    <div class="testimonial">
                        <div class="testimonial_title">Thông tin rõ ràng</div>
                        <div class="testimonial_text">Tôi đã bán được nhà của mình với giá tốt nhờ website này. Nhờ cách trình bày rõ ràng và dễ hiểu. Người cần mua nhà đã dễ dàng tìm đến với tôi</div>
                        <div class="testimonial_author_image"><img src="${pageContext.request.contextPath}/templates/user/assets/images/testimonial_3.jpg" alt=""></div>
                        <div class="testimonial_author"><a href="#">Thanh Tâm</a><span>, Khách hàng</span></div>
                        <div class="rating_r rating_r_5 testimonial_rating"><i></i><i></i><i></i><i></i><i></i></div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="footer_main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 footer_col">
                        <div class="footer_about">
                            <div class="footer_about_text">Tìm kiếm ngôi nhà tương lai của bạn. Ngôi nhà là nơi bạn nuôi dưỡng tương lai và ước mơ của bạn. Thỏa sức lựa chọn đam mê và sở thích của bạn cùng với chúng tôi</div>
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
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">CTAD</a>
                            </div>
                            <div class="footer_nav">
                                <ul>
                                    <li><a href="index.html">Trang chủ</a></li>
                                    <li><a href="#">Giới thiệu</a></li>
                                    <li><a href="news.html">Yêu thích</a></li>
                                    <li><a href="contact.html">Quan tâm</a></li>
                                </ul>
                            </div>
                            <div class="footer_phone ml-auto"><span>Liên hệ với chúng tôi: </span>035 234 567</div>
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
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/parallax-js-master/parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/js/custom.js"></script>
</div>
</body>
</html>