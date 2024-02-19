<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>      
<footer id="footer">
   <div class="container">
   <c:if test="${langCode =='EN'}">
      <div class="text-center">&copy;hintguys All Rights Reserved.</div>
        <c:if test="${not empty homeDetails.disclaimer}">
      	<div class="disclaimer"><strong>Disclaimer :- </strong>${homeDetails.disclaimer}</div>
   	  </c:if>
   	</c:if> 
   	<c:if test="${langCode =='ES'}">
      <div class="text-center">&copy;hintguys Reservados todos los derechos.</div>
        <c:if test="${not empty homeDetails.disclaimer}">
      	<div class="disclaimer"><strong>Descargo de responsabilidad :- </strong>${homeDetails.disclaimer}</div>
   	  </c:if>
   	</c:if>  
   </div>
</footer>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/resources/pages/js/main.js"></script>
<script src="/resources/pages/js/bootstrap.bundle.min.js"></script>
<script src="/resources/pages/js/owl.carousel.min.js"></script>
<script> $(document).ready(function () { $('.owl-carousel').owlCarousel({ loop: false, margin: 10, nav: true, responsive: { 0: { items: 1 }, 600: { items: 2 }, 1000: { items: 4 } } }) }); </script>
<script>$(function() { $("#item").click(function() { $("#submenu").slideToggle(500); }); });</script>
<script>$(document).ready(function(){ $(".mobile-nav-toggle").click(function(){ $("#navbar").toggleClass("navbar-mobile"); }); $(".dropdown a").click(function(){ $(this).closest("li.dropdown").toggleClass("dropdown-active"), $(this).closest("li.dropdown").siblings().removeClass("dropdown-active") }); });</script>