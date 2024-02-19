<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="code" value="/${langCode.toLowerCase()}" scope="session"  />
<c:set var="urlCode" value="${fn:replace(code, '/en', '')}" scope="session"  />
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="${fn:replace(code, '/', '')}">
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
                        <c:if test="${langCode =='EN'}">
                         <span class="purecounter">232</span>
                         <p><strong>Happy Clients</strong> Explore the Strategies</p>
                        </c:if>
                        <c:if test="${langCode =='ES'}">
                         <span class="purecounter">232</span>
                         <p><strong>Clientes satisfechos</strong> Explore las estrategias</p>
                        </c:if>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                     <div class="count-box">
                        <i class="bi bi-journal-richtext"></i>
                        <c:if test="${langCode =='EN'}">
                         <span class="purecounter">521</span>
                         <p><strong>Projects</strong> Focus on building Report</p>
                        </c:if>
                        <c:if test="${langCode =='ES'}">
                         <span class="purecounter">521</span>
                         <p><strong>Proyectos</strong> Centrarse en la creación de informes</p>
                        </c:if>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                     <div class="count-box">
                        <i class="bi bi-headset"></i>
                        <c:if test="${langCode =='EN'}">
                         <span class="purecounter">1463</span>
                         <p><strong>Hours Of Support</strong>  Monday through Friday</p>
                        </c:if>
                        <c:if test="${langCode =='ES'}">
                         <span class="purecounter">1463</span>
                         <p><strong>Horario de soporte</strong> de lunes a viernes</p>
                        </c:if>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                     <div class="count-box">
                        <i class="bi bi-people"></i>
                        <c:if test="${langCode =='EN'}">
                         <span class="purecounter">15</span>
                         <p><strong>Hard Workers</strong> Boost Customer Satisfaction</p>
                        </c:if>
                        <c:if test="${langCode =='ES'}">
                         <span class="purecounter">15</span>
                         <p><strong>Trabajadores duros</strong> aumentan la satisfacción del cliente</p>
                        </c:if>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <section id="about" class="about">
            <div class="container">
               <div class="row no-gutters">
                  <div class="image col-xl-8 ">
                    <c:if test="${langCode =='EN'}">
                     <h3>TOP BLOG & BEST OF LISTS</h3>
                    </c:if>
                    <c:if test="${langCode =='ES'}">
                     <h3>BLOG SUPERIOR Y LISTAS DE LO MEJOR</h3>
                    </c:if>
                     <div class="team reviews">
                        <c:forEach var="data" items="${blogData}" begin="0" end="3">
                        <div class="member-mains">
                           <div class="member">
                              <img src="/resources/admin/images/${data.imgUrl}" class="img-fluid" alt="">
                              <div class="member-info">
                                 <div class="member-info-content">
                                    <span>${data.extraTag}</span>
                                    <a href="${urlCode}/${data.pageType}/${data.titleUrl}"><h4>${data.heading}</h4></a>
                                    <p>${(fn:substring(data.content.replaceAll('<.*?>' , ""), 0, 100))}</p>
                                 </div>
                              </div>
                           </div>
                           </div>
                        </c:forEach>
                     </div>
                  </div>
                  <div class="col-xl-4">
                     <div class="content review-lists">
                        <h1>HintGuys</h1>
                        <p>${homeDetails.content}</p>
                        <div class="row antivirus-sec">
                           <c:forEach var="airlines" items="${airlinesData}" begin="0" end="6">
                              <div class="col-md-6 icon-box">
                                 <span>${fn:toUpperCase(airlines.pageType)}</span>
                                 <a href="${urlCode}/${airlines.pageType}/${airlines.titleUrl}"><h4>${airlines.heading}</h4></a>
                                 <h4>${airlines.extraTag}</h4>
                              </div>
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
                <c:if test="${langCode =='EN'}">
                  <h2>Our Services Categories</h2>
                  <p>You will enjoy our best services with different categories you can support to find with us after sending your request through an email. If you want to enjoy our services by going through the different categories, you must connect with us and get the complete information you are looking for.</p>
                </c:if>
                <c:if test="${langCode =='ES'}">
                 <h2>Nuestras categorías de servicios</h2>
                   <p>Disfrutarás de nuestros mejores servicios con diferentes categorías que puedes encontrar con nosotros después de enviar tu solicitud por correo electrónico. Si quieres disfrutar de nuestros servicios recorriendo las diferentes categorías, debes conectarte con nosotros y obtener la información completa que buscas.</p></c:if>
               </div>
               <div class="row">
                  <c:forEach var="data" items="${categories}" begin="0" end="7">
                     <c:if test="${(data.categoryUrl !='blog') and (data.categoryUrl !='news')}">
                        <div class="col-lg-4 col-md-6 icon-box">
                           <div class="icon-inner">
                              <div class="icon"><img src="/resources/admin/images/${data.imgUrl}" class="categories_img" alt="categories"></div>
                              <h4 class="title"><a href="${urlCode}/${data.categoryUrl}">${fn:toUpperCase(data.categoryUrl)}</a></h4>
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
                 <c:if test="${langCode =='EN'}">
                  <h2>Recent comment of catgories</h2>
                  <p>When you need to share your queries, feedback, or suggestions regarding content we have submitted through different people, you must select content after the subscription. If you are a subscribed user, you will get complete access to our website and manage your blogs and articles in a significant sequence.</p>
                 </c:if>
                 <c:if test="${langCode =='ES'}">
                 <h2>Comentario reciente de categorías</h2>
                   <p>Cuando necesites compartir tus consultas, comentarios o sugerencias sobre el contenido que hemos enviado a través de diferentes personas, debes seleccionar el contenido después de la suscripción. Si es un usuario suscrito, obtendrá acceso completo a nuestro sitio web y administrará sus blogs y artículos en una secuencia significativa.</p></c:if>
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
              <c:if test="${langCode =='EN'}">
               <h2>Looking for Technology</h2>
              </c:if>
              <c:if test="${langCode =='ES'}">
              <h2>Buscando Tecnología</h2>
              </c:if>
              <div class="owl-carousel owl-theme">
               <c:forEach var="technologys" items="${technologyData}" begin="0" end="5">
                 
                     <div class="item">
                        <div class="owl-inner-sec">
                           <picture> <img src="/resources/admin/images/${technologys.imgUrl}" class="img-fluid" alt="logo"></picture>
                           <div class="slide-content">
                              <span>${fn:toUpperCase(technologys.extraTag)}</span>
                              <a class="content_heading" href="${urlCode}/${technologys.pageType}/${technologys.titleUrl}">
                                 <h3>${technologys.heading}</h3>
                              </a>
                           </div>
                        </div>
                     </div>
                
               </c:forEach>
                 </div>
            </div>
         </div>
         <!-- ======= Team Section ======= -->
         <section id="team" class="team">
            <div class="container">
               <div class="section-title">
                 <c:if test="${langCode =='EN'}">
                  <h2>What We're Into insurance</h2>
                  <p>If you need help with your health and want to study different types of illness and treatment, get information from our blogs and articles.</p>
                 </c:if>
                 <c:if test="${langCode =='ES'}">
                  <h2>En qué nos dedicamos a los seguros</h2>
                   <p>Si necesitas ayuda con tu salud y quieres estudiar diferentes tipos de enfermedades y tratamientos, obtén información de nuestros blogs y artículos.</p></c:if>
               </div>
               <div class="row">
                  <c:forEach var="insurances" items="${insuranceData}" begin="0" end="3">
                     <div class="col-xl-3 col-lg-4 col-md-6">
                        <a href="${urlCode}/${insurances.pageType}/${insurances.titleUrl}" class="anchors">
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
                  </c:forEach>
               </div>
            </div>
         </section>
      </main>
      <jsp:include page="include/home/footer.jsp"></jsp:include>
   </body>
</html>