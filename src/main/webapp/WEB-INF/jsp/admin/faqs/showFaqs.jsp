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
<title>Show Faqs</title>
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
                     <h3 class="mb-5 homes data  text-center">${faqs}</h3>
                      <table id="table_id" class="display">
					    <thead>
					        <tr>
					            <th>Id</th>
					            <th>Faqs Ques</th>
					            <th>Status</th>
					            <th>Edit</th>
					        </tr>
					    </thead>
					    <tbody>
					    <c:forEach var="content" items="${faqsContent}">
					        <tr>
					        	<td>${content.faqId}</td>
					            <td>${content.faQues}</td>
					            <td>${content.faqStatus}</td>
					            <td><a href="/admin/editFaqs/${content.faqId}"><i class='far fa-edit fa-9x'></i></a></td>
					        </tr>
					     </c:forEach>
					    </tbody>
					</table>
					<a href="/admin/addFaqs" class="btn btn-primary btn-lg">Add Faqs</a>
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