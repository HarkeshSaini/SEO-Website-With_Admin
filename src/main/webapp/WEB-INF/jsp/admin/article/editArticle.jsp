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
<title>Edit Article</title>
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
                   <form:form action="/admin/editNewsArticle/${id}" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes text-center">${article}</h3>
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label class="form-label" for="title">Title</label>
                              <form:input type="text" path="title"  class="form-control form-control-lg"  placeholder="Enter Title" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label class="form-label" for="description">Description</label>
                              <form:input type="text" path="description" class="form-control form-control-lg" placeholder="Enter Description" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label class="form-label" for="keywords">keywords</label>
                              <form:input type="text" path="keywords" class="form-control form-control-lg" placeholder="Enter Keywords" required="required"/>
                           </div>
                        </div>
                     </div>
                     
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label class="form-label" for="heading">heading</label>
                              <form:input type="text" path="heading" class="form-control form-control-lg" placeholder="Enter Heading" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:label class="form-label" path="imgUrl" for="file">Create Content By User</form:label>
                              <form:input type="text" path="extraTag" class="form-control form-control-lg" placeholder="Create Content By User.."/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                               <label class="form-label" for="titleUrl">TitleUrl</label>
                           	   <form:input type="text" path="titleUrl" class="form-control form-control-lg titleUrl" placeholder="Enter Title Url"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        </div>
                        
                        <div class="row">
                           <div class="form-outline col-md-12 mb-3">
                               <form:textarea id="content" path="content" class="form-control form-control-lg" required="required"></form:textarea>
                           </div>
                        </div>
                         <div class="row">
                           <div class="col-md-3 mb-2">
                              <div class="form-outline">
                                 <label class="form-label" for="posttime">Date</label>
                                 <form:input type="text" path="posttime" class="form-control form-control-lg" placeholder="Enter Posttime" required="required"/>
                              </div>
                           </div>
                           <div class="col-md-3 mb-2">
                              <div class="form-outline">
                                 <label class="form-label" for="pageType">Page Type</label>
                                 <form:select id="pageType" path="pageType" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
	                                 <c:forEach var="data" items="${categories}">
	                                  <form:option value="${data.pageType}">${data.pageType}</form:option> 
	                                 </c:forEach>  
	                             </form:select>
                              </div>
                           </div>
                           <div class="col-md-3 mb-2">
                              <div class="form-outline">
                                  <div class="form-outline">
                                     <label class="form-label" for="status">Status</label>
	                                 <form:select id="status" path="status" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <form:option value="Active">Active</form:option>
		                                 <form:option value="InActive">InActive</form:option>
		                             </form:select>
                                 </div>
                              </div>
                           </div>
                            <div class="col-md-3 mb-2">
                              <div class="form-outline">
                                 <label class="form-label" for="posttime">File</label>
                                 <input type="file" name="file" class="form-control form-control-lg"/>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-3 mb-3">
                              <div class="form-outline">
                                 <label class="form-label" for="tfnHeader">TfnHeader</label>
                                 <form:input type="text" path="tfnHeader" class="form-control form-control-lg" placeholder="Enter TfnHeader"/>
                              </div>
                           </div>
                           <div class="col-md-3 mb-3">
                              <div class="form-outline">
                                 <label class="form-label" for="tfnPopup">TfnPopup</label>
                                 <form:input type="text" path="tfnPopup" class="form-control form-control-lg" placeholder="Enter TfnPopup"/>
                              </div>
                           </div>
                           <div class="col-md-3 mb-3">
                              <div class="form-outline">
                              	 <label class="form-label" for="tfnFooter">TfnFooter</label>
                                 <form:input type="text" path="tfnFooter" class="form-control form-control-lg" placeholder="Enter TfnFooter"/>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-3 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
                                     <label class="form-label" for="countryCode">Country Languages</label>
	                                 <form:select id="countryCode" path="countryCode" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <option>English</option>
		                                 <form:option value="es">Spanish</form:option>
		                             </form:select>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
                           </div>
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