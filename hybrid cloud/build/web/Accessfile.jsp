<%-- 
    Document   : Accessfile
    Created on : Sep 20, 2015, 2:34:46 PM
    Author     : Jessica Subashini
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
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
               <li class="current"><a href="Accessfile.jsp">File Access View</a></li>
               <li><a href="Blockuser.jsp">User List</a></li>
               <li><a href="Filestransaction.jsp">Filestransaction</a></li>
               <li><a href="Verifiedfiles.jsp">Verified Files</a></li>
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
        <div class="extra_wrapper">
          
        
        <div>
    <% String a=(String) session.getAttribute("uname");
    %>
     
      
    
    <h4 align="left" style="margin-top:-20px;margin-right: 36px;"> Name : <font color="red"><%=a%></font></h4>
   
    </div><!-- header --><!-- header2 --><br></br>
    <!--<div align="right" style="margin-right: 100px;"> <li><a href="Verifiedfiles.jsp">Verified Files</a></li></div>-->
<div>
    <%
    //String userid1,path1,FileName1;    
    int i=1;
        try
        {          
                    String uid=(String)session.getAttribute("uid");
//MODIFICATION 1 )...    		
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralize", "root", "root");
 //MODIFICATION 1 (END)...               
		//PreparedStatement pr=con.prepareStatement("select * from Reg");
            String sa="select * from files where auditor='not verified'";
            PreparedStatement pr=con.prepareStatement(sa);
            ResultSet rs=pr.executeQuery();
            ArrayList Fname=new ArrayList();
                  
            %>
            
            <div align="center" style="border-color: blue;"> 
               <table  class="table1" border="2" >
                <tr style="height: 30px; background-color: silver; color: red;">
                    <th>S.No</th>
                     <th>File Name</th>
                     <th>File Owner</th>
                     <th>Allow to User Access</th>
                     <th>Select to View</th>
                </tr>
          
                <%
                while(rs.next())
                {
                %>
               
                <tr style="height: 30px; background-color: wheat;">
                    <%
                    String Fname1=rs.getString(2);
                    //request.setAttribute("FName","Fname1");
                    Fname.add(Fname1);
                    Fname.indexOf(i);
                    Date now=new Date();
                    //int d=now;
                    request.setAttribute("TDate","Date");
                    //String uid=(String)session.getAttribute("");
                    %>
                    <form action="view.jsp" method="post">
                        <td><%=(i++)%></td> 
                        <td><%=Fname1%></td>
                        <td> Admin </td>
                        <td>
                            <!--<font color="white"><input type="radio" name="s1" value=<%=Fname1%>>Select for Decryption<br></font>-->
                        <font color="black"><input type="radio" name="s1" value="<%=Fname1%>"/>Select to access</font> 
                        </td><td>
                            <input style="background-color: green" type="submit" value="View To Verify"></input>
                        </td></form>                                  
                </tr>  
               
                     <%
                        }    
                     %>           
           </table>
            <br>
            </br>
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
  
<!--==============================
              footer
=================================-->

<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>
