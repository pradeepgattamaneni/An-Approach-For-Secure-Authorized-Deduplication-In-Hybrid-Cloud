<%-- 
    Document   : Admins.jsp
    Created on : Sep 19, 2015, 12:01:08 PM
    Author     : Jessica Subashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>



<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body class="page1" id="top">
<!--==============================
              header
=================================-->
<header>
  <div class="container">
    <div class="row">
      <div class="grid_12 rel">
        <h1>
          <a href="index.html">
            <img src="images/logo.png" alt="Logo alt">
          </a>
        </h1>
      </div>
    </div>
  </div>
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container">
      <div class="row">
        <div class="grid_12 ">
          <div class="navigation ">
            <nav>
              <ul class="sf-menu">
               <li class="current"><a href="index.jsp">Home</a></li>
               <li><a href="about.html">About</a></li>
               <li><a href="services.html">Services</a></li>
               <li><a href="blog.html">Blog</a></li>
               <li><a href="contacts.html">Contacts</a></li>
             </ul>
            </nav>
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
  <section class="page1_header">
    <div class="container">
      <div class="row">
        <div class="grid_4">
          <a href="#" class="banner "><div class="maxheight">
            <div class="fa fa-globe"></div>Global Research</div>
          </a>
          <a href="#" class="banner "><div class="maxheight">
            <div class="fa fa-lightbulb-o"></div>Creative Ideas</div>
          </a>
          <a href="#" class="banner "><div class="maxheight1">
            <div class="fa fa-cog"></div>New Services</div>
          </a>
          <a href="#" class="banner "><div class="maxheight1">
            <div class="fa fa-briefcase"></div>Pro Management</div>
          </a>
        </div>
          <form action="Login2" method="post">
        <div class="grid_5">
            <div class="login-card">
           
 <div class="login-card">
   <%
String s=request.getAttribute("msg1")!=null?request.getAttribute("msg1").toString():"";
String s1=request.getAttribute("msg")!=null?request.getAttribute("msg").toString():"";
String s3=request.getAttribute("name")!=null?request.getAttribute("name" ).toString():"";
String s4=request.getAttribute("pwd")!=null?request.getAttribute("pwd" ).toString():"";

%>

    <h1>Log-in</h1><br>
  <form>
      <input type="text" name="name" value="" placeholder="Username">
          <input type="password" name="pwd" value="" placeholder="Password">
        <select  input type="text" name="type" placeholder="User Type">
              <!--<select name="type">-->
<option value="Server">Server</option>
<option value="user">User Login</option>     
<!--<option value="admin">Service Provider</option>-->
<option value="tpa">Third Parity Auditor</option><br>
</select>
  <br>  <input type="submit" name="login" class="login login-submit" value="login">
          <a href="forgott.jsp">FORGOT PASSWORD</a>
  </form>
    <%
