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
      <head>
         <meta charset="utf-8">
         <title>Frequently Asked Questions</title>
         <meta name="description" content="Frequently Asked Questions" >
         <meta name="keywords" content="Frequently Asked Questions" />
         <jsp:include page="../include/home/common.jsp"></jsp:include>
      </head>
      <body>
         <body>
            <main class="main">
               <jsp:include page="../include/home/header.jsp"></jsp:include>
               <div class="contact-banner">
                   <img src="/resources/pages/images/banner1.jpg" alt="banner" />
                  <div class="contact-content">
                     <span>Frequently Asked Questions</span>
                     <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                           <li class="breadcrumb-item"><a href="/">Home</a></li>
                           <li class="breadcrumb-item active" aria-current="page">Faqs</li>
                        </ol>
                     </nav>
                  </div>
               </div>
               <div class="about-inn">
                  <div class="container">
                     <div class="row">
                      <div class="text-center heading_RWM">
				          <h2 class="main_heading"><span><label>Frequently<i></i></label><strong> Asked Questions</strong></span></h2>
				        </div>
                        <div class="col-vvxs-12 col-vxs-12 col-xs-12 col-sm-4 col-lg-4">
                           <div class="who_we_left">
                              <img src="/resources/pages/images/faq.webp" alt="about">
                           </div>
                        </div>
                        <div class="col-vvxs-12 col-vxs-12 col-xs-12 col-sm-8 col-lg-8">
                           <div class="who_we_right">
                            	<div class="accordion" id="accordionExample">
                            	<c:forEach var="data" items="${blogTitleData}">
								  <div class="accordion-item">
								    <h2 class="accordion-header" id="headingOne${data.faqId}">
								      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne${data.faqId}" aria-expanded="true" aria-controls="collapseOne${data.faqId}">${data.faQues}</button>
								    </h2>
								    <div id="collapseOne${data.faqId}" class="accordion-collapse collapse" aria-labelledby="headingOne${data.faqId}" data-bs-parent="#accordionExample">
								      <div class="accordion-body">${data.faqAns}</div>
								    </div>
								  </div>
								 </c:forEach>
							 </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </main>
            <jsp:include page="../include/home/footer.jsp"></jsp:include>
      </body>
</html>