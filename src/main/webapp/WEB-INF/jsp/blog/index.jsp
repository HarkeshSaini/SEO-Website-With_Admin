<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="en">
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
	   <div class="slider-blog">
      <div class="container">
        <h2>Latest Tech ${fn:toUpperCase(indexPage.pageType)}</h2>
        <div class="owl-carousel owl-theme" id="blog-news">
          <c:forEach var="data" items="${recentArticle}">  
          <div class="item">
            <div class="owl-inner-sec">
              <picture><img src="/resources/admin/images/${data.imgUrl}" class="img-fluid" alt="logo"></picture>
              <div class="slide-content">
                <span>${fn:toUpperCase(indexPage.pageType)}</span>
                <a class="content_heading" href="/${indexPage.pageType}/${data.titleUrl}">${(fn:substring(data.heading, 0, 45))}</a>
              </div>
            </div>
          </div>
          </c:forEach> 
        </div>
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
                <picture><img src="/resources/admin/images/${data.imgUrl}" height="280px" alt="picture" /></picture>
                  <span>${data.extraTag}</span>
                  <a href="/${indexPage.pageType}/${data.titleUrl}"><h3>${data.heading}</h3></a>
                  <p>${fn:escapeXml(fn:substring(data.content.replaceAll('<.*?>' , ""), 0, 115))}</p>
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