<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/mod/header.jsp"/>

<div class="data-table-area mg-b-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="sparkline13-list">
                    <div class="sparkline13-hd">
                        <div class="main-sparkline13-hd">
                            <h1><span class="table-project-n">Danh sách hình ảnh </span></h1>
                        </div>
                    </div>
                    <div class="sparkline13-graph">
                        <div class="datatable-dashv1-list custom-datatable-overright">

                            <form action="${pageContext.request.contextPath}/mod/post/image/add/${idPost}" method="post" enctype="multipart/form-data">
                                <div class="form-group-inner">
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <div class="fileupload-exists" style="width: 200px; height: auto;" id="files"></div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Thêm ảnh</label>
                                            <div class="fileupload-exists">
                                                <input type="file" onchange="readURLs(this)" name="files" id="filesNotCover" multiple class="btn-default">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit"
                                        class="btn btn-custon-four btn-primary"
                                        data-toggle="modal"
                                        data-target="#addProductType"
                                        style="margin-bottom: 10px"

                                >
                                    <i class="fa fa-plus-square"></i>
                                </button>
                            </form>

                            <table class="table table-striped table-bordered table-sm" id="myTable" border="1px">
                                <thead>
                                <tr>
                                    <th data-field="id">ID</th>
                                    <th data-field="name" data-editable="true">Chi tiết</th>
                                    <th data-field="action">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="objPicture" items="${pictures}">
                                    <tr id="picture${objPicture.id}">
                                        <td style="width:5%">${objPicture.id}</td>
                                        <td>
                                            <img style="width: 250px;object-fit: cover;padding-top: 6px;border-radius: 3px" src="${objPicture.url}" alt="image">
                                        </td>
                                        <td id="action${objPicture.id}">
                                            <button type="button"
                                                    class="btn btn-custon-four btn-danger"
                                                    onclick="changeStatus(${objPicture.id}, 1)">
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
                    <p>Copyright © 2019. Develop by Dao Cao</p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script type="text/javascript">


  function changeStatus(id, status) {
    var picture = {};
    picture["id"] = id;
    if (confirm("Bạn thật sự muốn xóa hình ảnh này?")) {
      $.ajax({
        url: '<%=request.getContextPath()%>/admin/post/picture',
        contentType: "application/json",
        type: 'DELETE',
        data: JSON.stringify(picture),
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

    idDiv = 'picture'+ id;
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

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/template/mod/footer.jsp"/>
