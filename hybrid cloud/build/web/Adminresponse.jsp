<%-- 
    Document   : Adminresponse
    Created on : Sep 20, 2015, 2:35:11 PM
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
               <li><a href="Viewprofile.jsp">Profile</a></li>
               <li><a href="Fileview.jsp">View Files</a></li>
               <li class="current"><a href="Adminresponse.jsp">Request Status</a></li>
               <li><a href="Download.jsp">File Download</a></li>
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
<section id="content"><div class="ic"></div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h3>Request Status</h3>
        <img src="images/request1.png" alt="" class="img_inner fleft">
        <div class="extra_wrapper">
          
        
        
            <div>    
         <%
   
    	try
        {
            int i=1;
            String uid=(String)session.getAttribute("uid1");
            
//MODIFICATION 1 )...    		
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralize", "root", "root");
 //MODIFICATION 1 (END)...                   

            
            
            
            
            //PreparedStatement pr=con.prepareStatement("select * from Reg");
            String sa="select * from requestst where userid='"+uid+"'"; // and Upload='u'";
            PreparedStatement pr=con1.prepareStatement(sa);
            ResultSet rs=pr.executeQuery();
		%>
        
                <table  bgcolor="megenta" border="2" style="margin-left: 10px;">
            <tr >
                <th>S.No</th><th>File Name</th><th>User Name</th><th>Key</th><th>Request</th><th>Date of Request</th><th>Response</th><th>Date of Response</th><th>Download status</th>
            </tr>
             <%
            while(rs.next())
            {
            String FName=rs.getString(3);
            String UName=(String)session.getAttribute("uname1");
            String key1=rs.getString(4);
            String request1=rs.getString(5);
            String drequest=rs.getString(6);
            String response1=rs.getString(7);
            String dresponse=rs.getString(8);
            String ds=rs.getString(9);
                        %>
            <tr>
                <%--    <td><%=(i++)%></td><td><%=%>now</td><td><%=UName%></td><%=%>   --%>
                <td><%=(i++)%></td><td><%=FName%></td><td><%=UName%></td><td><%=key1%></td><td><%=request1%></td><td><%=drequest%></td><td><%=response1%></td><td><%=dresponse%></td><td><%=ds%></td>
            </tr>
            <%
               }
             %>
             
            </table>	
	<%	}
        catch(Exception e)
		{
			System.out.println(e);
		}
		
    	       
    %>
 
              </div>
    </div>

     
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
