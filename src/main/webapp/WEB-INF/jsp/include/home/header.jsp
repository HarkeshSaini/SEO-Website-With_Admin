<header id="header" class="fixed-top d-flex align-items-center">
   <div
      class="container d-flex align-items-center justify-content-between">
      <div class="logo">
         <a href="/">
            <!--  <img src="/resources/pages/images/logo.png" class="img-fluid" alt="logo"> -->Hintguys
         </a>
      </div>
      <nav id="navbar" class="navbar">
         <ul>
            <li><a class="nav-link  active" href="/">Home</a></li>
            <li class="dropdown">
               <a href="#"><span>CATEGORIES</span> <i class="bi bi-chevron-down"></i></a>
               	<ul id="categoriesul"></ul>
            </li>
            <li class="dropdown">
               <a href="#"><span>Links</span> <i class="bi bi-chevron-down"></i></a>
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
         </ul>
         <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
   </div>
</header>
<script>
   window.addEventListener('load', function() {
   	var settings = {
   		"url" : "/categories",
   		"method" : "GET",
   		"timeout" : 0,
   	};
   	$.ajax(settings).done(
   			function(response) {
   				var createList = $.map(response, function(item, index) {
   					return '<li><a href="/'+item.categoryUrl+'">' + item.categoryName + '</a></li>'
   				});
   				$('#categoriesul').html(createList)
   			});
   })
</script>