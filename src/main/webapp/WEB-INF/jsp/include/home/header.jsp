<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<style>li.dropdown.dropdown-active ul { display: block;}</style>
<c:set var="code" value="${langCode.toLowerCase()}/" scope="session"/>
<c:set var="lang" value="${fn:replace(code, 'en/', '')}" scope="session"/>
<c:set var="flagCode" value="${fn:replace(langCode.toLowerCase(), 'en', '')}" scope="session"/>
<header id="header" class="fixed-top d-flex align-items-center">
   <div
      class="container d-flex align-items-center justify-content-between">
      <div class="logo">
      <a href="/${flagCode}"><img src="/resources/pages/images/logo.svg" class="img-fluid" alt="logo"></a>
      <input id="langData" value="${lang}" hidden="">
      </div>
      <div class="nav-rhts">
      <nav id="navbar" class="navbar">
         <ul>
          <c:if test="${langCode =='EN'}">
            <li><a class="nav-link  active" href="/">Home</a></li>
            <li class="dropdown"><a href="#"><span>CATEGORIES</span> <i class="bi bi-chevron-down"></i></a> <input id="langUrl" value="/categories" hidden=""><ul id="categoriesul"></ul></li>
            <li class="dropdown"><a href="#"><span>Links</span> <i class="bi bi-chevron-down"></i></a>
               <ul>
                  <li><a href="/about-us">About Us</a></li>
                  <li><a href="/faqs">Faqs Questions</a></li>
                  <li><a href="/write-for-us">Write For Us</a></li>
                  <li><a href="/privacy-policy">Privacy & Policy</a></li>
                  <li><a href="/terms-conditions">Terms & Conditions</a></li>
               </ul>
            </li>
            <li><a href="/blog">Blog</a></li>
            <li><a href="/flights">Flights</a></li>
            <li><a class="nav-link " href="/contact-us">Contact Us</a></li>
          </c:if>
          <c:if test="${langCode =='ES'}">
            <li><a class="nav-link  active" href="/es">Casa</a></li>
            <li class="dropdown"><a href="#"><span>CATEGORÍAS</span> <i class="bi bi-chevron-down"></i></a><input id="langUrl" value="/es/categories" hidden=""><ul id="categoriesul"></ul></li>
            <li class="dropdown"><a href="#"><span>Enlaces</span> <i class="bi bi-chevron-down"></i></a>
               <ul>
                  <li><a href="/es/sobre-nosotros">Sobre nosotras</a></li>
                  <li><a href="/es/preguntas-frecuentes">Preguntas frecuentes</a></li>
                  <li><a href="/es/escribe-para-nosotros">Escribe para nosotros</a></li>
                  <li><a href="/es/politica-de-privacidad">Política de privacidad</a></li>
                  <li><a href="/es/terminos-y-condiciones">Términos y condiciones</a></li>
               </ul>
            </li>
            <li><a href="/es/articulos">Artículos</a></li>
            <li><a href="/es/vuelos">Vuelos</a></li>
            <li><a href="/es/contacta-con-nosotras">Contacta con nosotras</a></li>
          </c:if>
         </ul>
  </nav>
     <div class="menu">
     <c:if test="${langCode =='EN'}">
      <div id="item"><img class="Country_flag" alt="Country Flag" src="/resources/pages/images/en.png" width="24" height="24"> English</div>
     </c:if> 
     <c:if test="${langCode =='ES'}">
      <div id="item"><img class="Country_flag" alt="Country Flag" src="/resources/pages/images/es.png" width="24" height="24"> Spanish</div>
     </c:if> 
      <div id="submenu" class="list-group">
        <a class="list-group-item" href="/"><img class="Country_flag" alt="Country Flag" src="/resources/pages/images/en.png" width="24" height="24"> English</a>
        <a class="list-group-item" href="/es"><img class="Country_flag" alt="Country Flag" src="/resources/pages/images/es.png" width="24" height="24"> Spanish</a>
      </div>
    </div>
        </div>
    <i class="bi bi-list mobile-nav-toggle"></i>
   </div>
</header>
<script>
    window.addEventListener("load", function () {
        var urls = document.getElementById("langUrl").value;
        var links = document.getElementById("langData").value;
        var settings = { url: urls, method: "GET", timeout: 0 };
        $.ajax(settings).done(function (response) {
            var createList = $.map(response, function (item, index) {
                return '<li><a href="/'+ links +'' + item.categoryUrl + '">' + item.categoryName + "</a></li>";
            });
            $("#categoriesul").html(createList);
        });
    });
</script>
