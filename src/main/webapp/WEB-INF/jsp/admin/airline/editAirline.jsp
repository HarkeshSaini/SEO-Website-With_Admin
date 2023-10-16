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
<title>Edit Airline</title>
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
                   <form:form action="/admin/editAirlineContent/${id}" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes text-center">${airline}</h3>
                     
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Content Title</label>
                              <form:input type="text" path="contentTitle"  class="form-control form-control-lg"  placeholder="Enter Content Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Page Value</label>
                              <form:input type="text" path="pageValue" class="form-control form-control-lg" placeholder="Enter Page Value" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Page Name</label>
                              <form:input type="text" path="pageName" class="form-control form-control-lg" placeholder="Enter Page Name" required="required"/>
                           </div>
                        </div>
                     </div>
                     
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Meta Title</label>
                              <form:input type="text" path="metaTitle"  class="form-control form-control-lg"  placeholder="Enter Meta Title" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Meta Keyword</label>
                              <form:input type="text" path="metaKeyword" class="form-control form-control-lg" placeholder="Enter Meta Keyword" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Meta Desc</label>
                              <form:input type="text" path="metaDesc" class="form-control form-control-lg" placeholder="Enter Meta Desc" required="required"/>
                           </div>
                        </div>
                     </div>
                     
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Other Meta</label>
                              <form:input type="text" path="otherMeta" class="form-control form-control-lg" placeholder="Enter Other Meta" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Content Images</label>
                              <input type="file" name="file" class="form-control form-control-lg"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <label>Deal Code</label>
                           	   <form:input type="text" path="dealCode" class="form-control form-control-lg" placeholder="Enter Deal Code"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        </div>
                        
                        <div class="row">
                           <div class="form-outline col-md-12 mb-3">
                               <form:textarea id="contentData" path="contentData" class="form-control form-control-lg" required="required"></form:textarea>
                           </div>
                        </div>
                         <div class="row">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>Post Date</label>
                                 <form:input type="text" path="modifyDate" class="form-control form-control-lg"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>PageType</label>
                                 <form:select id="pageType" path="pageType" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
	                                 <form:option value="airline">Airline</form:option> 
	                                 <form:option value="airlineES">Airline (ES)</form:option> 
	                                 <form:option value="city">City</form:option> 
	                             </form:select>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
                                     <label>Status</label>
	                                 <form:select id="status" path="status" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <form:option value="Active">Active</form:option>
		                                 <form:option value="InActive">InActive</form:option>
		                             </form:select>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>Count</label>
                                 <form:input type="text" path="count" class="form-control form-control-lg" placeholder="Enter Count"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>Url</label>
                                 <form:input type="text" path="url" class="form-control form-control-lg titleUrl" placeholder="Enter Url" required="required"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>modify By</label>
                                 <form:input type="text" path="modifyBy" class="form-control form-control-lg" placeholder="Enter modifyBy"/>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>tfn Header</label>
                                 <form:input type="text" path="tfnHeader" class="form-control form-control-lg" placeholder="Enter TfnHeader"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>tfn Popup</label>
                                 <form:input type="text" path="tfnPopup" class="form-control form-control-lg" placeholder="Enter TfnPopup"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <label>tfn Footer</label>
                                 <form:input type="text" path="tfnFooter" class="form-control form-control-lg" placeholder="Enter TfnFooter"/>
                                 <div class="form-outline"> 
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
  <script>CKEDITOR.replace( 'contentData' );</script>
</body>
</html>