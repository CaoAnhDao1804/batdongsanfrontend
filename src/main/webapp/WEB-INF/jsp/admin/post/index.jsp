<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/admin/header.jsp"/>

    <div class="data-table-area mg-b-15">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="sparkline13-list">
                        <div class="sparkline13-hd">
                            <div class="main-sparkline13-hd">
                                <h1><span class="table-project-n">Danh sách bài đăng</span></h1>
                            </div>
                        </div>
                        <div class="sparkline13-graph">
                            <div class="datatable-dashv1-list custom-datatable-overright">
                                <a href="${pageContext.request.contextPath}/admin/post/add">
                                    <button type="button"
                                            class="btn btn-custon-four btn-primary"
                                            data-toggle="modal"
                                            data-target="#addProductType"
                                            style="margin-bottom: 10px; margin-top: 20px"

                                    >

                                        <i class="fa fa-plus-square"></i>
                                    </button>

                                    <em> ${Message}</em>
                                    <em class="success" style="color: green"> ${success}</em>
                                    <em class="error" style="color: red"> ${failed}</em>

                                </a>


                                <table class="table table-striped table-bordered table-sm" cellspacing="0" width="100%" id="myTable" border="1px">
                                    <thead>
                                    <tr>
                                        <th data-field="id" style="text-align: center">ID</th>
                                        <th data-field="name" data-editable="true" style="text-align: center" >Name</th>
                                        <th data-field="action" style="text-align: center">Edit and View</th>
                                        <th data-field="action" style="text-align: center">Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="objPost" items="${listPosts}">
                                        <tr class="contentPage">
                                            <td style="width:5%; text-align: center" >${objPost.id}</td>
                                            <td>${objPost.name}</td>
                                            <td style="text-align: center">
                                                <a href="${pageContext.request.contextPath}/admin/post/edit/${objPost.id}">
                                                    <button type="button" class="btn btn-custon-four btn-warning">
                                                        <i class="fa fa-pencil"></i>
                                                    </button>
                                                </a>
                                                <a href="${pageContext.request.contextPath}/admin/post/${objPost.id}/images/edit/">
                                                    <button type="button" class="btn btn-custon-four btn-success">
                                                        <i class="fa fa-image"></i>
                                                    </button>
                                                </a>

                                                <a href="${pageContext.request.contextPath}/admin/post/${objPost.id}/comments">
                                                    <button type="button" class="btn btn-custon-four btn-success">
                                                        <i class="fa fa-comments"></i>
                                                    </button>
                                                </a>


                                            <td id="status${objPost.id}" style="text-align: center">
                                                <c:choose>
                                                    <c:when test="${ objPost.status == 1}">
                                                        <button type="button"
                                                                class="btn btn-custon-four btn-success"
                                                                onclick="changeStatus(${objPost.id}, 1)">
                                                            <i class="fa fa-check"></i>
                                                        </button>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button type="button"
                                                                class="btn btn-custon-four btn-danger"
                                                                onclick="changeStatus(${objPost.id}, 0)">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
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
                        <p>Copyright © 2019. Develop by Dao Cao
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

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/admin/footer.jsp"/>
