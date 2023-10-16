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
               
	              <div class="col-lg-12">
	                 <div class="card-body p-md-5 mx-md-4">
	                    <div class="row text-center">
	                       <div class="col-md-4 mb-3">
	                          <form action="/admin/dashboard" method="post">
	                             <div class="heading_home"><a  href="/admin/homeContent"><span class="text_home">New Add Languages</span></a></div>
	                             <div class="form-outline">
	                                <select id="countryCode" name="countryCode" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
	                                   <option>Select Country</option>
	                                   <c:forEach var="content" items="${contents}">
	                                      <c:set var = "code" value = "${fn:toUpperCase(content.countryCode)}" />
	                                      <option value="${content.countryCode}">${code}</option>
	                                   </c:forEach>
	                                </select>
	                             </div>
	                             <div class="form-group mains">
	                                <button class="btn btn-primary btn-lg btn-block main" type="submit">Submit</button>
	                             </div>
	                          </form>
	                       </div>
	                       <div class="col-md-4 mb-3">
	                          <form action="/admin/dashboard" method="post">
	                             <div class="heading_home"><a href="/admin/indexContent"><span class="text_home">Page Index Content</span></a></div>
	                             <div class="form-outline">
	                                <select name="pageType" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
	                                   <option selected>Select Content Type</option>
	                                   <c:forEach var="content" items="${index}">
	                                      <option value="${content.pageType}">${content.pageType}</option>
	                                   </c:forEach>
	                                </select>
	                             </div>
	                             <div class="form-group mains">
	                                <button class="btn btn-primary btn-lg btn-block main" type="submit">Submit</button>
	                             </div>
	                          </form>
	                       </div>
	                       <div class="col-md-4 mb-3">
	                          <form action="#/admin/" method="post">
	                             <div class="heading_home"><a href="#/admin/homeContent"><span class="text_home">HomeContent</span></a></div>
	                             <div class="form-outline">
	                                <select class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
	                                   <option selected>Open this select menu</option>
	                                   <option value="1">One</option>
	                                   <option value="2">Two</option>
	                                   <option value="3">Three</option>
	                                </select>
	                             </div>
	                             <div class="form-group mains">
	                                <a class="btn btn-primary btn-lg btn-block main">Submit</a>
	                             </div>
	                          </form>
	                       </div>
	                    </div>
	                 </div>
	              </div>
	              <c:forEach var="data" items="${homeContent}">
	                 <div class="main_con sits container">
	                    <ul class="list-group main">
	                       <li class="list-group-item active"><a href="/admin/homeEditContent/${data.id}" class="edit_data"><i class='far fa-edit fa-9x'></i> Edit Content</a></li>
	                       <li class="list-group-item main"><img src="/resources/admin/images/${data.imgUrl}" style="width: 100%; height: 200px"/></li>
	                       <li class="list-group-item">${data.id}</li>
	                       <li class="list-group-item">${data.title}</li>
	                       <li class="list-group-item">${data.description}</li>
	                       <li class="list-group-item">${data.keywords}</li>
	                       <li class="list-group-item">${data.bannerContent}</li>
	                       <li class="list-group-item">${data.content}</li>
	                       <li class="list-group-item">${data.disclaimer}</li>
	                       <li class="list-group-item">${data.tfnHeader}</li>
	                       <li class="list-group-item">${data.tfnPopup}</li>
	                       <li class="list-group-item">${data.tfnFooter}</li>
	                       <li class="list-group-item">${data.countryCode}</li>
	                       <li class="list-group-item">${data.countryName}</li>
	                    </ul>
	                 </div>
	              </c:forEach>
	              <c:forEach var="data" items="${indexContents}">
	                 <div class="main_con sits container">
	                    <ul class="list-group main">
	                       <li class="list-group-item active"><< Back</li>
	                       <li class="list-group-item main"><img src="/resources/admin/images/${data.imgUrl}" style="width: 100%; height: 200px"></li>
	                       <li class="list-group-item">${data.title}</li>
	                       <li class="list-group-item">${data.description}</li>
	                       <li class="list-group-item">${data.keywords}</li>
	                       <li class="list-group-item">${data.bannerContent}</li>
	                       <li class="list-group-item">${data.tfnHeader}</li>
	                       <li class="list-group-item">${data.tfnPopup}</li>
	                       <li class="list-group-item">${data.tfnFooter}</li>
	                       <li class="list-group-item">${data.pageType}</li>
	                    </ul>
	                 </div>
	              </c:forEach>
	           </div>
           </div>
          </div>
       </div>
  </main>
  </div>
</body>
</html>