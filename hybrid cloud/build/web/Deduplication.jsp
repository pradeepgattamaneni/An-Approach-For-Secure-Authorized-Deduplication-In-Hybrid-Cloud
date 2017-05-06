<%-- 
    Document   : Deduplication
    Created on : Sep 20, 2015, 12:37:22 PM
    Author     : Jessica Subashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
<title>About</title>
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
<body>
<!--==============================
              header
=================================-->
<header>
  <div class="container">
    <div class="row">
      <div class="grid_12 rel">
          <div class="fa fa-cloud fa-5x" >&nbsp;<font size="6" color="#ffffff">A Hybrid Cloud Approach for Secure
Authorized Deduplication</font></div>
        
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
               <li class="current"><a href="Deduplication.jsp">Deduplication</a></li>
               <li><a href="encryption.jsp">Encryption</a></li>
               <li><a href="Upload.jsp">Upload Details</a></li>
               <li><a href="Userrequest.jsp">User Request</a></li>
               <li><a href="Downloadhistory.jsp">Download History</a></li>
               
               <li></li>
               
                <li class="current"><a href="index.jsp">Log Out</a></li>
            
               
          		
           
             </ul>
            </nav>
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
</header>
<!--=====================
          Content
======================-->
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - July 28, 2014!</div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h3>Deduplication</h3>
        <img src="images/deduplicationcrop.png" alt="" class="img_inner fleft">
        <div class="extra_wrapper">
          
        
        <div>
             <form action="gotocheck" enctype="multipart/form-data" method="post">
             <table border="0"  bgcolor="#999999" style="">
            <tr>   <input class="login-inputex"  type="file" name="file" style="width: 200px;color:red;font-size:20px;" value="Choose File"></input>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input  class="login-submitex" type="submit" value="Submit to Check File" style="width: 200px; color:green;font-size:20px;"></input></tr>
        </table>
            <% 
String b=request.getAttribute("id1")!=null?request.getAttribute("id1").toString():"";
%><p style="font:larger;font-size:x-large ; color: crimson">
<%=b%></p>
     
        </div> 
        </div>
      </div>
    </div>
  </div>
  
<!--==============================
              footer
=================================-->

<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>
