<%-- 
    Document   : Filestransaction
    Created on : Sep 20, 2015, 2:37:41 PM
    Author     : Jessica Subashini
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                <li><a href="Blockuser.jsp">User Details</a></li>
               <li   class="current"><a href="Filestransaction.jsp">User Files transaction</a></li>
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
        <img src="images/transaction.jpg" alt="" class="img_inner fleft">
        <div class="extra_wrapper">
          
        
        <div align="center" >
          <h2 style="color: red;"> Transaction Details </h2>
 
         <%
    //String userid1,path1,FileName1;    
    int i=1;
        try
        {          
            //String name=(String)session.getAttribute("uname");
            
            String uid=(String)session.getAttribute("uid");
              //MODIFICATION 2 )...    		
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralize", "root", "root");
 //MODIFICATION 2 (END)...          
  	//PreparedStatement pr=con.prepareStatement("select * from Reg");
            String sa="select * from requestst where request='Sent' and response='Done'";
            PreparedStatement pr=con.prepareStatement(sa);
            ResultSet rs=pr.executeQuery();
            %>
            <div align="center" style="border-color: #0033ff;">
                <table bgcolor="lightpink" border="2" style="padding: 5px;" >
                    <tr style="color: blue;">
                     <th>S.No</th>
                     <th>File Name</th>
                     <th>User ID</th>
                     
                     <th>Request</th>
                     
                     <th>Date</th>
                     <th>Response</th>
                     <th>Date</th>
                         
                </tr>
          
                <%
                while(rs.next())
                {
                %>
                <tr>
                    <%
                    String Fname1=rs.getString(3);
                    String user1=rs.getString(1);
                    String d1=rs.getString(5);
                    String d2=rs.getString(6);
                    String d3=rs.getString(7);
                    String d4=rs.getString(8);
                    //String status=rs.getString(7);
                    //String date=rs.getString(8);
                    //request.setAttribute("FName","Fname1");
                 
                    
                    //int d=now;
                    request.setAttribute("TDate","Date");
                    %>
                        <td><%=(i++)%></td> 
                        <td><%=Fname1%></td>
                        <td><%=user1%></td>  
                        <td><%=d1%></td>
                        <td><%=d2%></td>
                        <td><%=d3%></td>
                        <td><%=d4%></td>
                  <!--      <td><%//=status%></td>  
                        <td><%//=date%></td>  -->
                
                </tr>    
                     <%
                        }    
                     %>           
           </table>
           
           
            </div>
           <%            
            //
                       }
        catch(Exception e)
        {
            System.out.println("Exception"+e);
        }
            
     %> 
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
