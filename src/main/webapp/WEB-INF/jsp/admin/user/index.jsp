<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/admin/header.jsp"/>

    <div class="data-table-area mg-b-15">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="sparkline13-list">
                        <div class="sparkline13-hd">
                            <div class="main-sparkline13-hd">
                                <h1><span class="table-project-n">User</span></h1>
                            </div>
                        </div>
                        <div class="sparkline13-graph">
                            <div class="datatable-dashv1-list custom-datatable-overright">
                                <button type="button"
                                        class="btn btn-custon-four btn-primary"
                                        data-toggle="modal"
                                        data-target="#modalPoll-1"
                                        style="margin-bottom: 10px; margin-top: 20px"
\                                >
                                    <i class="fa fa-plus-square"></i>
                                </button>

                                <em> ${Message}</em>
                                <em class="success" style="color: green"> ${success}</em>
                                <em class="error" style="color: red"> ${failed}</em>



                                <div class="modal fade right" id="modalPoll-1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                     aria-hidden="true" data-backdrop="false">
                                    <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
                                        <div class="modal-content">
                                            <!--Header-->
                                            <div class="modal-header" style="padding: 0px; height: 30px">
                                                <p class="heading lead" style="margin-bottom: 5px; text-align: center" >Tạo mới Mod
                                                </p>
                                            </div>

                                            <!--Body-->
                                            <div class="modal-body">
                                                <form id="add-mod"
                                                      action="${pageContext.request.contextPath}/admin/user/addModSubmit"
                                                      method="POST">
                                                    <div class="row">
                                                        <label class="col-md-4">Tên đăng nhập</label>
                                                        <input class="col-md-6" placeholder="Username" name="username" id="username" required
                                                               oninvalid="this.setCustomValidity('Vui lòng nhập tên đăng nhập')"
                                                               oninput="this.setCustomValidity('')"
                                                        >
                                                    </div>
                                                    <div class="row">
                                                        <label class="col-md-4">Họ và tên</label>
                                                        <input class="col-md-6" placeholder="Fullname" name="fullname" id="fullname" required

                                                               oninvalid="this.setCustomValidity('Vui lòng nhập tên đầy đủ')"
                                                               oninput="this.setCustomValidity('')"
                                                        >
                                                    </div>

                                                    <div class="row">
                                                        <label class="col-md-4">Email</label>
                                                        <input class="col-md-6" placeholder="NguyenVanA@gmail.com" name="email" id="email" type="email" required

                                                               oninvalid="this.setCustomValidity('Vui lòng nhập email liên hệ')"
                                                               oninput="this.setCustomValidity('')"
                                                        >
                                                    </div>

                                                    <div class="row">
                                                        <label class="col-md-4">Số điện thoại</label>
                                                        <input class="col-md-6" placeholder="01243432525" name="phone" id="phone" required

                                                               oninvalid="this.setCustomValidity('Vui lòng nhập số điện thoại liên hệ')"
                                                               oninput="this.setCustomValidity('')"
                                                        >
                                                    </div>

                                                    <div style="text-align: center;vertical-align: middle;">
                                                        <button type="submit" class="btn btn-primary"
                                                                style="height:40px; width:80px; font-size:15px;"
                                                                id="btnSubmitMod">Thêm
                                                        </button>
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal"
                                                                style="height:40px; width:80px;">Đóng
                                                        </button>
                                                    </div>

                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <table class="table" id="myTable" border="1px">
                                    <thead>
                                    <tr>
                                        <th data-field="id" style="text-align: center">ID</th>
                                        <th data-field="username" data-editable="true" style="text-align: center">Tên đăng nhập</th>
                                        <th data-field="fullname" data-editable="true" style="text-align: center">Tên đầy đủ</th>
                                        <th data-field="address" data-editable="true" style="text-align: center">Email liên lạc</th>
                                        <th data-field="phone" data-editable="true" style="text-align: center">Số điện thoại</th>
                                        <th data-field="dateCreate" data-editable="true" style="text-align: center">Ngày tạo</th>
                                        <th data-field="idRole" data-editable="true" style="text-align: center">Quyền</th>
                                        <th data-field="action" style="text-align: center">Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="objUser" items="${listUsers}">
                                        <tr>
                                            <td style="width:5%; text-align: center">${objUser.id}</td>
                                            <td>${objUser.username}</td>
                                            <td style="text-align: center">${objUser.fullname}</td>
                                            <td style="text-align: center">${objUser.email}</td>
                                            <td style="text-align: center">${objUser.phone}</td>
                                            <td style="text-align: center">${objUser.dateCreate}</td>

                                            <c:if test="${objUser.idRole == 1}">
                                                <td>Admin</td>
                                            </c:if>
                                            <c:if test="${objUser.idRole == 2}">
                                                <td>Mod</td>
                                            </c:if>
                                            <c:if test="${objUser.idRole == 3}">
                                                <td>User</td>
                                            </c:if>

                                            <c:if test="${ empty objUser.idRole}">
                                                <td>User</td>
                                            </c:if>

                                            <td style="text-align: center" id="status${objUser.id}">
                                                <c:choose>
                                                    <c:when test="${ objUser.status == 1}">
                                                        <button type="button"
                                                                class="btn btn-custon-four btn-success"
                                                                onclick="changeStatus(${objUser.id}, 1)">
                                                            <i class="fa fa-check"></i>
                                                        </button>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button type="button"
                                                                class="btn btn-custon-four btn-danger"
                                                                onclick="changeStatus(${objUser.id}, 0)">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="modal" id="addPostType">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Add Post Type</h4>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <form id="add-post3"
                                                      action="${pageContext.request.contextPath}/admin/user/add"
                                                      method="POST">
                                                    <div class="form-group">
                                                        <label class="required"><strong>Product Type
                                                            Name:</strong><span
                                                                style="color: red"> *</span>&nbsp;</label>
                                                        <input class="form-control"
                                                               type="text"
                                                               name="username"
                                                               placeholder="Product type" required/>
                                                    </div>
                                                    <div style="text-align: center;vertical-align: middle;">
                                                        <button type="submit" class="btn btn-primary"
                                                                style="height:40px; width:80px; font-size:15px;"
                                                                id="btnSubmit">Add
                                                        </button>
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal"
                                                                style="height:40px; width:80px;">Close
                                                        </button>
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
    </div>


    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2019. Develop by Dao Cao</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

   function saveNewMod() {
     var username = document.getElementById('usernameOfNewMod').value;
     var fullname = document.getElementById('fullnameOfNewMod').value;

     var newMod = {};
     newMod["username"] = username;
     newMod["fullname"] = fullname;

     console.log(username);
     console.log(fullname);

     $.ajax({
       url: '<%=request.getContextPath()%>/admin/user/addMod',
       contentType: "application/json",
       type: 'POST',
       data: JSON.stringify(newMod),
       dataType: 'json',
       success: function (data) {
         if (data) {
           console.log("success")
           $('#modalPoll-1').modal('hide');
           alert("Đã thêm thành công!")


         } else {
           alert("Thêm không thành công!")

         }
       },
       error: function () {
         console.log("failed")
       }
     });



   }

  function showModal() {
    alert("Show modal");
    var modal = document.getElementById('myModal');
    modal.style.display= "block" ;
  }

  function changeStatus(id, status) {
    var user = {};
    user["id"] = id;
    if (confirm("Bạn thật sự muốn thay đổi trạng thái của người dùng này?")) {
      $.ajax({
        url: '<%=request.getContextPath()%>/admin/user/',
        contentType: "application/json",
        type: 'PUT',
        data: JSON.stringify(user),
        dataType: 'json',
        success: function (data) {
          if (data) {
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
      $('#status' + id).html("<button type=\"button\"\n" +
        "class=\"btn btn-custon-four btn-success\"\n" +
        "onclick=\"changeStatus(" + id + ", 1)\">\n" +
        "<i class=\"fa fa-check\"></i>\n" +
        "</button>");
    } else {
      $('#status' + id).html("<button type=\"button\" " +
        "class=\"btn btn-custon-four btn-danger\"\n" +
        "onclick=\"changeStatus(" + id + ", 0)\">\n" +
        "<i class=\"fa fa-times\"></i>\n" +
        "</button>");

    }

  }
</script>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/admin/footer.jsp"/>
