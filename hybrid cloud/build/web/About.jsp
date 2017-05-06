<%-- 
    Document   : About.jsp
    Created on : Sep 25, 2015, 5:13:10 PM
    Author     : Jessica Subashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
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
          <div class="fa fa-cloud fa-5x" >&nbsp;<font size="6" color="#ffffff">A Hybrid Cloud Approach for Secure
Authorized Deduplication</font></div>
        <h1>
         
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
            
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
  <section class="page1_header" >
    <div class="container" >
      <div class="row" >
        <div class="grid_4" >
          <a href="index.jsp" class="banner "><div class="maxheight">
            <div class="fa fa-home"></div>Home</div>
          </a>
          <a href="Login.jsp" class="banner "><div class="maxheight">
            <div class="fa fa-key"></div>Login</div>
          </a>
          <a href="Newuser.jsp" class="banner "><div class="maxheight1">
            <div class="fa fa-keyboard-o"></div>User Registration</div>
          </a>
          <a href="About.jsp" class="banner "><div class="maxheight1">
            <div class="fa fa-book"></div>About Project</div>
          </a>
        </div>
        <div class="grid_7">
           <font size="2.8" ><p>Abstract—Data deduplication is one of important data compression techniques for eliminating duplicate copies of repeating data, and
has been widely used in cloud storage to reduce the amount of storage space and save bandwidth. To protect the confidentiality of sensitive
data while supporting deduplication, the convergent encryption technique has been proposed to encrypt the data before outsourcing.
To better protect data security, this paper makes the first attempt to formally address the problem of authorized data
deduplication. Different from traditional deduplication systems, the differential privileges of users are further considered in duplicate
check besides the data itself. We also present several new deduplication constructions supporting authorized duplicate check in a
hybrid cloud architecture. Security analysis demonstrates that our scheme is secure in terms of the definitions specified in the proposed
security model. As a proof of concept, we implement a prototype of our proposed authorized duplicate check scheme and conduct
testbed experiments using our prototype. We show that our proposed authorized duplicate check scheme incurs minimal overhead
compared to normal operations.</p></font>

        </div>
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

<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>
