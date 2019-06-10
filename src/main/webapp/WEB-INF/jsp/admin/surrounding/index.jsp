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
                                <h1><span class="table-project-n">Môi trường xung quanh</span></h1>
                            </div>
                        </div>
                        <div class="sparkline13-graph">
                            <div class="datatable-dashv1-list custom-datatable-overright">
                                <button type="button"
                                        class="btn btn-custon-four btn-primary"
                                        data-toggle="modal"
                                        data-target="#addSurrounding"
                                        style="margin-bottom: 10px; margin-top: 20px"

                                >

                                    <i class="fa fa-plus-square"></i>
                                </button>
                                <em> ${Message}</em>
                                <em class="success" style="color: green"> ${success}</em>
                                <em class="error" style="color: red"> ${failed}</em>


                                <table class="table table-striped table-bordered table-sm" id="myTable" border="1px">
                                    <thead>
                                    <tr>
                                        <th data-field="id" style="text-align: center">ID</th>
                                        <th data-field="name" style="text-align: center" data-editable="true">Tên</th>
                                        <th data-field="action" style="text-align: center">Chỉnh sửa</th>
                                        <th data-field="action" style="text-align: center" >Trạng thái</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="objSurrounding" items="${listSurrounding}">
                                        <tr>
                                            <td style="width:5%; text-align: center">${objSurrounding.id}</td>
                                            <td>${objSurrounding.name}</td>
                                            <td style="text-align: center">
                                                <button type="button" class="btn btn-custon-four btn-warning"
                                                        data-toggle="modal"
                                                        data-target="#editSurrounding${objSurrounding.id}"><i
                                                        class="fa fa-pencil"></i>
                                                </button>
                                            <td id="status${objSurrounding.id}" style="text-align: center">
                                                <c:choose>
                                                    <c:when test="${ objSurrounding.status == 1}">
                                                        <button type="button"
                                                                class="btn btn-custon-four btn-success"
                                                                onclick="changeStatus(${objSurrounding.id}, 1)">
                                                            <i class="fa fa-check"></i>
                                                        </button>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button type="button"
                                                                class="btn btn-custon-four btn-danger"
                                                                onclick="changeStatus(${objSurrounding.id}, 0)">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <div class="modal" id="editSurrounding${objSurrounding.id}">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">

                                                        <!-- Modal Header -->
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Thay đổi tên</h4>
                                                        </div>

                                                        <!-- Modal body -->
                                                        <div class="modal-body">
                                                            <form id="add-post2"
                                                                  action="${pageContext.request.contextPath}/admin/surrounding/${objSurrounding.id}"
                                                                  method="POST">
                                                                <div class="form-group">
                                                                    <label class="required"><strong>
                                                                        Name:</strong><span
                                                                            style="color: red"> *</span>&nbsp;</label>
                                                                    <input class="form-control" id="name"
                                                                           type="text"
                                                                           name="name" value="${objSurrounding.name}"
                                                                           placeholder="Trường học" required
                                                                           oninvalid="this.setCustomValidity('Vui lòng nhập tên môi trường xung quanh')"
                                                                           oninput="this.setCustomValidity('')"/>
                                                                </div>
                                                                <div style="text-align: center;vertical-align: middle;">
                                                                    <button type="submit" class="btn btn-primary"
                                                                            style="height:40px; width:80px; font-size:15px;"
                                                                            id="btnSubmit${objSurrounding.id}">Lưu
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
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="modal" id="addSurrounding">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Thêm loại môi trường xung quanh</h4>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <form id="add-post3"
                                                      action="${pageContext.request.contextPath}/admin/surrounding/add"
                                                      method="POST">
                                                    <div class="form-group">
                                                        <label class="required"><strong>
                                                            Name:</strong><span
                                                                style="color: red"> *</span>&nbsp;</label>
                                                        <input class="form-control" id="name"
                                                               type="text"
                                                               name="name"
                                                               placeholder="Trường học" required
                                                               oninvalid="this.setCustomValidity('Vui lòng nhập tên môi trường xung quanh')"
                                                               oninput="this.setCustomValidity('')"
                                                        />
                                                    </div>
                                                    <div style="text-align: center;vertical-align: middle;">
                                                        <button type="submit" class="btn btn-primary"
                                                                style="height:40px; width:80px; font-size:15px;"
                                                                id="btnSubmit">Thêm
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


  function changeStatus(id, status) {
    var surrounding = {};
    surrounding["id"] = id;
    if (confirm("Bạn thật sự muốn thay đổi trạng thái của loại môi trường xung quanh này?")) {
      $.ajax({
        url: '<%=request.getContextPath()%>/admin/surrounding/',
        contentType: "application/json",
        type: 'PUT',
        data: JSON.stringify(surrounding),
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
