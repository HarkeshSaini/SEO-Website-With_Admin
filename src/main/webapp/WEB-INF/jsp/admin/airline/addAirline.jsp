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
<title>Add Airline</title>
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
                   <form action="/admin/addAirlineContent" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes text-center">${airline}</h3>
                     
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="contentTitle"  class="form-control form-control-lg"  placeholder="Enter Content Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="pageValue" class="form-control form-control-lg" placeholder="Enter Page Value"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="pageName" class="form-control form-control-lg" placeholder="Enter Page Name" required="required"/>
                           </div>
                        </div>
                     </div>
                     
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="metaTitle"  class="form-control form-control-lg"  placeholder="Enter Meta Title" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="metaKeyword" class="form-control form-control-lg" placeholder="Enter Meta Keyword" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="metaDesc" class="form-control form-control-lg" placeholder="Enter Meta Desc" required="required"/>
                           </div>
                        </div>
                     </div>
                     
                     <div class="row">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="otherMeta" class="form-control form-control-lg" placeholder="Enter Other Meta" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="file" name="file" class="form-control form-control-lg" placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                           	   <input type="text" name="dealCode" class="form-control form-control-lg" placeholder="Enter Deal Code"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        </div>
                        
                        <div class="row">
                           <div class="form-outline col-md-12 mb-3">
                               <textarea id="contentData" name="contentData" class="form-control form-control-lg" required="required"></textarea>
                           </div>
                        </div>
                         <div class="row">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="date" name="date" class="form-control form-control-lg" placeholder="Enter Posttime" required="required"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <select id="pageType" name="pageType" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
	                                 <option selected>Select PageType</option> 
	                                 <option value="airline">Airline</option> 
	                                 <option value="airlineES">Airline (ES)</option> 
	                                 <option value="city">City</option> 
	                             </select>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
	                                 <select id="status" name="status" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <option selected>Select Status</option>
		                                 <option value="Active">Active</option>
		                                 <option value="InActive">InActive</option>
		                             </select>
                                 </div>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="count" class="form-control form-control-lg" placeholder="Enter Count"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="url" class="form-control form-control-lg titleUrl" placeholder="Enter Url" required="required"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="modifyBy" class="form-control form-control-lg" placeholder="Enter modifyBy"/>
                                 <div class="form-outline"> 
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
                           <div class="form-group">
                              <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
                           </div>
                     </div>
                     
                    </form>
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