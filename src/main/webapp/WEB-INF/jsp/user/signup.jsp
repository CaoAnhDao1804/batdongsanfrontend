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
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/templates/login/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
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
            <form class="login100-form validate-form" method="post" action="/signup">
                <span class="login100-form-title p-b-15 p-t-15">
						Tạo tài khoản
					</span>
                <c:if test="${not empty msg}">
                    <div class="alert_msg">${msg}</div>
                </c:if>
                <div class="wrap-input100 validate-input" data-validate = "Enter fullname">
                    <input class="input100" type="text" name="fullname" placeholder="Fullname" required
                           value="${user.fullname}"
                           oninvalid="this.setCustomValidity('Vui lòng nhập họ và tên')"
                           oninput="this.setCustomValidity('')"
                    >
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>
                    <span class="error">${error_fullname}</span>
                </div>
                <div class="wrap-input100 validate-input" data-validate = "Enter username">
                    <input class="input100" type="text" name="username" placeholder="Username" required
                           value= "${user.username}"
                           oninvalid="this.setCustomValidity('Vui lòng nhập tên đăng nhập')"
                           oninput="this.setCustomValidity('')"
                    >
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>
                    <span class="error" style="color: #962020; font-size: 15px">${error}</span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" name="password" id="password" placeholder="Password" required
                           oninvalid="this.setCustomValidity('Vui lòng nhập mật khẩu')"
                           oninput="this.setCustomValidity('')"
                    >
                    <span class="focus-input100" data-placeholder="&#xf191;"></span>
                    <span class="error" >${error_password}</span>
                </div>
                <div class="wrap-input100 validate-input" data-validate="'Vui lòng nhập lại mật khẩu'">
                    <input class="input100" type="password" name="confirm_password" id="confirm_password" placeholder="ConfirmPassword" required
                           oninput="this.setCustomValidity('')"
                    >
                    <span class="focus-input100" id="message_confirm" data-placeholder="&#xf191;"></span>
                </div>


                <script type="text/javascript" src="${pageContext.request.contextPath}/templates/login/js/jquery.min.js" >

                  $('#password, #confirm_password').on('keyup', function () {
                    if ($('#password').val() == $('#confirm_password').val()) {
                      $('#message_confirm').html('Matching').css('color', 'green');
                    } else
                      $('#message_confirm').html('Not Matching').css('color', 'red');
                  });
                </script>

                <div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Đăng ký" />
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>
<script>
  var password = document.getElementById("password")
    , confirm_password = document.getElementById("confirm_password");

  function validatePassword(){
    if(password.value != confirm_password.value) {
      confirm_password.setCustomValidity("Mật khẩu không khớp, vui lòng nhập lại!");
    } else {
      confirm_password.setCustomValidity('');
    }
  }

  password.onchange = validatePassword;
  confirm_password.onkeyup = validatePassword;
</script>


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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="/lib/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/templates/login/js/jquery.min.js"></script>


</body>
</html>