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
      <title>DashBoard</title>
   </head>
   <body>
      <div class="page-wrapper chiller-theme toggled">
         <jsp:include page="sideBar.jsp"></jsp:include>
         <main class="page-content">
            <div class="container-fluid">
               <div class="row d-flex justify-content-center align-items-center">
                  <div class="col-12 col-md-12 col-lg-12 col-xl-12">
                     <div class="card-fluid main">
                        <div class="card-body p-5 text-center">
                           <form:form action="/admin/homeEditContent/${id}" method="post" enctype= "multipart/form-data">
                              <h3 class="mb-5 homes">${homeContent}</h3>
                              <div class="row">
                                 <div class="col-md-4 mb-3">
                                    <div class="form-outline">
                                       <form:input type="text" path="title"  class="form-control form-control-lg"  placeholder="Enter Title"/>
                                    </div>
                                 </div>
                                 <div class="col-md-4 mb-3">
                                    <div class="form-outline">
                                       <form:input type="text" path="description" class="form-control form-control-lg" placeholder="Enter Title"/>
                                    </div>
                                 </div>
                                 <div class="col-md-4 mb-3">
                                    <div class="form-outline">
                                       <form:input type="text" path="keywords" class="form-control form-control-lg" placeholder="Enter Keywords"/>
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-md-4 mb-3">
                                    <div class="form-outline">
                                       <form:input type="text" path="bannerContent" class="form-control form-control-lg" placeholder="Enter Banner Content"/>
                                    </div>
                                 </div>
                                 <div class="col-md-4 mb-3">
                                    <div class="form-outline">
                                       <input type="file" name="file" class="form-control form-control-lg"/>
                                    </div>
                                 </div>
                                 <div class="col-md-4 mb-3">
                                    <div class="form-outline">
                                       <form:input type="text" path="disclaimer" class="form-control form-control-lg" placeholder="Enter Disclaimer"/>
                                       <div class="form-outline"> 
                                       </div>
                                    </div>
                                 </div>
                                 </div>
                                 <div class="row">
                                    <div class="form-outline col-md-12 mb-3">
                                       <form:textarea id="content" path="content" class="form-control form-control-lg" ></form:textarea>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-4 mb-3">
                                       <div class="form-outline">
                                          <form:select id="countryCode" path="countryCode" class="form-select form-control form-control-lg" aria-label="Default select example">
                                             <form:option value="en">EN</form:option>
                                             <form:option value="es">ES</form:option>
                                             <form:option value="fr">FR</form:option>
                                          </form:select>
                                       </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                       <div class="form-outline">
                                          <form:input type="text" path="countryName" class="form-control form-control-lg" placeholder="Enter Country Name"/>
                                       </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                       <div class="form-outline">
                                          <form:input type="text" path="disclaimerTitle" class="form-control form-control-lg" placeholder="Disclaimer Title"/>
                                          <div class="form-outline"> 
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-4 mb-3">
                                       <div class="form-outline">
                                          <form:input type="text" path="tfnHeader" class="form-control form-control-lg" placeholder="Enter TfnHeader"/>
                                       </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                       <div class="form-outline">
                                          <form:input type="text" path="tfnPopup" class="form-control form-control-lg" placeholder="Enter TfnPopup"/>
                                       </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                       <div class="form-outline">
                                          <form:input type="text" path="tfnFooter" class="form-control form-control-lg" placeholder="Enter TfnFooter"/>
                                          <div class="form-outline"> 
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row">
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