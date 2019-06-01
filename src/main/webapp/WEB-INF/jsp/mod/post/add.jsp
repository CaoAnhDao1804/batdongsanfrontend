<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/mod/header.jsp"/>
<!-- Basic Form Start -->
<div class="basic-form-area mg-b-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="sparkline12-list">
                    <div class="sparkline12-hd">
                        <div class="main-sparkline12-hd">
                            <h1>Thêm mới bài đăng</h1>
                        </div>
                    </div>
                    <div class="sparkline12-graph">
                        <div class="basic-login-form-ad">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="all-form-element-inner">
                                        <form action="${pageContext.request.contextPath}/mod/post/add" method="post" enctype="multipart/form-data">
                                            <div class="form-group-inner">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                                        <label class="login2 pull-right pull-right-pro">Tên bài đăng</label>
                                                    </div>
                                                    <sp></sp>
                                                    <div class="col-lg-9 col-md-10 col-sm-9 col-xs-12">
                                                        <input type="text" class="form-control" id="name" name="name" placeholder="Tên bài đăng" required
                                                               value="${objPost.name}"
                                                               oninvalid="this.setCustomValidity('Vui lòng nhập tên bài đăng')"
                                                               oninput="this.setCustomValidity('')"
                                                        />
                                                        <c:if test="${not empty message}">
                                                            <em class="invalid" style="color: red">Tên bài đăng đã tồn tại, vui lòng nhập tên khác</em>
                                                        </c:if>


                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group-inner">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                                        <label class="login2 pull-right pull-right-pro">Tên chủ sở hữu</label>
                                                    </div>
                                                    <div class="col-lg-9 col-md-10 col-sm-9 col-xs-12">
                                                        <input type="text" class="form-control" id="nameOwner" name="nameOwner" required
                                                               placeholder="Tên chủ sở hữu"
                                                               oninvalid="this.setCustomValidity('Vui lòng nhập tên chủ sở hữu')"
                                                               oninput="this.setCustomValidity('')"
                                                        />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group-inner">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                                        <label class="login2 pull-right pull-right-pro">Địa chỉ</label>
                                                    </div>
                                                    <div class="col-lg-9 col-md-10 col-sm-9 col-xs-12">
                                                        <input type="text" class="form-control" id="address" name="address"  required
                                                               value="${objPost.address}"
                                                               placeholder="Địa chỉ"
                                                               oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ')"
                                                               oninput="this.setCustomValidity('')"
                                                        />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Diện tích (m2)</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                <input type="number" class="form-control" id="acreage" name="acreage" required
                                                                       value="${objPost.acreage}"
                                                                       oninvalid="this.setCustomValidity('Vui lòng nhập diện tích')"
                                                                       oninput="this.setCustomValidity('')"
                                                                />

                                                            </div>
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
                                                                        <c:if test="${not empty postTypeOfPost}">
                                                                            <c:forEach var="postType" items="${listPostTypes}">
                                                                                <c:choose>
                                                                                    <c:when test="${postTypeOfPost.id == postType.id}">
                                                                                        <option value="${postType.id}" selected="selected">${postType.name}</option>
                                                                                    </c:when>
                                                                                    <c:when test="${postTypeOfPost.id != postType.id}">
                                                                                        <option value="${postType.id}">${postType.name}</option>
                                                                                    </c:when>
                                                                                </c:choose>
                                                                            </c:forEach>
                                                                        </c:if>
                                                                        <c:if test="${empty postTypeOfPost}">
                                                                            <c:forEach var="postType" items="${listPostTypes}">
                                                                                <option value="${postType.id}">${postType.name}</option>
                                                                            </c:forEach>
                                                                        </c:if>
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

                                                                        <c:if test="${not empty productTypeOfPost}">
                                                                            <c:forEach var="productType" items="${listProductTypes}">
                                                                                <c:choose>
                                                                                    <c:when test="${productTypeOfPost.id == productType.id}">
                                                                                        <option value="${productType.id}" selected="selected">${productType.name}</option>
                                                                                    </c:when>
                                                                                    <c:when test="${productTypeOfPost.id != productType.id}">
                                                                                        <option value="${productType.id}">${productType.name}</option>
                                                                                    </c:when>
                                                                                </c:choose>
                                                                            </c:forEach>
                                                                        </c:if>
                                                                        <c:if test="${ empty productTypeOfPost}">
                                                                            <c:forEach var="productType" items="${listProductTypes}">
                                                                                <option value="${productType.id}">${productType.name}</option>
                                                                            </c:forEach>
                                                                        </c:if>
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
                                                                <input type="number" class="form-control" id="roadInFrontOf" name="roadInFrontOf" required
                                                                       value="${objPost.roadInFrontOf}"
                                                                       oninvalid="this.setCustomValidity('Vui lòng nhập độ rộng đường')"
                                                                       oninput="this.setCustomValidity('')"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">SDT liên hệ</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                                                <input type="number" class="form-control" id="phoneNumber" name="phoneNumber" required
                                                                       placeholder="0123456789"
                                                                       oninvalid="this.setCustomValidity('Vui lòng nhập nhập số điện thoại')"
                                                                       oninput="this.setCustomValidity('')"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Email</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                                                <input type="email" class="form-control" id="mail" name="mail" required
                                                                       placeholder="nguyenvanA@gmail.com"
                                                                       oninvalid="this.setCustomValidity('Vui lòng nhập email liên hệ')"
                                                                       oninput="this.setCustomValidity('')"
                                                                />
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
                                                                <input type="number" class="form-control" id="numberFloor" name="numberFloor" required
                                                                       value="${objPost.numberFloor}"
                                                                       placeholder="2"
                                                                       oninvalid="this.setCustomValidity('Vui lòng nhập số tầng')"
                                                                       oninput="this.setCustomValidity('')"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Số phòng ngủ</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                <input type="number" class="form-control" id="bedrooms" name="bedrooms" required
                                                                       value="${objPost.bedrooms}"
                                                                       placeholder="1"
                                                                       oninvalid="this.setCustomValidity('Vui lòng nhập số phòng ngủ')"
                                                                       oninput="this.setCustomValidity('')"
                                                                />
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Số phòng tắm</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-4 col-sm-9 col-xs-12">
                                                                <input type="number" class="form-control" id="bathrooms" name="bathrooms" required
                                                                       value="${objPost.bathrooms}"
                                                                       placeholder="1"
                                                                       oninvalid="this.setCustomValidity('Vui lòng nhập số phòng tắm')"
                                                                       oninput="this.setCustomValidity('')"/>
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


                                                            <c:if test="${not empty surroundingsOfPost}">
                                                                <c:forEach var="surrounding" items="${listSurroundings}">
                                                                    ${stringUtil.displaySurrounding(listSurroundings, surroundingsOfPost)}
                                                                </c:forEach>
                                                            </c:if>
                                                            <c:if test="${ empty surroundingsOfPost}">
                                                                <c:forEach var="surrounding" items="${listSurroundings}">
                                                                    <option value="${surrounding.id}">${surrounding.name}</option>
                                                                </c:forEach>
                                                            </c:if>
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

                                                            <c:if test="${not empty utilitiesOfPost}">
                                                                <c:forEach var="utilities" items="${listUtilities}">
                                                                    ${stringUtil.displayUtilities(listUtilities, utilitiesOfPost)}
                                                                </c:forEach>
                                                            </c:if>
                                                            <c:if test="${ empty utilitiesOfPost}">
                                                                <c:forEach var="utilities" items="${listUtilities}">
                                                                    <option value="${utilities.id}">${utilities.name}</option>
                                                                </c:forEach>
                                                            </c:if>
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
                                                        <label class="control-label">Ảnh đại diện</label>
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
                                                        <label class="control-label">Ảnh chi tiếc</label>
                                                        <div class="fileupload-exists">
                                                            <input type="file" onchange="readURLs(this)" name="files" id="filesNotCover" multiple class="btn-default"
                                                                   style="padding-left: 15px"
                                                            >
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
                                                                <button class="btn btn-white" type="submit">Hủy</button>
                                                                <button class="btn btn-sm btn-primary login-submit-cs" type="submit">Lưu</button>
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

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/mod/footer.jsp"/>
