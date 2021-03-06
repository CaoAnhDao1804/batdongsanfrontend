<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bất động sản Đà Nẵng</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Bluesky template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/templates/admin/assets/img/logoroundhouse.png">
    <link href="${pageContext.request.contextPath}/templates/user/assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/bootstrap4/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/templates/user/assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/plugins/rangeslider.js-2.3.0/rangeslider.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/property.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/contact.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/property_responsive.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/user/assets/styles/contact_responsive.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
                            <a href="#"><img src="${pageContext.request.contextPath}/templates/user/assets/images/logotranparentadmin.png" alt=""></a>
                        </div>
                        <nav class="main_nav">
                            <ul>
                                <li class="menu_item"><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
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
                                <%--<a href="${pageContext.request.contextPath}/login-logout">--%>
                                    <%--<i class="fa fa-sign-in"></i><span>Đăng ký/ Đăng nhập</span>--%>
                                <%--</a>--%>
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
                <li class="menu_item"><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
                <c:if test="${not empty loggedUser}">
                    <li class="menu_item"><a href="/favorites">Yêu thích</a></li>
                    <li class="menu_item"><a href="/careposts">Quan tâm</a></li>
                </c:if>
                <li class="menu_item"><a href="${pageContext.request.contextPath}/">Contact</a></li>
            </ul>
        </div>

        <div class="menu_phone">
            <c:if test="${not empty loggedUser}">
                <a href="javascript:void(0)">Xin chào, ${loggedUser.username}
                </a>
                <a href="/logout" ><i class="fa fa-sign-out"></i> </a>
            </c:if>
            <c:if test="${empty loggedUser}">
                <a href="/login">Đăng nhập
                </a>
                <a href="/signup">Đăng ký
                </a>

            </c:if>
        </div>
    </div>

    <!-- Home -->

    <div class="home">
        <%--<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/templates/user/assets/images/properties.jpg" data-speed="0.8"></div>--%>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
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
                                            <%--<option disabled selected>Cho thuê</option>--%>
                                            <%--<option>Yes</option>--%>
                                            <%--<option>No</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>Biệt thự</option>--%>
                                            <%--<option>Type 1</option>--%>
                                            <%--<option>Type 2</option>--%>
                                            <%--<option>Type 3</option>--%>
                                            <%--<option>Type 4</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>Phòng ngủ</option>--%>
                                            <%--<option>New York</option>--%>
                                            <%--<option>Paris</option>--%>
                                            <%--<option>Amsterdam</option>--%>
                                            <%--<option>Rome</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div>--%>
                                        <%--<select class="search_form_select">--%>
                                            <%--<option disabled selected>Phòng tắm</option>--%>
                                            <%--<option>1</option>--%>
                                            <%--<option>2</option>--%>
                                            <%--<option>3</option>--%>
                                            <%--<option>4</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<button class="search_form_button ml-auto">Tìm kiếm</button>--%>
                            <%--</form>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <!-- Intro -->

    <div class="intro">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="intro_content d-flex flex-lg-row flex-column align-items-start justify-content-start">
                        <div class="col-md-10 intro_title_container">
                            <div class="intro_title">
                                <div class="col-12" style="font-size: 25px; color: #1390c5;">
                                    ${objPost.name}
                                </div>
                                <div class="property_rooms d-flex flex-sm-row flex-column align-items-start justify-content-start">

                                    <!-- Property Room Item -->
                                    <div class="property_room">
                                        <div class="property_room_content d-flex flex-row align-items-center justify-content-start">

                                            <div class="room_icon">
                                                <c:if test="${isFavorite == 'favorite'}">
                                                    <button type="button" id="favorite_button" class="favorite-icon" title="Đã Thêm Vào Yêu Thích" onclick="changeFavorite(${objPost.id}, 2)">
                                                        <i class="fa fa-heart-o" style="color: red;" aria-hidden="true"></i>
                                                    </button>
                                                </c:if>
                                                <c:if test="${isFavorite == 'un-favorite'}">
                                                    <button type="button" id="favorite_button" class="favorite-icon" title="Thêm Vào Yêu Thích" onclick="changeFavorite(${objPost.id}, 1)">
                                                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    </button>
                                                </c:if>
                                                <c:if test="${isFavorite == 'un-logged'}">
                                                    <button type="button" id="favorite_button" class="favorite-icon" title="Thêm Vào Yêu Thích" onclick="changeFavorite(${objPost.id}, 0)">
                                                        <i class="fa fa-heart-o un-logged" aria-hidden="true"></i>
                                                    </button>
                                                </c:if>
                                            </div>
                                                <div class="room_num" id="number_favorite" value = "${numberFavoritePerson}">${numberFavoritePerson}</div>
                                        </div>
                                    </div>
                                    <div class="property_room">
                                        <div class="property_room_content d-flex flex-row align-items-center justify-content-start">
                                            <div class="room_icon">
                                                <c:if test="${isCare == 'care'}">
                                                    <button id="care_button" class="care-icon" title="Đã Thêm Vào Quan Tâm" type="button" onclick="changeCareStatus(${objPost.id}, 2)">
                                                        <i class="fa fa-eye" style="color: dodgerblue;" aria-hidden="true"></i>
                                                    </button>
                                                </c:if>
                                                <c:if test="${isCare == 'un-care'}">
                                                    <button id="care_button" class="care-icon" title="Thêm Vào Quan Tâm" type="button" onclick="changeCareStatus(${objPost.id}, 1)">
                                                        <i class="fa fa-eye" aria-hidden="true"></i>
                                                    </button>
                                                </c:if>
                                                <c:if test="${isCare == 'un-logged'}">
                                                    <button id="care_button" class="care-icon" title="Thêm Vào Quan Tâm" type="button" onclick="changeCareStatus(${objPost.id}, 0)">
                                                        <i class="fa fa-eye un-logged" aria-hidden="true"></i>
                                                    </button>
                                                </c:if>
                                            </div>
                                            <div class="room_num" id="number_care" value="${numberCarePerson}">${numberCarePerson}</div>
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
                        <div class="col-md-2 intro_price_container ml-lg-auto d-flex flex-column align-items-start justify-content-center">
                            <div>Giá tham khảo</div>
                            <div class="intro_price">Thỏa thuận</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="intro_slider_container">

            <!-- Intro Slider -->
            <div class="owl-carousel owl-theme intro_slider">

                <c:forEach var="objPicture" items="${pictureList}">
                    <div class="owl-item"><img src="${objPicture.url}" alt="Image"></div>
                </c:forEach>
                <!-- Slide -->
            </div>

            <!-- Intro Slider Nav -->
        </div>
    </div>

    <!-- Show picture -->
    <%--<div id="myCarousel" class="carousel slide" data-ride="carousel">--%>
        <%--<!-- Indicators -->--%>
        <%--<ol class="carousel-indicators">--%>
            <%--<li data-target="#myCarousel" data-slide-to="0" class="active"></li>--%>
            <%--<li data-target="#myCarousel" data-slide-to="1"></li>--%>
            <%--<li data-target="#myCarousel" data-slide-to="2"></li>--%>
        <%--</ol>--%>

        <%--<!-- Wrapper for slides -->--%>
        <%--<div class="carousel-inner">--%>
            <%--<div class="item active">--%>
                <%--<img src="${activePicture.url}" alt="New York">--%>
            <%--</div>--%>

        <%--</div>--%>

        <%--<!-- Left and right controls -->--%>
        <%--<a class="left carousel-control" href="#myCarousel" data-slide="prev">--%>
            <%--<span class="glyphicon glyphicon-chevron-left"></span>--%>
            <%--<span class="sr-only">Previous</span>--%>
        <%--</a>--%>
        <%--<a class="right carousel-control" href="#myCarousel" data-slide="next">--%>
            <%--<span class="glyphicon glyphicon-chevron-right"></span>--%>
            <%--<span class="sr-only">Next</span>--%>
        <%--</a>--%>
    <%--</div>--%>

    <div class="property">
        <div class="container" style="width: 400px; height: auto;" id="files">
            <c:forEach var="objPicture" items="${pictureList}">
                <div class="item">
                    <img style="width: 400px;object-fit: cover;border-radius: 3px;padding: 20px 20px 10px 0px;" src="${objPicture.url}">
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Property -->

    <div class="property">
        <div class="container">
            <div class="row">

                <!-- Sidebar -->

                <!-- Property Content -->
                <div class="col-lg-10 offset-lg-1">
                    <div class="property_content">
                        <div class="property_icons">
                            <div class="property_title">Thông tin chi tiếc vật chất</div>
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
                                        <div class="room_icon"><img src="${pageContext.request.contextPath}/templates/user/assets/images/street.jpg" alt=""></div>
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
                                    <li>Tên chủ bài đăng: ${authorOfPost.fullname}  </li>
                                    <li>Email chủ bài đăng: ${authorOfPost.email}</li>
                                    <li>Số điện thoại liên hệ: ${authorOfPost.phone}</li>
                                </ul>
                            </div>
                        </div>


                        <!-- Comment content -->
                        <c:if test="${not empty loggedUser}">
                            <div class="contact_form_container">
                                <form class="contact_form" id="contact_form">
                                    <div><textarea class="contact_textarea contact_input" id="content_comment_text" placeholder="Message" required="required"></textarea></div>
                                    <button class="contact_button button" onclick="addComment(${objPost.id})">send</button>
                                </form>
                            </div>
                        </c:if>

                        <!-- Comment list-->
                        <div class="col-lg-10 comment-content-list">
                            <h6>Bình luận của người xem</h6>
                            <div id="content_comment_list">

                                <c:if test="${empty listComment}">
                                    <span style="font-size: 17px;color: green;">Không có bình luận</span>
                                </c:if>
                                <c:if test="${not empty listComment}">
                                    <c:forEach var="obj" items="${listComment}">
                                        <div class="row col-md-12 comment-element">
                                            <div class="col-md-4">
                                                <div class="text-center">
                                                    <span class="name">${obj.username}</span><br>
                                                    <span class="from">đến từ </span>
                                                    <span class="address">${obj.address}</span><br>
                                                </div>
                                            </div>
                                            <div class="col-md-8" style="padding-right: 0px !important;">
                                                <div style="display: flex;">
                                                    <div class="col-md-12" style="text-align: left;padding-left: 0px !important;"><span>${obj.distanceTime}</span></div>
                                                </div>
                                                <div style="color: #333333">${obj.content}</div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade in" id="myModal" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close close-modal" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Bạn cần login để sử dụng chức năng này.</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-default close-modal" data-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>



