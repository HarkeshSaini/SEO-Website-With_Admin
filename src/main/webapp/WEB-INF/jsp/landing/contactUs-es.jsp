<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.ParseException" %> 
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="code" value="${langCode.toLowerCase()}" scope="session"  />
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="${code}">
   <head>
   <head>
      <meta charset="utf-8">
       <title>Contacta con nosotras</title>
       <meta name="description" content="Contacta con nosotras" >
       <meta name="keywords" content="Contacta con nosotras" />
      <jsp:include page="../include/home/common.jsp"></jsp:include>
   </head>
   <body>
      <main class="main">
         <jsp:include page="../include/home/header.jsp"></jsp:include>
         <div class="contact-banner">
            <img src="/resources/pages/images/banner1.jpg" alt="banner" />
            <div class="contact-content">
               <span>Contáctenos</span>
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item"><a href="/es">Casa</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Contáctenos</li>
                  </ol>
               </nav>
            </div>
         </div>
         <!-- ======= Contact Section ======= -->
         <section id="contact" class="contact">
            <div class="container">
            <div class="section-title">
               <h2>Contacto para<a href="/es">HintGuys.com</a></h2>
               <p>${contactSubmit}</p>
               </div>
            <div class="row contact-info">
               <div class="col-md-8 col-xs-12 col-sm-8">
                  <div class="form">
                      <h2>FORMULARIO DE CONTACTO</h2>
                     <form action="/es/contacta-con-nosotras" method="post" role="form" class="php-email-form">
                        <div class="rowss">
                           <div class="col-md-6 form-group col-xs-12">
                              <label>Nombre de pila</label>
                              <input type="text" name="name" class="form-control" id="name" placeholder="Nombre de pila" required="required"/>
                           </div>
                           <div class="col-md-6 form-group col-xs-12">
                              <label>Telefono no.</label>
                              <input type="number" name="phone" class="form-control" id="phone" placeholder="Telefono no." required="required"/>
                           </div>
                           <div class="col-md-6 form-group col-xs-12">
                              <label>Identificación de correo</label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="Identificación de correo" required="required"/>
                           </div>
                           <div class="col-md-6 form-group col-xs-12">
                              <label>Sujeta</label>
                              <input type="text" class="form-control" name="subject" id="subject" placeholder="Sujeta" required>
                           </div>
                           <div class="col-md-12 form-group col-xs-12">
                              <label>Escribe tu mensaje</label>
                              <textarea class="form-control" name="message" rows="5" placeholder="Escribe tu mensaje" required></textarea>
                           </div>
                           <div class="text-centerss"><button type="submit">Enviar mensaje</button></div>
                        <!-- </div> -->
                     </form>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-xs-12 col-sm-4 cont">
                  <h2>Detalles de contacto</h2>
                  <div class="contact-address">
                     <i class="bi bi-geo-alt"></i>
                     <div class="cont-inns">
                        <h3>DIRECCIÓN</h3>
                        <address>A108 Adam Street, NY 535022, USA</address>
                     </div>
                  </div>
                  <div class="contact-address">
                     <i class="bi bi-phone"></i>
                     <div class="cont-inns">
                        <h3>Número de teléfono</h3>
                        <p><a href="tel:+1 000 000 0000">+1 000 000 0000</a></p>
                     </div>
                  </div>
                  <div class="contact-address">
                     <i class="bi bi-envelope"></i>
                     <div class="cont-inns">
                        <h3>Correo electrónico</h3>
                        <p><a href="mailto:info@hintguys.com">info@hintguys.com</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </main>
      <jsp:include page="../include/home/footer.jsp"></jsp:include>
   </body>
</html>