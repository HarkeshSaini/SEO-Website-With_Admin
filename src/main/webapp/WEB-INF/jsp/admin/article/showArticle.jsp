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
<title>Show Article</title>
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
                     <h3 class="mb-5 homes data  text-center">${article}</h3>
                      <table id="table_id" class="display">
					    <thead>
					        <tr>
					            <th>Content Id</th>
					            <th>Heading</th>
					            <th>PageType</th>
					            <th>Status</th>
					            <th>Edit</th>
					        </tr>
					    </thead>
					    <tbody>
					    <c:forEach var="content" items="${newsArticle}">
					        <tr>
					        	<td>${content.id}</td>
					            <td width="100%">${content.heading}</td>
					            <td>${content.pageType}</td>
					            <td>${content.status}</td>
					            <td><a href="/admin/editNewsArticle/${content.id}"><i class='far fa-edit fa-9x'></i></a></td>
					        </tr>
					     </c:forEach>
					    </tbody>
					</table>
					<a href="/admin/addArticle" class="btn btn-primary btn-lg">Add Article</a>
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
</body>
</html>