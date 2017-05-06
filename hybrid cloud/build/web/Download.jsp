<%-- 
    Document   : Download
    Created on : Sep 20, 2015, 2:35:53 PM
    Author     : Jessica Subashini
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
               <li ><a href="Viewprofile.jsp">Profile</a></li>
               <li><a href="Fileview.jsp">View Files</a></li>
               <li><a href="Adminresponse.jsp">Request Status</a></li>
               <li class="current"><a href="Download.jsp">File Download</a></li>
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
        <h3>File Download</h3>
        <img src="images/down4.jpg" alt="" class="img_inner fleft">
        <div class="extra_wrapper">
          
        
        <div>
              <form action="downloadfile" method="post">
<%
    //String userid1,path1,FileName1;    
    int i=1;
        try
        {          
                       String uid=(String)session.getAttribute("uid1");
  
//MODIFICATION 1 )...    		
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralize", "root", "root");
 //MODIFICATION 1 (END)...  
		//PreparedStatement pr=con.prepareStatement("select * from Reg");
            String sa="select * from requestst where userid='"+uid+"' and Response='Done'";
            PreparedStatement pr=con1.prepareStatement(sa);
            ResultSet rs=pr.executeQuery();
            
            ArrayList Fname=new ArrayList();
          %>
            <br>
                <br>    <br>    
                             <div>
        <% String a=(String) session.getAttribute("uname1");
    %>
        <h4 align="right" style="margin-top:-20px;margin-right: 36px;"> Name : <font color="red"><%=a%></font></h4>
   </div>
            <div align="center">
                <table border="2" bgcolor="pink" style="margin-top: -150px;">
                <tr>
                     <td>S.No</td>
                     <td>File Name</td>
                     <td>File Key</td>
                </tr>
          
                <%
                while(rs.next())
                {
                %>
                <tr>
                    <%
                    String Fname1=rs.getString(3);
                    String key1=rs.getString(4);
                    //request.setAttribute("FName","Fname1");
                    Fname.add(Fname1);
                    Fname.indexOf(i);
                    Date now=new Date();
                    //int d=now;
                    request.setAttribute("TDate","Date");
                    %>
                        <td><%=(i++)%></td> 
                        <td><%=Fname1%></td>
                        <td><%=key1%></td>
                       <!-- <td><font color="white"><input type="radio" name="s" value=</%=Fname1%>>Select for Download<br></font></td>  -->                                    
                
                </tr>    
                     <%
                        }    
                     %>           
            </table><br></br>
           <table bgcolor="lightblue" border="1">
               <tr><td>
           File Name  : <input type="text" name="File"></input>
           <br></br></td></tr>
               <tr><td>
           Public Key  : <input type="password" name="POwner"></input>
           <br></br></td></tr>
               <tr><td>
           Private Key : <input type="password" name="PUser" ></input>
           <br></br></td></tr>
               <tr align="center"><td>
           <input type="submit" value="Download"/>
                   </td></tr>
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
    </form>

     
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
