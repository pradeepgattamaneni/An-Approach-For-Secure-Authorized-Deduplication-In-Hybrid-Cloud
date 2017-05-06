<%-- 
    Document   : Fileview
    Created on : Sep 20, 2015, 2:38:03 PM
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
               <li><a href="Viewprofile.jsp">Profile</a></li>
               <li class="current"><a href="Fileview.jsp">View Files</a></li>
               <li><a href="Adminresponse.jsp">Request Status</a></li>
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
        <h3>View Files</h3>
        <img src="images/Files.png" alt="" class="img_inner fleft">
        <div class="extra_wrapper">
          
        
        
              
        <br>
            <div style="text-align: center; margin-top: 0px;color:red;"><h2> FILE LIST</h2></div></br>
  <!--Table creation mahesh STARTING PROCESS   -->      
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
            String sa="select * from files";
            PreparedStatement pr=con.prepareStatement(sa);
            ResultSet rs=pr.executeQuery();
            
            ArrayList Fname=new ArrayList();
            
            
                
            %>
            <form action="request" method="post">
               
                <div align="center">
            <table bgcolor="lightblue" border="2">
                <tr style="color: blue;background: bottom;">
                    <th>S.No</th><td></td> 
                     <th>File Name</th><td></td>
                     <th>Owner</th><td></td>
                     <th>Send File Request</th><td></td>
                </tr>
                <%
                while(rs.next())
                {
                %>
                <tr>
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
                        <td><%=(i++)%></td> <td></td>
                        <td><%=Fname1%></td><td></td>
                        <td> Admin </td><td></td>
                        <td>
                            <!--<font color="white"><input type="radio" name="s1" value=<%=Fname1%>>Select for Decryption<br></font>-->
                            <font color="black"><input type="radio" name="s1" value="<%=Fname1%>"/> Select for Download </font> 
                        </td>    <td></td>                                  
                
                </tr>    
                     <%
                        }    
                     %>           
           </table>
              <br>
                  <input type="submit" value="SEND" style="color: green;font-size: medium;"/>
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
            </form>
 
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