<script type="text/javascript">

    function addComment(postId) {
      var  content = document.getElementById('content_comment_text').value;
      if (content == "") {
        alert("Nội dung không thể rổng");
      } else {
        $.ajax({
          url: '${pageContext.request.contextPath}/comment/',
          type: 'POST',
          cache: false,
          data: {
            content: content,
            postId: postId
          },
          success: function(data){
            alert("Đã thêm bình luận thành công!")
          },

        });

      }

    }

    function changeFavorite(idPost, status) {
      if (status == 0) {
        alert("Bạn phải đăng nhập để sử dụng chức năng này!");
      } else {
        if (status == 1) {
          alert("Bạn muốn thêm sản phẩm này vào danh sách yêu thích?")
          $.ajax({
            url: '${pageContext.request.contextPath}/favorite/change',
            type: 'POST',
            cache: false,
            data: {
              post_id: idPost
            },
            success: function(data){
              alert("Đã thêm vào danh sách yêu thích thành công!")
              $('#favorite_button').html(data);
              $('#favorite_button').attr('title', 'Đã thêm vào yêu thích');
              if($('#favorite_button').attr('title') == 'Đã thêm vào yêu thích') {
                $('.page_preloader').hide();
              }
              var numberFavorite = document.getElementById("number_favorite").getAttribute('value');
              console.log(numberFavorite);
              numberFavorite++;
              console.log(numberFavorite);
              $('#number_favorite').html(numberFavorite);
            },

          });

        } else {
          alert("Sản phẩm này có trong danh sách yêu thích của bạn!")

        }
      }


    }
    function changeCareStatus(idPost, status) {

      if (status == 0) {
        alert("Bạn phải đăng nhập để sử dụng chức năng này!");

        // $('#myModal .modal-title').html('Bạn cần login để sử dụng chức năng này.');
        // $('#myModal').show();
        // $('#myModalBackGround').show();
      } else {
        if (status == 1) {
          alert("Bạn muốn thêm sản phẩm này vào danh sách quan tâm?")
          $.ajax({
            url: '${pageContext.request.contextPath}/care/change',
            type: 'POST',
            cache: false,
            data: {
              post_id: idPost
            },
            success: function(data){
              alert("Đã thêm vào danh sách quan tâm thành công!")
              $('#care_button').html(data);
              $('#care_button').attr('title', 'Đã thêm vào yêu thích');
              if($('#care_button').attr('title') == 'Đã thêm vào yêu thích') {
                $('.page_preloader').hide();
              }
              var numberCare = document.getElementById("number_care").getAttribute('value');
              console.log(numberCare);
              numberCare++;
              console.log(numberCare);
              $('#number_care').html(numberCare);
            },

          });

        } else {
          alert("Sản phẩm này có trong danh sách quan tâm của bạn!")
        }
      }


    }

  <%--$(document).ready(function() {--%>
    <%--$('#favorite_button').click(function () {--%>
      <%--if($('#favorite_button').children().first().hasClass('un-logged')) {--%>
        <%----%>
        <%--$('#myModal .modal-title').html('Bạn cần login để sử dụng chức năng này.');--%>
        <%--$('#myModal').show();--%>
        <%--$('#myModalBackGround').show();--%>
      <%--} else {--%>
        <%--if($('#favorite_button').children().first().hasClass('fa-heart-o')) {--%>
          <%--$('.page_preloader').show();--%>
          <%--$.ajax({--%>
            <%--url: '${pageContext.request.contextPath}/favorite/add-delete',--%>
            <%--type: 'POST',--%>
            <%--cache: false,--%>
            <%--data: {--%>
              <%--book_id: $('#book_id').val()--%>
            <%--},--%>
            <%--success: function(data){--%>
              <%--$('#favorite_button').html(data);--%>
              <%--$('#favorite_button').attr('title', 'Đã thêm vào yêu thích');--%>
              <%--if($('#favorite_button').attr('title') == 'Đã thêm vào yêu thích') {--%>
                <%--$('.page_preloader').hide();--%>
              <%--}--%>
            <%--},--%>
            <%--error: function (){--%>
              <%--alert('Lỗi')--%>
            <%--}--%>
          <%--});--%>
        <%--} else {--%>
          <%--$('#myModal .modal-title').text('Sản phẩm đã có trong danh sách yêu thích');--%>
          <%--$('#myModal').show();--%>
          <%--$('#myModalBackGround').show();--%>
        <%--}--%>
      <%--}--%>
    <%--});--%>

    <%--$('.close-modal').click(function () {--%>
      <%--$('#myModal').hide();--%>
      <%--$('#myModalBackGround').hide();--%>
    <%--});--%>
  <%--});--%>


