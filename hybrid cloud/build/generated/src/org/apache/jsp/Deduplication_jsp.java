package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Deduplication_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("     <head>\n");
      out.write("<title>About</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta name=\"format-detection\" content=\"telephone=no\" />\n");
      out.write("<link rel=\"icon\" href=\"images/favicon.ico\">\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/favicon.ico\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("<script src=\"js/jquery.js\"></script>\n");
      out.write("<script src=\"js/jquery-migrate-1.1.1.js\"></script>\n");
      out.write("<script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("<script src=\"js/script.js\"></script> \n");
      out.write("<script src=\"js/superfish.js\"></script>\n");
      out.write("<script src=\"js/jquery.equalheights.js\"></script>\n");
      out.write("<script src=\"js/jquery.mobilemenu.js\"></script>\n");
      out.write("<script src=\"js/tmStickUp.js\"></script>\n");
      out.write("<script src=\"js/jquery.ui.totop.js\"></script>\n");
      out.write("<script>\n");
      out.write(" $(window).load(function(){\n");
      out.write("  $().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("  $('#stuck_container').tmStickUp({});  \n");
      out.write(" }); \n");
      out.write("</script>\n");
      out.write("<!--[if lt IE 8]>\n");
      out.write(" <div style=' clear: both; text-align:center; position: relative;'>\n");
      out.write("   <a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\n");
      out.write("     <img src=\"http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\n");
      out.write("   </a>\n");
      out.write("</div>\n");
      out.write("<![endif]-->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script src=\"js/html5shiv.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" media=\"screen\" href=\"css/ie.css\">\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!--==============================\n");
      out.write("              header\n");
      out.write("=================================-->\n");
      out.write("<header>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_12 rel\">\n");
      out.write("          <div class=\"fa fa-cloud fa-5x\" >&nbsp;<font size=\"6\" color=\"#ffffff\">A Hybrid Cloud Approach for Secure\n");
      out.write("Authorized Deduplication</font></div>\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <section id=\"stuck_container\">\n");
      out.write("  <!--==============================\n");
      out.write("              Stuck menu\n");
      out.write("  =================================-->\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"grid_12 \">\n");
      out.write("          <div class=\"navigation \">\n");
      out.write("            <nav>\n");
      out.write("              <ul class=\"sf-menu\">\n");
      out.write("               <li class=\"current\"><a href=\"Deduplication.jsp\">Deduplication</a></li>\n");
      out.write("               <li><a href=\"encryption.jsp\">Encryption</a></li>\n");
      out.write("               <li><a href=\"Upload.jsp\">Upload Details</a></li>\n");
      out.write("               <li><a href=\"Userrequest.jsp\">User Request</a></li>\n");
      out.write("               <li><a href=\"Downloadhistory.jsp\">Download History</a></li>\n");
      out.write("               \n");
      out.write("               <li></li>\n");
      out.write("               \n");
      out.write("                <li class=\"current\"><a href=\"index.jsp\">Log Out</a></li>\n");
      out.write("            \n");
      out.write("               \n");
      out.write("          \t\t\n");
      out.write("           \n");
      out.write("             </ul>\n");
      out.write("            </nav>\n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("          </div>       \n");
      out.write("         <div class=\"clear\"></div>  \n");
      out.write("        </div>\n");
      out.write("     </div> \n");
      out.write("    </div> \n");
      out.write("  </section>\n");
      out.write("</header>\n");
      out.write("<!--=====================\n");
      out.write("          Content\n");
      out.write("======================-->\n");
      out.write("<section id=\"content\"><div class=\"ic\">More Website Templates @ TemplateMonster.com - July 28, 2014!</div>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"grid_12\">\n");
      out.write("        <h3>Deduplication</h3>\n");
      out.write("        <img src=\"images/deduplicationcrop.png\" alt=\"\" class=\"img_inner fleft\">\n");
      out.write("        <div class=\"extra_wrapper\">\n");
      out.write("          \n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("             <form action=\"gotocheck\" enctype=\"multipart/form-data\" method=\"post\">\n");
      out.write("             <table border=\"0\"  bgcolor=\"#999999\" style=\"\">\n");
      out.write("            <tr>   <input class=\"login-inputex\"  type=\"file\" name=\"file\" style=\"width: 200px;color:red;font-size:20px;\" value=\"Choose File\"></input>\n");
      out.write("                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input  class=\"login-submitex\" type=\"submit\" value=\"Submit to Check File\" style=\"width: 200px; color:green;font-size:20px;\"></input></tr>\n");
      out.write("        </table>\n");
      out.write("            ");
 
String b=request.getAttribute("id1")!=null?request.getAttribute("id1").toString():"";

      out.write("<p style=\"font:larger;font-size:x-large ; color: crimson\">\n");
      out.print(b);
      out.write("</p>\n");
      out.write("     \n");
      out.write("        </div> \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("<!--==============================\n");
      out.write("              footer\n");
      out.write("=================================-->\n");
      out.write("\n");
      out.write("<a href=\"#\" id=\"toTop\" class=\"fa fa-chevron-up\"></a>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
