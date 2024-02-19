<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Categories</title>
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
                   <form:form action="/admin/editCategories/${id}" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes">${categories}</h3>
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="categoryName"  class="form-control form-control-lg"  placeholder="Add new  blog type categories... " required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="file" name="file" class="form-control form-control-lg"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="categoryUrl" class="form-control form-control-lg titleUrl" placeholder="Enter CategoryUrl" required="required"/>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="postTime" class="form-control form-control-lg" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:select path="status" id="status" class="form-control form-control-lg" required="required">
                              	<form:option value="Active">Active</form:option>
                              	<form:option value="InActive">InActive</form:option>
                              </form:select>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                           	   <form:select path="countryCode" id="countryCode" class="form-control form-control-lg" required="required">
                              	<option>English</option>
                              	<form:option value="es">Spanish</form:option>
                              </form:select>
                           </div>
                        </div>
                        </div>
                        
                         <div class="form-group">
                          <button class="btn btn-primary" type="submit">Submit</button>
                        </div>
                    </form:form>
                  </div>
               </div>
            </div>
          </div>
      </div>
   </main>
   </div>
  <script>CKEDITOR.replace( 'content' );</script>
</body>
</html>