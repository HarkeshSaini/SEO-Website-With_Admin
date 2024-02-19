<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="code" value="${langCode.toLowerCase()}" scope="session"  />
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="${code}">
 <head>
<c:forEach var="contents" items="${blogTitleData}"> 
  <head>
    <meta charset="utf-8">
    <title>${contents.metaTitle}</title>
	<meta name="description" content="${contents.metaDesc}">
	<meta name="keywords" content="${contents.metaKeyword}" />
    <jsp:include page="../include/home/common.jsp"></jsp:include>
  </head>
  <body>
  <body id="myList">
  <div class="main" id="home">
  <jsp:include page="../include/home/header.jsp"></jsp:include>
    <div class="contact-banner">
      <img src="/resources/pages/images/banner1.jpg" alt="banner" />
      <div class="contact-content">
        <span>${contents.metaTitle}</span>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/es">Casa</a></li>
            <li class="breadcrumb-item"><a href="/es/vuelos">Vuelos</a></li>
            <li class="breadcrumb-item active" aria-current="page">${contents.contentTitle}</li>
          </ol>
        </nav>
      </div>
    </div>
  <div class="blog_detail blog">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 entries">
            <article class="entry entry-single">
              <div class="entry-img">
                <img src="/resources/admin/images/${contents.contentImage}" alt="" class="img-fluid">
              </div>
              <div class="entry-content">
            	<p>${contents.contentData}</p>
              </div>
            </article> 
            <jsp:include page="../landing/reviews.jsp"></jsp:include>
          </div> 
        </div>
      </div>
 	 </div>
     <jsp:include page="../include/home/footer.jsp"></jsp:include>
   </div>
  
  </body>
  </c:forEach>
</html>