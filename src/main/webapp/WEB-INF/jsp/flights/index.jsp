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
      <title>Flights</title>
      <meta name="description" content="Flights" >
      <meta name="keywords" content="Flights" />
      <jsp:include page="../include/home/common.jsp"></jsp:include>
   </head>
   <body>
      <body id="myList">
         <div class="main" id="home">
            <jsp:include page="../include/home/header.jsp"></jsp:include>
            <div class="contact-banner">
               <img src="/resources/pages/images/banner1.jpg" alt="banner" />
               <div class="contact-content">
                  <span>Flights</span>
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Flights Travel</li>
                     </ol>
                  </nav>
               </div>
            </div>
            <div class="flight-con">
               <div class="container">
                  <h2>Lorem <span>Ipsum </span></h2>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
                     in
                     some form, by injected humour, or randomised words which don't look even slightly believable. If you are
                     going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in
                     the
                     middle of text.
                  </p>
                  <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical
                     Latin
                     literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at
                     Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a
                     Lorem
                     Ipsum passage, and going through the cites of the word in classical literature,
                  </p>
                  <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                     dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                     ex
                     ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                     fugiat
                     nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                     mollit
                     anim id est laborum."
                  </p>
                  <p>"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                     deleniti
                     atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                     similique
                     sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum
                     facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
                     impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor
                     repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet
                     ut et
                     voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente
                     delectus,
                     ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."
                  </p>
               </div>
            </div>
            <div class="top-airline">
               <div class="container">
                  <h2>TOP <span>AIRLINES</span></h2>
                  <ul class="top-air-list">
                  <c:forEach var="data" items="${blogData}"> 
                     <li><a href="/flights/${data.url}"><i class="fas fa-caret-right"></i>${data.pageName}</a></li>
                   </c:forEach>   
                  </ul>
               </div>
            </div>
            <jsp:include page="../include/home/footer.jsp"></jsp:include>
         </div>
   </body>
</html>