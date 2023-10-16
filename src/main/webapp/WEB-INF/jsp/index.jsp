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
            <img src="/resources/pages/images/home-banner.jpg" class="img-fluid" alt="banner">
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
         <!-- ======= About Section ======= -->
         <section id="about" class="about">
            <div class="container">
               <div class="row no-gutters">
                  <div class="image col-xl-8 ">
                     <h3>TOP REVIEWS & BEST OF LISTS</h3>
                     <div class="team reviews">
                        <div class="member">
                           <img src="/resources/pages/images/portfolio-1.jpg" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>Phones &amp; Assessories</span>
                                 <h4>Where does it come from?</h4>
                                 <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                    when looking at its
                                    layout.
                                 </p>
                              </div>
                           </div>
                        </div>
                        <div class="member">
                           <img src="/resources/pages/images/portfolio-2.jpg" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>Phones &amp; Assessories</span>
                                 <h4>Sarah Jhonson</h4>
                                 <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                    when looking at its
                                    layout.
                                 </p>
                              </div>
                           </div>
                        </div>
                        <div class="member">
                           <img src="/resources/pages/images/portfolio-3.jpg" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>Phones &amp; Assessories</span>
                                 <h4>William Anderson</h4>
                                 <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                    when looking at its
                                    layout.
                                 </p>
                              </div>
                           </div>
                        </div>
                        <div class="member">
                           <img src="/resources/pages/images/portfolio-4.jpg" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>Phones &amp; Assessories</span>
                                 <h4>Amanda Jepson</h4>
                                 <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                    when looking at its
                                    layout.
                                 </p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-4">
                     <div class="content review-lists">
                        <h3>Voluptatem dignissimos provident quasi</h3>
                        <p>
                           Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                           dolore magna aliqua. Duis aute irure dolor in reprehenderit
                        </p>
                        <div class="row antivirus-sec">
                           <div class="col-md-6 icon-box">
                              <span>Antivirus</span>
                              <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
                              <h4>Corporis voluptates sit</h4>
                           </div>
                           <div class="col-md-6 icon-box">
                              <span>Antivirus</span>
                              <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
                              <h4>Ullamco laboris nisi</h4>
                           </div>
                           <div class="col-md-6 icon-box">
                              <span>Antivirus</span>
                              <p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>
                              <h4>Labore consequatur</h4>
                           </div>
                           <div class="col-md-6 icon-box">
                              <span>Antivirus</span>
                              <p>Expedita veritatis consequuntur nihil tempore laudantium vitae denat pacta</p>
                              <h4>Beatae veritatis</h4>
                           </div>
                        </div>
                     </div>
                     <!-- End .content-->
                  </div>
               </div>
            </div>
         </section>
         <!-- End About Section -->
         <!-- ======= Services Section ======= -->
         <section id="services" class="services">
            <div class="container">
               <div class="section-title">
                  <h2>Our Services</h2>
                  <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
                     consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
                     in iste officiis commodi quidem hic quas.
                  </p>
               </div>
               <div class="row">
                  <div class="col-lg-4 col-md-6 icon-box">
                     <div class="icon-inner">
                        <div class="icon"><i class="bi bi-envelope"></i></div>
                        <h4 class="title"><a href="">Email</a></h4>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
                           occaecati cupiditate non provident
                        </p>
                     </div>
                  </div>
                  <div class="col-lg-4 col-md-6 icon-box">
                     <div class="icon-inner">
                        <div class="icon"><i class="bi bi-printer"></i></div>
                        <h4 class="title"><a href="">Printer</a></h4>
                        <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                           commodo
                           consequat tarad limino ata
                        </p>
                     </div>
                  </div>
                  <div class="col-lg-4 col-md-6 icon-box">
                     <div class="icon-inner">
                        <div class="icon"><i class="bi bi-laptop"></i></div>
                        <h4 class="title"><a href="">Computer</a></h4>
                        <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                           fugiat nulla pariatur
                        </p>
                     </div>
                  </div>
                  <div class="col-lg-4 col-md-6 icon-box">
                     <div class="icon-inner">
                        <div class="icon"><i class="bi bi-binoculars"></i></div>
                        <h4 class="title"><a href="">Software</a></h4>
                        <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                           mollit anim id est laborum
                        </p>
                     </div>
                  </div>
                  <div class="col-lg-4 col-md-6 icon-box">
                     <div class="icon-inner">
                        <div class="icon"><i class="bi bi-router"></i></div>
                        <h4 class="title"><a href="">Router</a></h4>
                        <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                           praesentium
                           voluptatum deleniti atque
                        </p>
                     </div>
                  </div>
                  <div class="col-lg-4 col-md-6 icon-box">
                     <div class="icon-inner">
                        <div class="icon"><i class="bi bi-airplane"></i></div>
                        <h4 class="title"><a href="">Airlines</a></h4>
                        <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum
                           soluta nobis est eligendi
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- End Services Section -->
         <!-- ======= Why Us Section ======= -->
         <section id="why-us" class="why-us">
            <div class="container">
               <div class="section-title">
                  <h2>Tech tangled</h2>
                  <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
                     consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
                     in iste officiis commodi quidem hic quas.
                  </p>
               </div>
               <div class="row">
                  <div class="col-lg-4 col-md-6">
                     <div class="box">
                        <span>01</span>
                        <h4>Lorem Ipsum</h4>
                        <p>Ulamco laboris nisi ut aliquip ex ea commodo consequat. Et consectetur ducimus vero placeat</p>
                     </div>
                  </div>
                  <div class="col-lg-4 mt-4 mt-lg-0 col-md-6">
                     <div class="box">
                        <span>02</span>
                        <h4>Repellat Nihil</h4>
                        <p>Dolorem est fugiat occaecati voluptate velit esse. Dicta veritatis dolor quod et vel dire leno para
                           dest
                        </p>
                     </div>
                  </div>
                  <div class="col-lg-4 mt-4 mt-lg-0 col-md-6">
                     <div class="box">
                        <span>03</span>
                        <h4> Ad ad velit qui</h4>
                        <p>Molestiae officiis omnis illo asperiores. Aut doloribus vitae sunt debitis quo vel nam quis</p>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- End Why Us Section -->
         <div class="slider-main">
            <div class="container">
               <h2>Looking Ahead</h2>
               <div class="owl-carousel owl-theme">
                  <div class="item">
                     <div class="owl-inner-sec">
                        <picture> <img src="/resources/pages/images/team-1.jpg" class="img-fluid" alt="logo"></picture>
                        <div class="slide-content">
                           <span>Mobility</span>
                           <h3>It is a long established fact that a reader will be distracted
                           </h3>
                        </div>
                     </div>
                  </div>
                  <div class="item">
                     <div class="owl-inner-sec">
                        <picture> <img src="/resources/pages/images/team-2.jpg" class="img-fluid" alt="logo"></picture>
                        <div class="slide-content">
                           <span>Mobility</span>
                           <h3>It is a long established fact that a reader will be distracted
                           </h3>
                        </div>
                     </div>
                  </div>
                  <div class="item">
                     <div class="owl-inner-sec">
                        <picture> <img src="/resources/pages/images/team-3.jpg" class="img-fluid" alt="logo"></picture>
                        <div class="slide-content">
                           <span>Mobility</span>
                           <h3>It is a long established fact that a reader will be distracted
                           </h3>
                        </div>
                     </div>
                  </div>
                  <div class="item">
                     <div class="owl-inner-sec">
                        <picture> <img src="/resources/pages/images/team-4.jpg" class="img-fluid" alt="logo"></picture>
                        <div class="slide-content">
                           <span>Mobility</span>
                           <h3>It is a long established fact that a reader will be distracted
                           </h3>
                        </div>
                     </div>
                  </div>
                  <div class="item">
                     <div class="owl-inner-sec">
                        <picture> <img src="/resources/pages/images/team-1.jpg" class="img-fluid" alt="logo"></picture>
                        <div class="slide-content">
                           <span>Mobility</span>
                           <h3>It is a long established fact that a reader will be distracted
                           </h3>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- ======= Team Section ======= -->
         <section id="team" class="team">
            <div class="container">
               <div class="section-title">
                  <h2>What We're Into</h2>
                  <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
                     consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
                     in iste officiis commodi quidem hic quas.
                  </p>
               </div>
               <div class="row">
                  <div class="col-xl-3 col-lg-4 col-md-6">
                     <a href="#" class="anchors">
                        <div class="member">
                           <img src="/resources/pages/images/portfolio-1.jpg" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>Phones & Assessories</span>
                                 <h4>Where does it come from?</h4>
                                 <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                    when looking at its
                                    layout.
                                 </p>
                              </div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.1s">
                     <a href="#" class="anchors">
                        <div class="member">
                           <img src="/resources/pages/images/portfolio-2.jpg" class="img-fluid" alt="">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <span>Phones & Assessories</span>
                                 <h4>Sarah Jhonson</h4>
                                 <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                    when looking at its
                                    layout.
                                 </p>
                              </div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.2s">
                     <a href="#" class="anchors"></a>
                     <div class="member">
                        <img src="/resources/pages/images/portfolio-3.jpg" class="img-fluid" alt="">
                        <div class="member-info">
                           <div class="member-info-content">
                              <span>Phones & Assessories</span>
                              <h4>William Anderson</h4>
                              <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                 when looking at its
                                 layout.
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.3s">
                     <a href="#" class="anchors"></a>
                     <div class="member">
                        <img src="/resources/pages/images/portfolio-4.jpg" class="img-fluid" alt="">
                        <div class="member-info">
                           <div class="member-info-content">
                              <span>Phones & Assessories</span>
                              <h4>Amanda Jepson</h4>
                              <p>It is a long established fact that a reader will be distracted by the readable content of a page
                                 when looking at its
                                 layout.
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </main>
      <jsp:include page="include/home/footer.jsp"></jsp:include>
   </body>
</html>