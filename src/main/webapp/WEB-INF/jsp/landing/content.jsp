<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.ParseException" %> 
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
   <c:forEach var="data" items="${blogTitleData}">
      <head>
         <meta charset="utf-8">
         <title>${data.title}</title>
         <meta name="description" content="${data.description}" >
         <meta name="keywords" content="${data.keywords}" />
         <jsp:include page="../include/home/common.jsp"></jsp:include>
      </head>
      <body>
         <body>
            <main class="main">
               <jsp:include page="../include/home/header.jsp"></jsp:include>
               <div class="contact-banner">
                  <c:if test="${not empty data.imgUrl}">
                     <img src="/resources/admin/images/${data.imgUrl}" alt="banner" />
                  </c:if>
                  <c:if test="${empty data.imgUrl}">
                     <img src="/resources/pages/images/banner1.jpg" alt="banner" />
                  </c:if>
                  <div class="contact-content">
                     <span>About Us</span>
                     <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                           <li class="breadcrumb-item"><a href="#">Home</a></li>
                           <li class="breadcrumb-item active" aria-current="page">About Us</li>
                        </ol>
                     </nav>
                  </div>
               </div>
               <div class="about-inn">
                  <div class="container">
                     <div class="row">
                        <div class="col-vvxs-12 col-vxs-12 col-xs-12 col-sm-4 col-lg-4">
                           <div class="who_we_left">
                              <img src="/resources/pages/images/about-image.png" alt="about">
                           </div>
                        </div>
                        <div class="col-vvxs-12 col-vxs-12 col-xs-12 col-sm-8 col-lg-8">
                           <div class="who_we_right blog">${data.content}
                             <jsp:include page="../landing/reviews.jsp"></jsp:include>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </main>
            <jsp:include page="../include/home/footer.jsp"></jsp:include>
      </body>
   </c:forEach>
</html>