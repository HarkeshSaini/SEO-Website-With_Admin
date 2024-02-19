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
      <title>Vuelos</title>
      <meta name="description" content="Vuelos" >
      <meta name="keywords" content="Vuelos" />
      <jsp:include page="../include/home/common.jsp"></jsp:include>
   </head>
   <body>
      <body id="myList">
         <div class="main" id="home">
            <jsp:include page="../include/home/header.jsp"></jsp:include>
            <div class="contact-banner">
               <img src="/resources/pages/images/banner1.jpg" alt="banner" />
               <div class="contact-content">
                  <span>Vuelos</span>
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/es">Casa</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Vuelos Viajes</li>
                     </ol>
                  </nav>
               </div>
            </div>
            <div class="flight-con">
               <div class="container">
                  <h2>Lorem <span>Ipsum</span></h2>
                   <p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, pero la mayoría ha sufrido alteraciones.
                      en
                      de alguna forma, mediante humor inyectado o palabras aleatorias que no parecen ni un poco creíbles. Si usted es
                      Si vas a utilizar un pasaje de Lorem Ipsum, debes asegurarte de que no haya nada vergonzoso escondido en él.
                      el
                      medio del texto.
                   </p>
                   <p>Contrariamente a la creencia popular, Lorem Ipsum no es simplemente un texto aleatorio. Tiene sus raíces en una pieza de música clásica.
                      latín
                      literatura del 45 a. C., por lo que tiene más de 2000 años. Richard McClintock, profesor de latín en
                      Hampden-Sydney College en Virginia, buscó una de las palabras latinas más oscuras, consectetur, en un
                      Lorem
                      Pasaje de Ipsum y repasando las citas de la palabra en la literatura clásica,
                   </p>
                   <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                      dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ejercicio ullamco laboris nisi ut aliquip
                      ex
                      cada comodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                      fugiado
                      nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                      mollit
                      anim id est laborum."
                   </p>
                   <p>"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                      deleniti
                      atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                      similitud
                      sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum
                      facilis est et expedita distintivo. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
                      impedit quo minus id quod maxime placeat facere possimus, omnis voluptas asumirda est, omnis dolor
                      repelente. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet
                      ut et
                      voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente
                      delecto,
                      ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."
                   </p>
               </div>
            </div>
            <div class="top-airline">
               <div class="container">
                  <h2>ARRIBA <span>AEROLÍNEAS</span></h2>
                  <ul class="top-air-list">
                  <c:forEach var="data" items="${blogData}"> 
                     <li><a href="/es/vuelos/${data.url}"><i class="fas fa-caret-right"></i>${data.pageName}</a></li>
                   </c:forEach>   
                  </ul>
               </div>
            </div>
            <jsp:include page="../include/home/footer.jsp"></jsp:include>
         </div>
   </body>
</html>