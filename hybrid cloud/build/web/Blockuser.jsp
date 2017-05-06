<%-- 
    Document   : Blockuser
    Created on : Sep 20, 2015, 2:35:32 PM
    Author     : Jessica Subashini
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
               
               <li class="current"><a href="Blockuser.jsp">User Details</a></li>
               <li><a href="Filestransaction.jsp">User Files transaction</a></li>
               <li><a href="Verifiedfiles.jsp">Server Details</a></li>
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
        <h3>About Us</h3>
        <img src="images/page2_img.jpg" alt="" class="img_inner fleft">
        
          
        
        
        <div align="center" >
        <h1>UserList</h1>
    
   
    <%
   try
		{
	  //MODIFICATION 2 )...    		
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralize", "root", "root");
 //MODIFICATION 2 (END)...          
  	//PreparedStatement pr=con.prepareStatement("select * from Reg");
                String sa="select * from register";
                 PreparedStatement pr=con.prepareStatement(sa);
                ResultSet rs=pr.executeQuery();
		
            
            %>
		<div align="center"  >
                <table width="700" style="background-color:thistle; color:#000;"  height="500" border="1">
                    <tr style="background-color: bisque;font-size: medium;color: red">
                 <th>User ID</th>
		<th>User Name</th>
		<th>User City</th>
		<th>User Email</th>
                <th>Date</th>
                <th>Time</th>
                </tr>>
		<% 
		while(rs.next())
		{%>
			
			<tr><td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(6)%></td>
                        </tr>
			
			
	<%	}
	con.close();
	pr.close();
	rs.close();
		
		}
		
	
		catch(Exception e)
		{
			System.out.println(e);
		}
		
    	
    
    
    %>
                </table></div>

      </div>
    </div>
  </div>
  
<!--==============================
              footer
=================================-->

<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>
