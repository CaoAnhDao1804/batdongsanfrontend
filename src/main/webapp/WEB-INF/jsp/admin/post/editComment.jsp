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
                                <h1><span class="table-project-n">Danh sách bình luận của bài đăng </span></h1>
                            </div>
                        </div>
                        <div class="sparkline13-graph">
                            <div class="datatable-dashv1-list custom-datatable-overright">

                                <table class="table" id="myTable" border="1px">
                                    <thead>
                                    <tr>
                                        <th data-field="id">ID</th>
                                        <th data-field="name" data-editable="true">Người viết</th>
                                        <th data-field="name" data-editable="true">Nội dung</th>
                                        <th data-field="action">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="objComment" items="${comments}">
                                        <tr id="comment${objComment.id}">
                                            <td style="width:5%">${objComment.id}</td>
                                            <td>${objComment.username}</td>
                                            <td>${objComment.content}</td>
                                            <td id="action${objComment.id}">
                                                <button type="button"
                                                        class="btn btn-custon-four btn-danger"
                                                        onclick="changeStatus(${objComment.id}, 1)">
                                                    <i class="fa fa-times"></i>
                                                </button>
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
    var comment = {};
    comment["id"] = id;
    if (confirm("Bạn thật sự muốn xóa bình luận này?")) {
      $.ajax({
        url: '<%=request.getContextPath()%>/admin/post/comment',
        contentType: "application/json",
        type: 'DELETE',
        data: JSON.stringify(comment),
        dataType: 'json',
        success: function (data) {
          if (data){
            console.log("success")
          }
          hiddenColumn(id);
        },
        error: function () {
          console.log("failed")
        }
      });
    }
  }

  function hiddenColumn(id) {

    idDiv = 'comment'+ id;
    console.log(idDiv);
    var curentColumn = document.getElementById(idDiv);
    curentColumn.style.display = 'none';
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
</script>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/admin/footer.jsp"/>
