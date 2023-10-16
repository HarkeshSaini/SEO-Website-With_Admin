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
<title>Add Categories</title>
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
                   <form action="/admin/addCategories" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes">${categories}</h3>
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="categoryName"  class="form-control form-control-lg"  placeholder="Add new  blog type categories... " required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="file" name="file" class="form-control form-control-lg"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="categoryUrl" class="form-control form-control-lg titleUrl" placeholder="Enter CategoryUrl" required="required"/>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="date" name="date" class="form-control form-control-lg" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <select name="status" id="status" class="form-control form-control-lg" required="required">
                              	<option>Select Status</option>
                              	<option value="Active">Active</option>
                              	<option value="InActive">InActive</option>
                              </select>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                           	   <input type="text" name="" class="form-control form-control-lg" disabled="disabled"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        </div>
                        
                         <div class="form-group">
                          <button class="btn btn-primary" type="submit">Submit</button>
                        </div>
                    </form>
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