if(s1!=null)
       {
    %>
</div>
        </div>
              </form>
      </div>
    </div>
  </section>
</header>
<div class="block-1">
  <div class="container">
    <div class="row">
      <div class="grid_3">
        <div class="block-1_count">10</div>
        Years of <br> Experience
        <div class="clear"></div>
      </div>
      <div class="grid_3">
        <div class="block-1_count">30</div>
        Successful <br> Projects
        <div class="clear"></div>
      </div>
      <div class="grid_3">
        <div class="block-1_count">20</div>
        Partner <br> Projects
        <div class="clear"></div>
      </div>
      <div class="grid_3">
        <a href="#" class="support"><img src="images/support.png" alt=""></a>
      </div>
    </div>
  </div>
</div>
<!--=====================
          Content
======================-->
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - July 28, 2014!</div>
  <div class="container">
    <div class="row">
      <div class="grid_10 preffix_1 ta__center">
        <div class="greet">
          <h2 class="head__1">
            Welcome
          </h2>
          <p>Read more about the <a href=" http://blog.templatemonster.com/free-website-templates/" rel="nofollow" class="color1">freebie</a> here. <br> Go to TemplateMonster.com and find more <a href="http://www.templatemonster.com/properties/topic/business-services/" rel="nofollow" class="color1">goodies</a> of this kind </p>
          Curabitur vel lorem sit amet nulla ullamcorper fermentum. In vitae varius augue, eu consectetur ligula. Etiam dui eros, laoreet site amet est vel, commodo venenatis eros. Fusce adipiscing quam id risus sagittis, non consequat lacus interdum. nulla, eu sodales arcu. Quisque viverra nulla nunc, eu ultrices libero ultricies eget. Phasellus accumsan 
        </div>
      </div>
    </div>
  </div>
  <article class="content_gray">
    <div class="container">
      <div class="row">
        <div class="grid_7">
          <h3>Our Advantages</h3>
          <div class="block-2">
            <img src="images/page1_img1.jpg" alt="" class="img_inner fleft">
            <div class="extra_wrapper">
              <div class="text1"><a href="#">Experience</a></div>
              <p>Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert varius augue, eu consectetur ligulaam dui eros dertoli.</p>Fusce adipiscing quam id risus sagittis, non consequat lacus interdum. Proin ut tinciduntol nulla, eu sodales vertomin
              <br>
              <a href="#" class="link-1">more</a>
            </div>
          </div>
          <div class="block-2">
            <img src="images/page1_img2.jpg" alt="" class="img_inner fleft">
            <div class="extra_wrapper">
              <div class="text1"><a href="#">Marketing</a></div>
              <p>Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert varius augue, eu consectetur ligulaam dui eros dertoli.</p>Fusce adipiscing quam id risus sagittis, non consequat lacus interdum. Proin ut tinciduntol nulla, eu sodales vertomin
              <br>
              <a href="#" class="link-1">more</a>
            </div>
          </div>
        </div>
        <div class="grid_4 preffix_1">
          <h3>Testimonials</h3>
          <blockquote class="bq1">
            <p>“Curabitur vel lorem sit amet nulla erero fermentum. In vitae varius auguectetu ligula. Etiam dui eros, laoreet site am est vel commodo venenatisipiscing... ”</p>
            <span>Liza Jons</span>
          </blockquote>
          <blockquote class="bq1">
            <p>“Burabitur vel lorem sit amet nulla erero fermentum. In vitae varius auguectetu ligula. Etiam dui eros, laoreet site am ast vel commodo venenatisipiscino... ”</p>
            <span>Mark Brown</span>
          </blockquote>
        </div>
      </div>
    </div>
  </article>
  <div class="container">
    <div class="row">
      <div class="grid_5">
        <h4>About Company</h4>
        <img src="images/page1_img3.jpg" alt="" class="img_inner fleft">
          <p>Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert arius augue, eu consectetur </p>
          <p class="offset__1">Eligulaam dui eros dertolisce dertolo adipiscing quam id risus sagittis</p>
          Curabitur vel lorem sit amet nulla ullamcorper fermentum In vitae dert rius augue, eu consectetur larem dui eros dertolisce dertolo 
      </div>
      <div class="grid_4">
        <h4>Solutions</h4>
        <ul class="list-1">
          <li><a href="#">Vivamus at magna non nunc tristique </a></li>
          <li><a href="#">Aliquam nibh ante, egestas id</a></li>
          <li><a href="#">Ommodo luctus libero</a></li>
          <li><a href="#">Faucibus malesuada faucibusonec </a></li>
          <li><a href="#">Laoreet metus id laoreet</a></li>
          <li><a href="#">Jalesuadaorem ipsum dolor sit ame</a></li>
        </ul>
      </div>
      <div class="grid_3">
        <h4>Contact Info</h4>
        <address>
          <ul class="cont_address">
            <li>8901 Marmora Road, Glasgow, D04 89GR</li>
            <li>+1 (800) 123 9876</li>
            <li><a href="#">info@demolink.org</a></li>
            <li><a href="#">www.demolink.org</a></li>
          </ul>
        </address>
      </div>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright"><span class="brand">Stable</span> &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a>
          <div class="sub-copy">Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a></div>
        </div>
      </div>
    </div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>