</script>
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
                        <div class="testimonial_author_image" style="margin-top: 15px"><img src="${pageContext.request.contextPath}/templates/user/assets/images/testimonial_1.jpg" alt=""></div>
                        <div class="testimonial_author">Nguyễn Hoài<span>, Khách hàng</span></div>
                        <div class="rating_r rating_r_5 testimonial_rating"><i></i><i></i><i></i><i></i><i></i></div>
                    </div>
                </div>

                <!-- Testimonial Item -->
                <div class="col-lg-4 testimonial_col">
                    <div class="testimonial">
                        <div class="testimonial_title">Giao dịch dễ dàng</div>
                        <div class="testimonial_text"> Tôi đã tìm kiếm được rất nhiều khách hàng từ giao dịch trên website này. Thông tin sản phẩm được trình bày rõ ràng chi tiếc và có nhiều thông tin hữu ích cho khách hàng. Cảm ơn website rất nhiều. </div>
                        <div class="testimonial_author_image" style="margin-top: 15px"><img src="${pageContext.request.contextPath}/templates/user/assets/images/testimonial_2.jpg" alt=""></div>
                        <div class="testimonial_author">Đắt Tâm<span>, Nhân viên BDS</span></div>
                        <div class="rating_r rating_r_5 testimonial_rating"><i></i><i></i><i></i><i></i><i></i></div>
                    </div>
                </div>

                <!-- Testimonial Item -->
                <div class="col-lg-4 testimonial_col">
                    <div class="testimonial">
                        <div class="testimonial_title">Thông tin rõ ràng</div>
                        <div class="testimonial_text">Tôi đã bán được nhà của mình với giá tốt nhờ website này. Nhờ cách trình bày rõ ràng và dễ hiểu. Người cần mua nhà đã dễ dàng tìm đến với tôi. Website cần phát triển chức năng quản lý tài khoản cá nhân.</div>
                        <div class="testimonial_author_image" style="margin-top: 15px"><img src="${pageContext.request.contextPath}/templates/user/assets/images/testimonial_3.jpg" alt=""></div>
                        <div class="testimonial_author">Thanh Tâm<span>, Khách hàng</span></div>
                        <div class="rating_r rating_r_5 testimonial_rating"><i></i><i></i><i></i><i></i><i></i></div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="footer_bar">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="footer_bar_content d-flex flex-row align-items-center justify-content-start">
                            <div class="cr"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> <i class="fa fa-heart-o" aria-hidden="true"></i> by CTAD
                            </div>
                            <div class="footer_nav">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
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
<script src="${pageContext.request.contextPath}/templates/user/assets/js/jquery-ui.min.js"></script>

<script src="${pageContext.request.contextPath}/templates/user/assets/styles/bootstrap4/popper.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/plugins/parallax-js-master/parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/user/assets/js/custom.js"></script>
</div>
</body>
</html>