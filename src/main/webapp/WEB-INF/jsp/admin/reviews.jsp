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
<title>Customer Reviews</title>
</head>
<body>
<div class="page-wrapper chiller-theme toggled">
<jsp:include page="sideBar.jsp"></jsp:include>
  <main class="page-content">
    <div class="container-fluid">
         <div class="row d-flex justify-content-center align-items-center">
            <div class="col-12 col-md-12 col-lg-12 col-xl-12">
               <div class="card-fluid main">
                  <div class="card-body p-5">
                     <h3 class="mb-5 homes data  text-center">${review}</h3>
                      <table id="table_id" class="display">
					    <thead>
					        <tr>
					            <th>Id</th>
					            <th>User Name</th>
					            <th>User Email</th>
					            <th>User Phone</th>
					            <th>Review Status</th>
					        </tr>
					    </thead>
					    <tbody>
					    <c:forEach var="content" items="${reviewForms}">
					        <tr>
					        	<td>${content.id}</td>
					            <td>${content.userName}</td>
					            <td>${content.userEmail}</td>
					            <td>${content.userPhone}</td>
					       		<c:if test="${content.reviewStatus eq 'Active'}">
					       		 <td><label class="switch"><input type="checkbox" class="switchinp" data-id="${content.id}" checked><span class="slider round"></span></label></td>
					      		</c:if>
					      		<c:if test="${content.reviewStatus eq 'InActive'}">
					       		 <td><label class="switch"><input type="checkbox" class="switchinp" data-id="${content.id}"><span class="slider round"></span></label></td>
					      		</c:if>
					        </tr>
					     </c:forEach>
					    </tbody>
					</table>
                  </div>
               </div>
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
	<script>
	$(document).ready(function() {
		$('.switchinp').change(function() {
			var getid = $(this).data('id')
			var getprop = $(this).prop('checked');
			var settings = {
				"url": "/admin/reviewStatus/" + getid,
				"method": "POST",
				"timeout": 0,
				"headers": {
					"Content-Type": "application/json"
				},
				"data": JSON.stringify({
					"checkboxValue": getprop
				}),
			};
			$.ajax(settings).done(function(response) {
				if(getprop == true) {
					alert("status Active")
				} else{
					alert("status InActive")
				}
			});
		});
	});
	</script>
</body>
</html>