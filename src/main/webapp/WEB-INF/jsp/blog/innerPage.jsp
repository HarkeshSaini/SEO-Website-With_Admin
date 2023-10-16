<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="en">
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
                  <span>${data.heading}</span>
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a href="/blog">Blog</a></li>
                        <li class="breadcrumb-item active" aria-current="page">${data.heading}</li>
                     </ol>
                  </nav>
               </div>
            </div>
            <div class="blog_detail blog">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-4">
                        <div class="sidebar">
                           <h3 class="sidebar-title">IN THIS ARTICLE</h3>
                           <div class="sidebar-item recent-posts">
                           <c:forEach var="datas" items="${recentArticle}" >
                              <div class="post-item clearfix">
                                 <img src="/resources/admin/images/${datas.imgUrl}" alt="">
                                 <h4><a href="/blog/${datas.titleUrl}">${datas.heading}</a></h4>
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
                           <h2 class="entry-title">${data.heading}</h2>
                          <!--  <div class="entry-meta">
                              <ul>
                                 <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">John Doe</a> </li>
                                 <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"> <time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                 <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
                              </ul>
                           </div> -->
                           <div class="entry-content">
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