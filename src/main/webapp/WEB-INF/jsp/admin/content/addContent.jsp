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
<title>Add PageContent</title>
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
                   <form action="/admin/addPageContent" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes">${content}</h3>
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="title"  class="form-control form-control-lg"  placeholder="Enter Title" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="description" class="form-control form-control-lg" placeholder="Enter Description" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="keywords" class="form-control form-control-lg" placeholder="Enter Keywords" required="required"/>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="heading" class="form-control form-control-lg" placeholder="Enter Heading" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="file" name="file" class="form-control form-control-lg" placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                           	   <input type="text" name="titleUrl" class="form-control form-control-lg" disabled="disabled"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        </div>
                        <div class="row">
                           <div class="form-outline col-md-12 mb-3">
                               <textarea id="content" name="content" class="form-control form-control-lg" required="required"></textarea>
                           </div>
                        </div>
                         <div class="row">
                           <div class="col-md-3 mb-3">
                              <div class="form-outline">
                                 <input type="date" name="date" class="form-control form-control-lg" placeholder="Enter Posttime" required="required"/>
                              </div>
                           </div>
                           <div class="col-md-3 mb-3">
                              <div class="form-outline">
                                 <select id="categoryName" name="categoryName" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
	                                 <option selected>Select Category Name</option>
	                                 <option value="about-us">About Us</option>
	                                 <option value="privacy-policy">Privacy Policy</option>
	                                 <option value="terms-conditions">Terms And Conditions</option>
	                                 <option value="write-for-us">Write For Us</option>
	                                 <!-- Spanish -->
	                                 <option value="sobre-nosotros">About Us (ES)</option>
	                                 <option value="politica-de-privacidad">Privacy Policy (ES)</option>
	                                 <option value="terminos-y-condiciones">Terms And Conditions (ES)</option>
	                                 <option value="escribe-para-nosotros">Write For Us (ES)</option>
	                                  
		                         </select>
                              </div>
                           </div>
                           <div class="col-md-3 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
	                                 <select id="status" name="status" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <option selected>Select Status</option>
		                                 <option value="Active">Active</option>
		                                 <option value="InActive">InActive</option>
		                             </select>
                                 </div>
                                </div> 
                              </div>
                              <div class="col-md-3 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
	                                 <select id="countryCode" name="countryCode" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <option>Select Country Language</option>
		                                 <option>English</option>
		                                 <option value="es">Spanish</option>
		                             </select>
                                 </div>
                                </div> 
                              </div>
                           </div>
                        <div class="row">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="tfnHeader" class="form-control form-control-lg" placeholder="Enter TfnHeader"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="tfnPopup" class="form-control form-control-lg" placeholder="Enter TfnPopup"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="tfnFooter" class="form-control form-control-lg" placeholder="Enter TfnFooter"/>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                           </div>
                         <div class="form-group">
                          <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
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