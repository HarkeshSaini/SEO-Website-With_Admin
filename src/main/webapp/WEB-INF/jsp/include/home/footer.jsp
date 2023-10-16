<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>      
      <footer id="footer">
         <div class="container">
            <div class="text-center">&copy;hintguys All Rights Reserved.</div>
              <c:if test="${not empty homeDetails.disclaimer}">
            	<div class="disclaimer"><strong>Disclaimer :- </strong>${homeDetails.disclaimer}</div>
         	  </c:if>
         </div>
      </footer>
      
      <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
      <script src="/resources/pages/js/main.js"></script>
      
      <script src="/resources/pages/js/bootstrap.bundle.min.js"></script>
      <script src="/resources/pages/js/owl.carousel.min.js"></script>
      <script>
         $(document).ready(function () {
           $('.owl-carousel').owlCarousel({
             loop: true,
             margin: 10,
             nav: true,
             responsive: {
               0: { items: 1 },
               600: { items: 3 },
               1000: { items: 4 }
             }
           })
         });
      </script>
      <script>
         $(document).ready(function () {
           $(".mobile-nav-toggle").click(function () {
             $("")
           });
         });
      </script>