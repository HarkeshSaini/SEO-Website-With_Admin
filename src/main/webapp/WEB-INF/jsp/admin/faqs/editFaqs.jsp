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
<title>Edit FAQs</title>
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
                   <form:form action="/admin/editFaqs/${id}" method="post">
                     <h3 class="mb-5 homes text-center">${faqs}</h3>
                     <div class="row">
                        <div class="col-md-6 mb-3">
                           <div class="form-outline">
                           	  <label>Url</label>
                              <form:input type="text" path="url" class="form-control form-control-lg" placeholder="Enter Url" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-6 mb-3">
                           <div class="form-outline">
                               <label>faQues</label>
                           	   <form:input type="text" path="faQues" class="form-control form-control-lg" placeholder="Enter FAqs Question"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        </div>
                        <div class="row">
                           <div class="form-outline col-md-12 mb-3">
                               <form:textarea id="faqAns" path="faqAns" class="form-control form-control-lg" required="required"></form:textarea>
                           </div>
                        </div>
                         <div class="row">
                           <div class="col-md-6 mb-3">
                              <div class="form-outline">
                                 <label>Date</label>
                                 <form:input type="text" path="posttime" class="form-control form-control-lg" placeholder="Enter Posttime" required="required"/>
                              </div>
                           </div>
                           <div class="col-md-6 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
                                     <label>Status</label>
	                                 <form:select id="faqStatus" path="faqStatus" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <form:option value="Active">Active</form:option>
		                                 <form:option value="InActive">InActive</form:option>
		                             </form:select>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
                        </div>
                      </form:form>
                  </div>
               </div>
            </div>
          </div>
      </div>
   </main>
  </div>
  <script>CKEDITOR.replace( 'faqAns' );</script>
</body>
</html>