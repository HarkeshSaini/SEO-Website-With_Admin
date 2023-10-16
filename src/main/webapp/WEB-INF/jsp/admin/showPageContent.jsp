<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Pages Content</title>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   </head>
   <body>
   <jsp:include page="sideBar.jsp"></jsp:include>
   <main> 
      <section class="vh-100">
         <div class="main_con container">
         <div class="row d-flex justify-content-center align-items-center">
            <div class="col-12 col-md-12 col-lg-12 col-xl-6">
               <div class="card-fluid main">
                  <div class="card-body p-5">
                     <h3 class="mb-5 homes data  text-center">${pageContent}</h3>
                      <table id="table_id" class="display">
					    <thead>
					        <tr>
					            <th>Content Id</th>
					            <th>Heading</th>
					            <th>Category</th>
					            <th>Status</th>
					            <th>Content</th>
					            <th>Edit</th>
					            <th>Delete</th>
					        </tr>
					    </thead>
					    <tbody>
					    <c:forEach var="content" items="${pageContents}">
					        <tr>
					        	<td>${content.id}</td>
					            <td width="100%">${content.heading}</td>
					            <td>${content.categoryName}</td>
					            <td>${content.status}</td>
					            <td><button type="button" class="btn show-button" data-toggle="modal" data-id="${content.id}" data-target="#user"><i class="fa fa-id-card new" aria-hidden="true"></i></button></td>
					            <td><a href="/admin/editContent/${content.id}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
					            <td><a href="/admin/deleteContent/${content.id}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
					        </tr>
					     </c:forEach>
					    </tbody>
					</table>
					<a href="/admin/pageContent" class="btn btn-primary btn-lg">Add Content</a>
                  </div>
               </div>
            </div>
          </div>
         </div>
      </section>
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
     <script>
     $(document).ready( function () {
    	    $('#table_id').DataTable();
    	} );
     </script>
     <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
   </body>
</html>