<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
 
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet"> 
<link rel="stylesheet" type="text/css" href="/resources/admin/main.css">

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
<script src="https://cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" /> -->

<div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#"></a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand"><a href="#">pro sidebar</a>
       <div id="close-sidebar"><i class="fas fa-times"></i></div></div>
        <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="/resources/pages/images/logo.svg" alt="User picture">
        </div>
        <div class="user-info">
          <span class="user-role">Administrator</span>
          <span class="user-status"><i class="fa fa-circle"></i><span>Online</span></span>
        </div>
      </div>
      <div class="sidebar-search">
        <div>
            <div class="input-group search">
		      <input class="search-input form-control search-menu" type="text" placeholder="Search">
            <div class="input-group-append">
              <span class="input-group-text">
                <i class="fa fa-search" aria-hidden="true"></i>
              </span>
            </div>
          </div>
        </div>
      </div>
      <div class="sidebar-menu main">
        <ul>
            <li class="header-menu"><span>General</span></li>
            <li class="sidebar-dropdown title"><a href="/admin/dashboard"><i class="fa fa-database" aria-hidden="true"></i><span>Dashboard</span></a></li>
            <li class="sidebar-dropdown title"><a href="/admin/category"><i class="fa fa-database" aria-hidden="true"></i><span>Category Details</span></a></li>
            <li class="sidebar-dropdown title"><a href="/admin/articleContent"><i class="fa fa-address-card" aria-hidden="true"></i><span>Article Content</span></a></li>
            <li class="sidebar-dropdown title"><a href="/admin/airlineContent"><i class="fa fa-plane" aria-hidden="true"></i><span>Airline Content</span></a></li>
            <li class="sidebar-dropdown title"><a href="/admin/customerReviews"><i class="fa fa-address-card" aria-hidden="true"></i><span>Customer Reviews</span></a></li>
            <li class="sidebar-dropdown title"><a href="/admin/contactform"><i class="fa fa-chart-line"></i><span>Contact Form</span></a></li>
            <li class="sidebar-dropdown title"><a href="/admin/pageContent"><i class="fa fa-address-card" aria-hidden="true"></i><span>Page Content</span></a></li>
            <li class="sidebar-dropdown title"><a href="/admin/faqs"><i class="fa fa-chart-line"></i><span>Faqs Question</span></a></li>
            <li class="sidebar-dropdown title"><a href="/logout"><i class="fa fa-power-off"></i><span>logout</span></a></li>
        </ul>
      </div>
    </div>
    <div class="sidebar-footer">
      <a href="#"><i class="fa fa-bell"></i><span class="badge badge-pill badge-warning notification">3</span></a>
      <a href="#"><i class="fa fa-envelope"></i><span class="badge badge-pill badge-success notification">7</span></a>
      <a href="#"><i class="fa fa-cog"></i><span class="badge-sonar"></span></a>
      <a href="/logout"><i class="fa fa-power-off"></i></a>
    </div>
  </nav>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="/resources/admin/script.js"></script>

<script>
$(document).ready(function(){
let searchInput = document.querySelector('.search-input');
searchInput.addEventListener('keyup', search);
let titles = document.querySelectorAll('.main .title');
let searchTerm = '';
let tit = '';
function search(e) {
  searchTerm = e.target.value.toLowerCase();
  titles.forEach((title) => {
    tit = title.textContent.toLowerCase();
    tit.includes(searchTerm) ? title.style.display = 'block' : title.style.display = 'none';
  });
}
  });
</script>