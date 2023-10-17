<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0" name="viewport">
      <title>${homeDetails.title}</title>
	  <meta name="description" content="${homeDetails.description}">
	  <meta name="keywords" content="${homeDetails.keywords}" />
      <jsp:include page="include/home/common.jsp"></jsp:include>
   </head>
   <body>
    <jsp:include page="include/home/header.jsp"></jsp:include>
      <main id="main">
         <div class="home-banner">
           <c:if test="${not empty homeDetails.imgUrl}">
            <img src="/resources/admin/images/${homeDetails.imgUrl}" class="img-fluid test" alt="banner">
           </c:if>
           <c:if test="${empty homeDetails.imgUrl}">
            <img src="/resources/pages/images/home-banner.jpg" class="img-fluid" alt="banner">
           </c:if>
         </div>
         <div class="counts">
            <div class="container">
               <div class="row">
                  <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                     <div class="count-box">
                        <i class="bi bi-emoji-smile"></i>
                        <span class="purecounter">232</span>
                        <p><strong>Happy Clients</strong> consequuntur quae</p>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                     <div class="count-box">
                        <i class="bi bi-journal-richtext"></i>
                        <span class="purecounter">521</span>
                        <p><strong>Projects</strong> adipisci atque cum quia aut</p>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                     <div class="count-box">
                        <i class="bi bi-headset"></i>
                        <span class="purecounter">1463</span>
                        <p><strong>Hours Of Support</strong> aut commodi quaerat</p>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                     <div class="count-box">
                        <i class="bi bi-people"></i>
                        <span class="purecounter">15</span>
                        <p><strong>Hard Workers</strong> rerum asperiores dolor</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <section id="about" class="about">
            <div class="container">
               <div class="row no-gutters">
                  <div class="image col-xl-8 ">
                     <h3>TOP BLOG & BEST OF LISTS</h3>
                     <div class="team reviews">
                      <c:forEach var="data" items="${blogData}">
                       <c:if test="${data.pageType eq 'blog'}">
                        <div class="member">
                           <img src="/resources/admin/images/${data.imgUrl}" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>${data.extraTag}</span>
                                 <a href="/${data.pageType}/${data.titleUrl}"><h4>${data.heading}</h4></a>
                                 <p>${fn:escapeXml(fn:substring(data.content.replaceAll('<.*?>' , ""), 0, 100))}</p>
                              </div>
                           </div>
                        </div>
                       </c:if>
                     </c:forEach>   
                     </div>
                  </div>
                  <div class="col-xl-4">
                     <div class="content review-lists">
                         <p>${homeDetails.content}</p>
                        <div class="row antivirus-sec">
                        <c:forEach var="airlines" items="${blogData}">
                          <c:if test="${airlines.pageType eq 'airlines'}">
                           <div class="col-md-6 icon-box">
                              <span>${fn:toUpperCase(airlines.pageType)}</span>
                              <a href="/${airlines.pageType}/${airlines.titleUrl}"><h4>${airlines.heading}</h4></a>
                              <h4>${airlines.extraTag}</h4>
                           </div>
                           </c:if>
                         </c:forEach>   
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <section id="services" class="services">
            <div class="container">
               <div class="section-title">
                  <h2>Our Services Categories</h2>
                  <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
                     consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
                     in iste officiis commodi quidem hic quas.
                  </p>
               </div>
               <div class="row">
                <c:forEach var="data" items="${categories}">
                 <c:if test="${(data.categoryUrl !='blog') and (data.categoryUrl !='news')}">
                  <div class="col-lg-4 col-md-6 icon-box">
                     <div class="icon-inner">
                        <div class="icon"><img src="/resources/admin/images/${data.imgUrl}" class="categories_img" alt="categories"></div>
                        <h4 class="title"><a href="/${data.categoryUrl}">${fn:toUpperCase(data.categoryUrl)}</a></h4>
                        <p class="description">${data.categoryName}</p>
                     </div>
                  </div>
                  </c:if>
                 </c:forEach>  
               </div>
            </div>
         </section>
         <section id="why-us" class="why-us">
            <div class="container">
               <div class="section-title">
                  <h2>Recent comment of catgories</h2>
                  <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
                     consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
                     in iste officiis commodi quidem hic quas.
                  </p>
               </div>
               <div class="row">
                 <c:forEach var="data" items="${reviewForms}" begin="0" end="5"> 
                  <div class="col-lg-4 mt-4 mt-lg-0 col-md-6">
                     <div class="box">
                        <span>04</span>
                        <h4>${data.userName}</h4>
                        <p>${data.reviewMessage}</p>
                     </div>
                  </div>
                  </c:forEach>
               </div>
            </div>
         </section>
         <!-- End Why Us Section -->
         <div class="slider-main">
            <div class="container">
               <h2>Looking for Technology</h2>
                <c:forEach var="technologys" items="${blogData}">
                  <c:if test="${technologys.pageType eq 'technology'}">
                  <div class="owl-carousel owl-theme">
                  <div class="item">
                     <div class="owl-inner-sec">
                        <picture> <img src="/resources/admin/images/${technologys.imgUrl}" class="img-fluid" alt="logo"></picture>
                        <div class="slide-content">
                            <span>${fn:toUpperCase(technologys.extraTag)}</span>
                           <a class="content_heading" href="/${technologys.pageType}/${technologys.titleUrl}"><h3>${technologys.heading}</h3></a>
                        </div>
                     </div>
                   </div>
                  </div>
                </c:if>
              </c:forEach> 
            </div>
         </div>
         <!-- ======= Team Section ======= -->
         <section id="team" class="team">
            <div class="container">
               <div class="section-title">
                  <h2>What We're Into insurance</h2>
                  <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
                     consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
                     in iste officiis commodi quidem hic quas.
                  </p>
               </div>
               <div class="row">
                <c:forEach var="insurances" items="${blogData}">
                  <c:if test="${insurances.pageType eq 'insurance'}">
                  <div class="col-xl-3 col-lg-4 col-md-6">
                     <a href="/${insurances.pageType}/${insurances.titleUrl}" class="anchors">
                        <div class="member">
                           <img src="/resources/admin/images/${insurances.imgUrl}" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>${fn:toUpperCase(insurances.extraTag)}</span>
                                 <h4>${insurances.heading}</h4>
                                 <p>${fn:escapeXml(fn:substring(insurances.content.replaceAll('<.*?>' , ""), 0, 115))}</p>
                              </div>
                           </div>
                        </div>
                     </a>
                  </div> 
                </c:if>
                </c:forEach>  
               </div>
            </div>
         </section>
      </main>
      <jsp:include page="include/home/footer.jsp"></jsp:include>
   </body>
</html>