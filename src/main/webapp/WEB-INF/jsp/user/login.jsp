<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng nhập | Bất động sản Đà Nẵng</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/templates/admin/assets/img/logoroundhouse.png">
    <!--===============================================================================================--><!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/css/util.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/templates/login/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background-image: url('${pageContext.request.contextPath}/templates/login/images/bg-01.jpg');">
        <div class="wrap-login100">

            <form class="login100-form validate-form" action="/login" method="post">
					<span class="login100-form-logo">
                        <img src="${pageContext.request.contextPath}/templates/admin/assets/img/logoroundhouse.png" style="width: 50%">
					</span>

                <span class="login100-form-title p-b-5 p-t-5">
						Đăng nhập
					</span>
                <c:if test="${not empty msg}">
                    <div class="clearfix large_form form-group">
                        <label class="login control-label col-sm-4"></label>
                        <div class="col-md-12">
                            <div class="error" style="color: #962020; font-size: 15px"> ${msg}</div>
                        </div>
                    </div>
                </c:if>
                <div class="wrap-input100 validate-input" data-validate = "Enter username">
                    <input class="input100" type="text" name="username" placeholder="Username" value="${user.username}">
                    <span class="focus-input100" data-placeholder="&#xf207;"> ${error}</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" name="password" placeholder="Password">
                    <span class="focus-input100" data-placeholder="&#xf191;"></span>
                </div>

                <div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Đăng nhập" />

                </div>
                <div class="text-center p-t-20">
                    <a class="txt1" href="${pageContext.request.contextPath}/signup">
                        Bạn chưa có tài khoản? Đăng ký tại đây!
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/templates/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/templates/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/templates/login/vendor/bootstrap/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/templates/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/templates/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/templates/login/vendor/daterangepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/templates/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/templates/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/templates/login/js/main.js"></script>

</body>
</html>