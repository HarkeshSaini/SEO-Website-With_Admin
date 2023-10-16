<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Content</title>
</head>
<body>
<div class="page-wrapper chiller-theme toggled">
<jsp:include page="../sideBar.jsp"></jsp:include>
  <main class="page-content">
    <div class="container-fluid">
         <div class="row d-flex justify-content-center align-items-center">
            <div class="col-12 col-md-12 col-lg-12 col-xl-12">
               <div class="card-fluid main">
                  <div class="card-body p-5">
                     <h3 class="mb-5 homes data  text-center">${content}</h3>
                      <table id="table_id" class="display">
					    <thead>
					        <tr>
					            <th>Content Id</th>
					            <th>Heading</th>
					            <th>Category</th>
					            <th>Status</th>
					            <th>Content</th>
					            <th>Edit</th>
					        </tr>
					    </thead>
					    <tbody>
					    <c:forEach var="content" items="${contentDetails}">
					        <tr>
					        	<td>${content.id}</td>
					            <td width="100%">${content.heading}</td>
					            <td>${content.categoryName}</td>
					            <td>${content.status}</td>
					            <td><button type="button" class="btn show-button" data-toggle="modal" data-id="${content.id}" data-target="#user"><i class="fa fa-id-card new" aria-hidden="true"></i></button></td>
					            <td><a href="/admin/editPageContent/${content.id}"><i class='far fa-edit fa-9x'></i></a></td>
					        </tr>
					     </c:forEach>
					    </tbody>
					</table>
					<a href="/admin/addPageContent" class="btn btn-primary btn-lg">Add Content</a>
                  </div>
               </div>
            </div>
          </div>
       </div>
        <script>
		  $(document).ready(function(){
		          $(".show-button").click(function(){
		                  var getid = $(this).data('id')
		                  $.ajax({
		                          url: "/admin/viewContent/"+getid,
		                          type: 'GET',
		                          dataType: 'json',
		                          success: function(data) {
		                            $("#user .modal-body .categoryName").text(data[0].categoryName);
		                            $("#user .modal-body .headind").text(data[0].heading);
		                            $("#user .modal-body .content").text(data[0].content);
		                          },
		                          error:function(xhr, status, error) {
		                                  console.log(data);
		                        }
		                });
		          });
		        });
		  </script>
        <div class="modal fade" id="user" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		   <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">All Content</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true"><i class="fa fa-times-circle" aria-hidden="true"></i></span>
		        </button>
		      </div>
		      <ul class="modal-body text-whites list-group">
		        <li class="categoryName list-group-item"></li>
		        <li class="headind list-group-item text-center active"></li>
		        <li class="content list-group-item"></li>
		      </ul>
		    </div>
		  </div>
		</div>
  </main>
  </div>
   <script>
     $(document).ready( function () {
    	    $('#table_id').DataTable();
    	} );
     </script>
     <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
</body>
</html>