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
   <head>
      <meta charset="utf-8">
      <title>${indexPage.title}</title>
      <meta name="description" content="${indexPage.description}" >
      <meta name="keywords" content="${indexPage.keywords}" />
      <jsp:include page="../include/home/common.jsp"></jsp:include>
   </head>
   <body>
      <body>
         <main class="main">
          <jsp:include page="../include/home/header.jsp"></jsp:include>
	      <div class="contact-banner">
	      <img src="/resources/pages/images/banner3.jpg" alt="banner" />
	      <div class="contact-content">
	        <span>${indexPage.bannerContent}</span>
	        <nav aria-label="breadcrumb">
	          <ol class="breadcrumb">
	            <li class="breadcrumb-item"><a href="/">Home</a></li>
	            <li class="breadcrumb-item active" aria-current="page">${fn:toUpperCase(indexPage.pageType)}</li>
	          </ol>
	        </nav>
	      </div>
	    </div>
       <div class="blog_section">
      <div class="container">
        <div class="text-center heading_RWM">
          <h2 class="main_heading"><span><label>Our<i></i></label><strong> ${fn:toUpperCase(indexPage.pageType)}</strong></span></h2>
        </div>
        <div class="row">
		<c:forEach var="data" items="${blogData}"> 
          <div class="col-vvxs-12 col-vxs-12 col-xs-12 col-lg-4 col-sm-6">
            <div class="solution_cards_box">
              <div class="solution_card">
                <div class="solu_description">
                  <a href="/${indexPage.pageType}/${data.titleUrl}"><h3>${data.heading}</h3></a>
                  <p>${(fn:substring(data.content.replaceAll('<.*?>' , ""), 0, 115))}</p>
                  <a href="/${indexPage.pageType}/${data.titleUrl}" class="mores">More Blogs <i class="bi bi-arrow-right-short"></i></a>
                </div>
              </div>
            </div>
          </div> 
		</c:forEach>
        </div> 
      </div> 
    </div>
  </main> 
 <jsp:include page="../include/home/footer.jsp"></jsp:include>
   </body>
</html>