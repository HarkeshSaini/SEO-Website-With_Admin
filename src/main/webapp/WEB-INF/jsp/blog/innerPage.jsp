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
   <c:forEach var="data" items="${blogTitleData}" >
      <head>
         <meta charset="utf-8">
         <title>${data.title}</title>
         <meta name="description" content="${data.description}" >
         <meta name="keywords" content="${data.keywords}" />
         <jsp:include page="../include/home/common.jsp"></jsp:include>
      </head>
      <body>
         <main class="main">
            <jsp:include page="../include/home/header.jsp"></jsp:include>
            <div class="contact-banner">
               <img src="/resources/pages/images/banner1.jpg" alt="banner" />
               <div class="contact-content">
                  <h1>${data.heading}</h1>
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a href="/${data.pageType}">${data.pageType}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">${data.heading}</li>
                     </ol>
                  </nav>
               </div>
            </div>
            <div class="technology">
             <div class="slider-blog">
		      <div class="container">
		        <h2>Latest Technology</h2>
		        <div class="owl-carousel owl-theme" id="blog-news">
	         <c:forEach var="tech" items="${technologys}">  
		          <div class="item">
		            <div class="owl-inner-sec">
		              <picture><img src="/resources/admin/images/${tech.imgUrl}" class="img-fluid" alt="logo"></picture>
		              <div class="slide-content">
		                <span>${fn:toUpperCase(tech.pageType)}</span>
		                <a class="content_heading" href="/${tech.pageType}/${tech.titleUrl}">${(fn:substring(tech.heading, 0, 45))}</a>
		              </div>
		            </div>
		           </div>
		          </c:forEach>  
		          
		          
		        </div>
		      </div>
		    </div>
            </div>
            <div class="blog_detail blog" style="margin-top: 30px;">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-4">
                        <div class="sidebar">
                           <h3 class="sidebar-title">IN THIS ARTICLE</h3>
                           <div class="sidebar-item recent-posts">
                           <c:forEach var="datas" items="${recentArticle}" begin="0" end="6">
                              <div class="post-item clearfix">
                                 <img src="/resources/admin/images/${datas.imgUrl}" alt="">
                                 <h4><a href="/${datas.pageType}/${datas.titleUrl}">${datas.heading}</a></h4>
                                 <time datetime="2020-01-01">${datas.posttime}</time>
                              </div> 
                             </c:forEach>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-8 entries">
                        <article class="entry entry-single">
                           <div class="entry-img">
                              <img src="/resources/admin/images/${data.imgUrl}" width="100%" alt="" class="img-fluid">
                           </div>
                          
                          <!--  <div class="entry-meta">
                              <ul>
                                 <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">John Doe</a> </li>
                                 <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"> <time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                 <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
                              </ul>
                           </div> -->
                           <div class="entry-content">
<div class="posts-b">
			      <time datetime="2020-01-01"><span>Date:</Span> ${data.posttime}</time>
				<p><span>Posted By:</span> ${data.extraTag}</p>
</div>
                              <p>${data.content}</p>
                              <jsp:include page="../landing/reviews.jsp"></jsp:include>
                           </div>
                        </article>
                     </div>
                  </div>
               </div>
            </div>
         </main>
         <jsp:include page="../include/home/footer.jsp"></jsp:include>
      </body>
   </c:forEach>
</html>