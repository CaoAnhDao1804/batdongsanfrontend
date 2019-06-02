<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/mod/header.jsp"/>



<!-- Single pro tab review Start-->
    <div class="single-pro-review-area mt-t-30 mg-b-15">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="profile-info-inner">
                        <div class="profile-img" style="margin-top: 45px; text-align: center" >
                            <img src="${pageContext.request.contextPath}/templates/admin/assets/img/profile/1.jpg" alt="" style="width: 200px; height: 200px"/>
                        </div>
                        <div class="profile-details-hr">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-6">
                                    <div class="address-hr">
                                        <p><b>Họ và tên</b><br /> Cao Thị Anh Đào</p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-6">
                                    <div class="address-hr">
                                        <p><b>Cơ quan làm việc</b><br /> BatDongSanDaNang Company</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-6">
                                    <div class="address-hr">
                                        <p><b>Email</b><br /> caoanhdao@gmail.com</p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-6">
                                    <div class="address-hr">
                                        <p><b>Số điện thoại</b><br /> +01962067309</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="address-hr">
                                        <p><b>Địa chỉ</b><br /> H1, tầng 12, tòa nhà F-home</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2019. By CTAD</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/mod/footer.jsp"/>
